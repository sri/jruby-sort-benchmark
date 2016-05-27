## JRuby builtin Qsort vs Arrays.sort (Tim Sort)
#### Qsort

```
java.runtime.version: 1.8.0_72-internal-b05
java.vm.version: 25.72-b05
Iterations: 5000000
JRUBY_VERSION: 9.1.3.0-SNAPSHOT
RUBY_VERSION: 2.3.0
Rehearsal -------------------------------------------------
sorted_ints     7.130000   0.040000   7.170000 (  4.183176)
random_ints     2.240000   0.000000   2.240000 (  1.998144)
random_floats   4.740000   0.000000   4.740000 (  4.486277)
random_objs    12.610000   0.020000  12.630000 ( 12.347533)
small_arrays    0.240000   0.000000   0.240000 (  0.166515)
--------------------------------------- total: 27.020000sec

                    user     system      total        real
sorted_ints     0.050000   0.000000   0.050000 (  0.025546)
random_ints     7.020000   0.000000   7.020000 (  4.744548)
random_floats   5.390000   0.010000   5.400000 (  5.394417)
random_objs    12.740000   0.010000  12.750000 ( 12.757566)
small_arrays    0.190000   0.000000   0.190000 (  0.148815)

```
#### Arrays.sort

```
java.runtime.version: 1.8.0_72-internal-b05
java.vm.version: 25.72-b05
Iterations: 5000000
JRUBY_VERSION: 9.1.3.0-SNAPSHOT
RUBY_VERSION: 2.3.0
Rehearsal -------------------------------------------------
sorted_ints     0.040000   0.000000   0.040000 (  0.028062)
random_ints     3.110000   0.000000   3.110000 (  2.425231)
random_floats   8.910000   0.030000   8.940000 (  6.526163)
random_objs     9.850000   0.010000   9.860000 (  9.826957)
small_arrays    0.300000   0.020000   0.320000 (  0.207485)
--------------------------------------- total: 22.270000sec

                    user     system      total        real
sorted_ints     0.030000   0.000000   0.030000 (  0.022473)
random_ints     2.920000   0.000000   2.920000 (  2.931626)
random_floats   4.890000   0.010000   4.900000 (  4.923518)
random_objs    15.410000   0.000000  15.410000 ( 13.074301)
small_arrays    0.170000   0.000000   0.170000 (  0.166262)

```
