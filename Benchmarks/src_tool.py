import os

# DIR = "Stanford"
# for file in os.listdir(DIR):
#     if file.endswith(".c") or file.endswith(".cpp"):
#         print(r"${CMAKE_CURRENT_SOURCE_DIR}/"+file)

origin = []
cnt = 0
for rootd, _, files in os.walk("."):
    for file in files:
        if file.endswith(".c") or file.endswith(".cpp"):
            if "build" in rootd: continue
            # if "Polybench" in rootd: continue
            print(rootd, file, cnt)
            origin.append(f"{rootd[2:].replace('+', '').replace('-', '').lower().split('/')[0]}/{file.replace('+', '').replace('-', '').lower().split('.')[0]}")
            cnt += 1

wasm = []
cnt = 0
for rootd, _, files in os.walk("tmp"):
    for file in files:
        if file.endswith(".js"):
            # print(f"{rootd[4:]}/{file.split('.')[0]}")
            wasmfile = f"{rootd[4:]}/{file.split('.')[0]}"
            if wasmfile not in origin:
                print(wasmfile, "not found")
            else:
                origin.remove(wasmfile)
            cnt += 1
print(f"Total {cnt} wasm files.")

print("Not found:")
print(origin)

## Not found:
# ['Misc/aarch64-init-cpu-features', 
# 'Polybench/polybench', 
# 'Polybench/template-for-new-benchmark', 
# 'MiscCEH/spirit']

