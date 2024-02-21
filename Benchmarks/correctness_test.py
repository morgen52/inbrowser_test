import os

ROOTDIR = "tmp"

failed = []
for subdir in os.listdir(ROOTDIR):
    for file in os.listdir(os.path.join(ROOTDIR, subdir)):
        if file.endswith(".js"):
            re = os.system("node " + os.path.join(ROOTDIR, subdir, file))
            if re != 0:
                failed.append(f"{subdir}/{file}")

print("Failed tests: ", failed)
