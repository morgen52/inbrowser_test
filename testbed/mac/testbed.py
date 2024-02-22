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
import abnormal_case

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
            with open("error.log", "a") as f:
                f.write(f"{exp} {browser} {url} {e}\n")

    return timeBrowsers

def is_complete(results, mode=""):
    emsg = ""
    for b in BROWSERS:
        if b not in results:
            emsg += f"[{mode}]: {b} is not tested\n"
            continue
        if len(results[b]) != 5:
            emsg += f"[{mode}]: {b} is not complete ({len(results[b])}/5)\n"
            continue
        for t in results[b]:
            if t["label"] == "page loaded": continue
            if float(t["delta"]) < 0.0001 or float(t["time"]) < 0.0001:
                emsg += f"[{mode}]: {b} is not complete (label ({t['label']}) delta ({t['delta']}) or time ({t['time']}) is 0)\n"
    if emsg != "":
        return {"re": False, "msg": emsg}
    return {"re": True, "msg": "complete"}

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
    if mode in abnormal_case.ABNORMAL:
        print(f"{mode} is abnormal case")
        continue
    if (mode not in results) or (not is_complete(results[mode], mode)["re"]):
        results[mode] = page_test(mode, url["url"])
        re = is_complete(results[mode], mode)
        if not re["re"]:
            with open("error.log", "a") as f:
                f.write(f"{mode} ({url['url']}) is still not complete after retry.\n")
                f.write(f"{re['msg']}\n")
    else:
        print(f"{mode} already tested")

    # results["hello/hello"] = page_test("hello/hello", "http://0.0.0.0:7070/hello")
    # http://localhost:7070/hello

    with open(RESULT_FILE, "w") as f:
        json.dump(results, f, indent=4)