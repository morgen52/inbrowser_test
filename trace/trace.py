import os
import time
import datetime

ROOT_DIR = os.getcwd()
EXP_DIR = os.path.join(ROOT_DIR, "abcases")
LOGS = os.path.join(ROOT_DIR, "logs.log")
logs = open(LOGS, "w+")

ENGINES = {
    "v8": "/home/data1/webassembly/inbrowser_testing/myv8/v8/out/x64.release/d8",
    "spidermonkey": "/home/data1/webassembly/inbrowser_testing/firefox/spidermonkey/obj-x86_64-pc-linux-gnu/dist/bin/js"
}

abcases = {
    "Benchmarks/BenchmarkGame/Large": {
        "fasta": f"emcc fasta.c -O2 -o {EXP_DIR}/fasta.js -lm -sENVIRONMENT=shell",
    }, 
    "Benchmarks/Stanford": {
        "oscar": f"emcc Oscar.c -O2 -o {EXP_DIR}/oscar.js -sALLOW_MEMORY_GROWTH=1 -lm -sENVIRONMENT=shell",
    },
    "Benchmarks/Misc-C++": {
        "stepanov_v1p2": f"em++ stepanov_v1p2.cpp -o {EXP_DIR}/stepanov_v1p2.js -lm -sALLOW_MEMORY_GROWTH=1 -O2 -sENVIRONMENT=shell"
    }
}

def compile(pwd, cmd):
    os.chdir(pwd)
    os.system(cmd)
    os.chdir(ROOT_DIR)

def compile_abcases(abcases):
    for dir in abcases.keys():
        for case, cmd in abcases[dir].items():
            compile(os.path.join("..", dir), cmd)

def run_with(engine, case):
    start_time = datetime.datetime.now()
    os.system(f"{ENGINES[engine]} {case}.js")
    duration = datetime.datetime.now() - start_time
    print(f"Run {case} with {engine} in {duration} seconds.", file=logs)

def run_abcases(abcases):
    os.chdir(EXP_DIR)
    for dir in abcases.keys():
        for case, cmd in abcases[dir].items():
            for engine in ENGINES.keys():
                run_with(engine, case)

    os.chdir(ROOT_DIR)

if __name__ == "__main__":
    # 1. Compile abcases
    compile_abcases(abcases)
    # 2. Run with v8
    # 3. Run with spidermonkey
    run_abcases(abcases)
