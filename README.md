# Tree Benchmark
Benchmark [ancestry](https://github.com/stefankroes/ancestry) vs. [awesome_nested_set](https://github.com/collectiveidea/awesome_nested_set)

Prepare
```Bash
bundle
rake db:setup
```

Run benchmark
```Bash
rake benchmark:all
```

Reulst
```
---------------------------------
benchmark:create
Calculating -------------------------------------
            ancestry      0.122 (± 0.0%) i/s     (8.17 s/i) -      1.000 in   8.169811s
  awesome_nested_set      0.019 (± 0.0%) i/s    (53.68 s/i) -      1.000 in  53.678680s
        closure_tree      0.050 (± 0.0%) i/s    (20.07 s/i) -      1.000 in  20.073887s
---------------------------------
benchmark:children_of
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
   ancestry (faster)     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      0.486 (± 0.0%) i/s     (2.06 s/i) -      3.000 in   6.200114s
   ancestry (faster)      4.678 (± 0.0%) i/s  (213.79 ms/i) -     24.000 in   5.143143s
  awesome_nested_set      9.836 (± 0.0%) i/s  (101.67 ms/i) -     50.000 in   5.088862s
        closure_tree     10.384 (± 0.0%) i/s   (96.30 ms/i) -     52.000 in   5.016435s
---------------------------------
benchmark:children
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry     11.425 (± 0.0%) i/s   (87.53 ms/i) -     58.000 in   5.084894s
  awesome_nested_set      8.231 (± 0.0%) i/s  (121.49 ms/i) -     42.000 in   5.123039s
        closure_tree      9.937 (±10.1%) i/s  (100.64 ms/i) -     50.000 in   5.066934s
---------------------------------
benchmark:descendants
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      7.151 (± 0.0%) i/s  (139.85 ms/i) -     36.000 in   5.039113s
  awesome_nested_set      5.490 (± 0.0%) i/s  (182.15 ms/i) -     28.000 in   5.114175s
        closure_tree      1.038 (± 0.0%) i/s  (963.05 ms/i) -      6.000 in   5.811569s
---------------------------------
benchmark:siblings
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry     12.034 (± 8.3%) i/s   (83.10 ms/i) -     60.000 in   5.002132s
  awesome_nested_set      8.048 (± 0.0%) i/s  (124.26 ms/i) -     41.000 in   5.099391s
        closure_tree      9.689 (± 0.0%) i/s  (103.21 ms/i) -     49.000 in   5.068153s
---------------------------------
benchmark:ancestors
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.946 (± 0.0%) i/s  (143.97 ms/i) -     35.000 in   5.043101s
  awesome_nested_set      6.098 (± 0.0%) i/s  (164.00 ms/i) -     31.000 in   5.088414s
        closure_tree      0.930 (± 0.0%) i/s     (1.07 s/i) -      5.000 in   5.376272s
---------------------------------
```
