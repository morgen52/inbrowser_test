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
        
        if browser == "chrome":
            driver = webdriver.Chrome()
        elif browser == "firefox":
            driver = webdriver.Firefox()
        elif browser == "safari":
            driver = webdriver.Safari()
        elif browser == "edge":
            driver = webdriver.Edge()

        # driver.get("http://0.0.0.0:7070")
        try:
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

results = {}

exps = {}
with open("exps.json", "r") as f:
    exps = json.load(f)

breakpoint = 0
if os.path.exists(RESULT_FILE):
    with open(RESULT_FILE, "r") as f:
        results = json.load(f)
        breakpoint = len(results)

for idx, item in tqdm(enumerate(exps.items())):
    if idx < breakpoint:
        continue
    mode, url = item
    print(mode, url["url"])
    results[mode] = page_test(mode, url["url"])

    # results["hello/hello"] = page_test("hello/hello", "http://0.0.0.0:7070/hello")
    # http://localhost:7070/hello

    with open(RESULT_FILE, "w") as f:
        json.dump(results, f, indent=4)