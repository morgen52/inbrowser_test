import os

SRC_DIR = "build"
TMP_DIR = "tmp"
TARGET_DIR = "../wasm-server"

os.system(f"rm -rf {TMP_DIR}/*")

# Misc
# Polybench
# SmallPT
# Shootout-C++
# Dhrystone
# Stanford
# Shootout
# Linpack
# Misc-C++
# McGill
# BenchmarkGame
# CoyoteBench
# Adobe-C++

def gen_html(dir, cases):
    with open("template.html", "r") as f:
        html = f.readlines()
        for case_name in cases:
            with open(os.path.join(dir, f"{case_name}.html"), "w") as f:
                for line in html:
                    f.write(line.replace("CASENAME", case_name))

for subdir in os.listdir(SRC_DIR):
    if os.path.isdir(os.path.join(SRC_DIR, subdir)): # Adobe-C++, BenchmarkGame, ...
        if subdir not in ["CMakeFiles", "tmp"]:
            print(subdir)
            case_dir = subdir.replace("-", "").replace("+", "").lower()
            os.system(f"mkdir -p {TMP_DIR}/{case_dir}")
            cases = []
            # for file in os.listdir(os.path.join(SRC_DIR, subdir)):
            for rootd, _, files in os.walk(os.path.join(SRC_DIR, subdir)):
                for file in files:
                    if file.endswith(".wasm"):
                        # os.system(f"cp {os.path.join(rootd, file)} {TMP_DIR}/{case_dir}/{file.replace('-', '').replace('+', '').lower()}")
                        os.system(f"cp {os.path.join(rootd, file)} {TMP_DIR}/{case_dir}/")
                    elif file.endswith(".js"):
                        case_name = file.split(".")[0].replace("-", "").replace("+", "").lower()
                        if case_name not in cases:
                            cases.append(case_name)
                        os.system(f"cp {os.path.join(rootd, file)} {TMP_DIR}/{case_dir}/{case_name}.js")
            gen_html(os.path.join(TMP_DIR, case_dir), cases)


# os.system(f"rm -rf {TARGET_DIR}/misc")
# os.system(f"rm -rf {TARGET_DIR}/polybench")
# os.system(f"rm -rf {TARGET_DIR}/smallpt")
# os.system(f"rm -rf {TARGET_DIR}/shootoutc")
# os.system(f"rm -rf {TARGET_DIR}/dhrystone")
# os.system(f"rm -rf {TARGET_DIR}/stanford")
# os.system(f"rm -rf {TARGET_DIR}/shootout")
# os.system(f"rm -rf {TARGET_DIR}/linpack")
# os.system(f"rm -rf {TARGET_DIR}/miscc")
# os.system(f"rm -rf {TARGET_DIR}/mcgill")
# os.system(f"rm -rf {TARGET_DIR}/benchmarkgame")
# os.system(f"rm -rf {TARGET_DIR}/coyotebench")
# os.system(f"rm -rf {TARGET_DIR}/adobec")
os.system(f"cp -r {TMP_DIR}/* {TARGET_DIR}")
            