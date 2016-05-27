## JRuby builtin Qsort vs Arrays.sort (Tim Sort)
#### Qsort

```
Iterations: 5000000
JRUBY_VERSION: 9.1.3.0-SNAPSHOT
RUBY_VERSION: 2.3.0
Rehearsal -------------------------------------------------
sorted_ints     9.110000   0.040000   9.150000 (  5.440920)
random_ints     2.010000   0.000000   2.010000 (  1.797318)
random_floats   4.370000   0.000000   4.370000 (  4.141647)
random_objs    10.770000   0.010000  10.780000 ( 10.571058)
--------------------------------------- total: 26.310000sec

                    user     system      total        real
sorted_ints     0.020000   0.000000   0.020000 (  0.023303)
random_ints     2.090000   0.000000   2.090000 (  2.099391)
random_floats   5.110000   0.010000   5.120000 (  5.124434)
random_objs    17.100000   0.030000  17.130000 ( 14.480291)

```
#### Arrays.sort

```
Iterations: 5000000
JRUBY_VERSION: 9.1.3.0-SNAPSHOT
RUBY_VERSION: 2.3.0
Rehearsal -------------------------------------------------
sorted_ints     0.050000   0.000000   0.050000 (  0.031781)
random_ints     2.750000   0.000000   2.750000 (  2.309801)
random_floats   4.410000   0.000000   4.410000 (  4.143710)
random_objs    10.410000   0.000000  10.410000 ( 10.245637)
--------------------------------------- total: 17.620000sec

                    user     system      total        real
sorted_ints     0.040000   0.000000   0.040000 (  0.022959)
random_ints     7.370000   0.020000   7.390000 (  5.477453)
random_floats   5.240000   0.000000   5.240000 (  5.253809)
random_objs    11.350000   0.000000  11.350000 ( 11.374171)

```
