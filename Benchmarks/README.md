

# How to build Benchmarks?
```bash
mkdir build
cmake ..
make
cd ..
python3 config.py

## to test how many build
python3 src_tool.py

## to test correctness
python3 correctness_test.py
```