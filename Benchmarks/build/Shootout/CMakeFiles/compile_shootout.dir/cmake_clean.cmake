file(REMOVE_RECURSE
  "CMakeFiles/compile_shootout"
  "ackermann.js"
  "ary3.js"
  "fib2.js"
  "hash.js"
  "heapsort.js"
  "hello.js"
  "lists.js"
  "matrix.js"
  "methcall.js"
  "nestedloop.js"
  "objinst.js"
  "random.js"
  "sieve.js"
  "strcat.js"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/compile_shootout.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
