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

'''
## dev: android
### mode: exe
browser ['Firefox', 'Chrome', 'Edge']
mean [0.2664101311816021, 0.4300557715964846, 0.30353409722191305]
std [0.08078915202880856, 0.09421303582390592, 0.07303594453009171]
case shootoutc/nestedloop is abnormal in browser Chrome, ratio 0.7378640776699029
case shootoutc/except is abnormal in browser Firefox, ratio 0.6051421404682275
case coyotebench/fftbench is abnormal in browser Chrome, ratio 0.1181455121875467
case coyotebench/fftbench is abnormal in browser Edge, ratio 0.775200635235034

### mode: init
browser ['Firefox', 'Chrome', 'Edge']
mean [0.01879435517383383, 0.970990323274091, 0.010215321552075097]
std [0.05906735001284601, 0.07882352085834896, 0.02429804554144364]
case shootoutc/lists is abnormal in browser Firefox, ratio 0.42154523081512413
case shootoutc/lists is abnormal in browser Chrome, ratio 0.5712674323215751
case polybench/doitgen is abnormal in browser Firefox, ratio 0.4928571428571429
case polybench/doitgen is abnormal in browser Chrome, ratio 0.24357142857142858
case polybench/doitgen is abnormal in browser Edge, ratio 0.26357142857142857

## dev: iphone
### mode: exe
browser ['Chrome', 'Safari', 'Firefox']
mean [0.3502809181347279, 0.31557766279454286, 0.334141419070729]
std [0.05854278014469351, 0.03601826252285353, 0.035827488352902975]
case shootoutc/objinst is abnormal in browser Safari, ratio 0.16666666666666666
case benchmarkgame/fasta is abnormal in browser Chrome, ratio 0.5833333333333334
case benchmarkgame/fasta is abnormal in browser Safari, ratio 0.19444444444444445
case benchmarkgame/fasta is abnormal in browser Firefox, ratio 0.2222222222222222
case polybench/gesummv is abnormal in browser Firefox, ratio 0.18181818181818182
case linpack/linpackpc is abnormal in browser Chrome, ratio 0.7698967304043206
case linpack/linpackpc is abnormal in browser Safari, ratio 0.11653408261567655
case linpack/linpackpc is abnormal in browser Firefox, ratio 0.11356918698000293

### mode: init
browser ['Chrome', 'Safari', 'Firefox']
mean [0.34986528478094714, 0.30826881613140206, 0.3418658990876513]
std [0.09639130800671275, 0.07405607017626184, 0.0683217406545399]
case benchmarkgame/nbody is abnormal in browser Safari, ratio 0.7319587628865979
case benchmarkgame/partialsums is abnormal in browser Firefox, ratio 0.6386554621848739
case mcgill/misr is abnormal in browser Chrome, ratio 0.643312101910828
case polybench/gesummv is abnormal in browser Safari, ratio 0.6196319018404908
case coyotebench/lpbench is abnormal in browser Chrome, ratio 0.7440476190476191
case misc/pi is abnormal in browser Chrome, ratio 0.7991071428571429
case misc/pi is abnormal in browser Firefox, ratio 0.10267857142857142
case misc/flops is abnormal in browser Chrome, ratio 0.7724867724867724
case misc/flops is abnormal in browser Firefox, ratio 0.1111111111111111

## dev: macintel
### mode: exe
browser ['Chrome', 'Edge', 'Firefox', 'Safari']
mean [0.20199677143559852, 0.3622051055822542, 0.15869350500290846, 0.27710461797923885]
std [0.04524217909535858, 0.052743288061265096, 0.04315653360445969, 0.04811045650182415]

### mode: init
browser ['Chrome', 'Edge', 'Firefox', 'Safari']
mean [0.4724706779783827, 0.16622127451057558, 0.2551719153563142, 0.10613613215472746]
std [0.09069920073850857, 0.09208603124199806, 0.025967133713725155, 0.028365041220227722]
'''