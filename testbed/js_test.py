import os
import json
from testing import different_case

ROOT_DIR = "../wasm-server/js_results"

def correctness_check():
    pass

datas = {}
for dir in os.listdir(ROOT_DIR):
    dir_path = os.path.join(ROOT_DIR, dir)
    if os.path.isdir(dir_path):
        dev = dir.split(" ")[-1].lower()
        with open(os.path.join(dir_path, "data.json"), "r") as f:
            datas[dev] = json.load(f)
        for case in datas[dev]:
            for browser in datas[dev][case]:
                if "status" not in datas[dev][case][browser] or (datas[dev][case][browser]["status"] == "success"):
                    datas[dev][case][browser] = datas[dev][case][browser]["times"]
                else:
                    datas[dev][case][browser] = []

# merge aarch64 and armv81 to android
datas["android"] = {}

for dev in ["aarch64", "armv81"]:
    for case in datas[dev].keys():
        if case not in datas["android"]:
            datas["android"][case] = {}
        for browser in datas[dev][case].keys():
            datas["android"][case][browser] = datas[dev][case][browser]

devices = [
    "android",
    "iphone",
    "macintel",
    "x86_64",
]

for dev in devices:
    print(f"## dev: {dev}")
    for m in ["exe", "init"]:
        print(f"### mode: {m}")
        different_case(datas[dev], mode=m)
        print()

