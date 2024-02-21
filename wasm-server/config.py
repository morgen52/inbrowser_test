import os
import sys
import json

SRC_DIR = "."
TAR_FILE = "config.js"
EXP_FILE = "exps.json"

# redirect output to file
sys.stdout = open(TAR_FILE, "w")

def gen_server_js(subdir, cases):
    with open("template.js", "r") as f:
        js = [line.strip('\n') for line in f.readlines()]
        for case_name in cases:
            for line in js:
                print(line.replace("CASE1", subdir).replace("CASE2", case_name))
            print()

exps = {}
for subdir in os.listdir(SRC_DIR):
    if os.path.isdir(os.path.join(SRC_DIR, subdir)):
        if subdir not in ["hello", "node_modules"]:
            cases = []
            for file in os.listdir(os.path.join(SRC_DIR, subdir)):
                if file.endswith(".html"):
                    case = file.split(".")[0]
                    cases.append(case)
            gen_server_js(subdir, cases)

            for case in cases:
                exps[f"{subdir}/{case}"] = {
                    "url": f"http://0.0.0.0:7070/{subdir}/{case}",
                }

with open(EXP_FILE, "w") as f:
    json.dump(exps, f, indent=4)

# print(len(exps))
