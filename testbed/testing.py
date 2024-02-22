import os
import json
import numpy as np

oss = ["linux", "windows", "mac"]

results_book = {}

for os in oss:
    results = {}
    with open(f"{os}/results.json", "r") as f:
        results = json.load(f)
    results_book[os] = results

def avg_exe(log):
    avg_time = []
    for entry in log:
        if entry["label"] == "wasm benchmark":
            avg_time.append(float(entry["delta"]))
    return sum(avg_time) / len(avg_time)

def avg_init(log):
    for entry in log:
        if entry["label"] == "wasm initialized":
            return float(entry["delta"])

def different_case(result, mode="exe"):
    ratio = {}
    browindex = []
    for case in result:
        browser_vector = []
        for browser in result[case]:
            browindex.append(browser)
            if mode == "exe":
                browser_vector.append(avg_exe(result[case][browser]))
            elif mode == "init":
                browser_vector.append(avg_init(result[case][browser]))
        
        # normalize the vector
        if browser_vector:
            if len(browser_vector) < 3:
                # print(f"case {case} has {len(browser_vector)} browsers")
                continue
            ratio[case] = [x / sum(browser_vector) for x in browser_vector]

    # find abnormal case according to the ratio
    mean_ratio = []
    std_ratio = []
    for i in range(len(list(ratio.values())[0])):
        mean_i = sum([x[i] for x in ratio.values()]) / len(ratio)
        mean_ratio.append(mean_i)

        std_i = np.std([x[i] for x in ratio.values()])
        std_ratio.append(std_i)
    print(mean_ratio)
    # print(std_ratio)

    ## find the abnormal case
    for case in ratio:
        for i in range(len(ratio[case])):
            if abs(ratio[case][i] - mean_ratio[i]) > 3 * std_ratio[i]:
                print(f"case {case} is abnormal in browser {browindex[i]}, ratio {ratio[case][i]}")

for os in oss:
    for mode in ["exe"]:
        print(f"## {os} abnormal case, mode {mode}")
        different_case(results_book[os], mode)
        print()

'''
## linux abnormal case, mode exe
[0.29886050746503035, 0.34943078281858764, 0.35170870971638213]
case shootoutc/hello is abnormal in browser 0, ratio 0.0
case shootoutc/hello is abnormal in browser 1, ratio 0.47826086956521746
case shootoutc/hello is abnormal in browser 2, ratio 0.5217391304347826

## windows abnormal case, mode exe
[0.3659418002058665, 0.2769199965489769, 0.3571382032451569]
case polybench/2mm is abnormal in browser 0, ratio 0.4897025171624714
case shootout/hello is abnormal in browser 2, ratio 0.4363636363636364

## mac abnormal case, mode exe
[0.2859813088618374, 0.28786193075226035, 0.24615755710846116, 0.17999920327744098]
'''