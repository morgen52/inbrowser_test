from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
import time
import json
from tqdm import tqdm
import os

BROWSERS = ["chrome", "edge", "firefox", "safari"]
RESULT_FILE = "results.json"

def page_test(exp, url):
    timeBrowsers = {}
    for browser in BROWSERS:
        print(f"Testing with {browser.capitalize()} browser")

        # driver.get("http://0.0.0.0:7070")
        try:
            if browser == "chrome":
                driver = webdriver.Chrome()
            elif browser == "firefox":
                driver = webdriver.Firefox()
            elif browser == "safari":
                driver = webdriver.Safari()
            elif browser == "edge":
                driver = webdriver.Edge()

            driver.get(url)

            # wait until the wasm scripts are finished.
            wait = WebDriverWait(driver, timeout=100, poll_frequency=10)
            wait.until(lambda driver: len(driver.execute_script("return getTimes();")) == 5)

            timeList = driver.execute_script("return getTimes();")
            print(timeList)
            timeBrowsers[browser] = timeList

            driver.quit()
        except Exception as e:
            # 追加写入错误信息
            with open("error.log", "a") as f:
                f.write(f"{exp} {browser} {url} {e}\n")

    return timeBrowsers

def is_complete(results, mode=""):
    for b in BROWSERS:
        if b not in results:
            print(f"{b} is not tested")
            return False
        if len(results[b]) != 5:
            print(f"tested {b} is not complete ({len(results[b])}/5)")
            return False
        for t in results[b]:
            if float(t["delta"]) < 0.0001 or float(t["time"]) < 0.0001:
                emsg = f"[{mode}]: tested {b} is not complete (label ({t['label']}) delta ({t['delta']}) or time ({t['time']}) is 0)"
                with open("error.log", "a") as f:
                    f.write(emsg + "\n")
    return True

results = {}

exps = {}
with open("../exps.json", "r") as f:
    exps = json.load(f)

# clean error.log
with open("error.log", "w") as f:
    f.write("")

breakpoint = 0
if os.path.exists(RESULT_FILE):
    with open(RESULT_FILE, "r") as f:
        results = json.load(f)
        # breakpoint = len(results)

for idx, item in tqdm(enumerate(exps.items())):
    if idx < breakpoint:
        continue
    mode, url = item
    print(mode, url["url"])
    if (mode not in results) or (not is_complete(results[mode], mode)):
        results[mode] = page_test(mode, url["url"])
        if not is_complete(results[mode], mode):
            with open("error.log", "a") as f:
                f.write(f"{mode} is still not complete after retry.\n")
    else:
        print(f"{mode} already tested")

    # results["hello/hello"] = page_test("hello/hello", "http://0.0.0.0:7070/hello")
    # http://localhost:7070/hello

    with open(RESULT_FILE, "w") as f:
        json.dump(results, f, indent=4)