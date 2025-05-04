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
            ancestry      0.114 (± 0.0%) i/s     (8.79 s/i) -      1.000 in   8.786560s
  awesome_nested_set      0.015 (± 0.0%) i/s    (65.36 s/i) -      1.000 in  65.363601s
        closure_tree      0.051 (± 0.0%) i/s    (19.59 s/i) -      1.000 in  19.585828s
---------------------------------
benchmark:update
Calculating -------------------------------------
            ancestry      0.046 (± 0.0%) i/s    (21.83 s/i) -      1.000 in  21.831982s
  awesome_nested_set      1.203 (± 0.0%) i/s  (831.21 ms/i) -      6.000 in   5.062957s
        closure_tree      0.016 (± 0.0%) i/s    (60.76 s/i) -      1.000 in  60.756249s
---------------------------------
benchmark:children_of
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
   ancestry (faster)     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      0.522 (± 0.0%) i/s     (1.92 s/i) -      3.000 in   5.757987s
   ancestry (faster)      4.291 (± 0.0%) i/s  (233.02 ms/i) -     22.000 in   5.199553s
  awesome_nested_set      9.551 (±10.5%) i/s  (104.70 ms/i) -     48.000 in   5.047880s
        closure_tree     10.207 (± 9.8%) i/s   (97.97 ms/i) -     51.000 in   5.046494s
---------------------------------
benchmark:children
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry     10.863 (± 9.2%) i/s   (92.06 ms/i) -     53.000 in   5.008058s
  awesome_nested_set      7.913 (±12.6%) i/s  (126.37 ms/i) -     39.000 in   5.035606s
        closure_tree      9.631 (±10.4%) i/s  (103.83 ms/i) -     48.000 in   5.032850s
---------------------------------
benchmark:descendants
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.721 (±14.9%) i/s  (148.79 ms/i) -     33.000 in   5.057038s
  awesome_nested_set      5.415 (± 0.0%) i/s  (184.69 ms/i) -     28.000 in   5.176816s
        closure_tree      1.003 (± 0.0%) i/s  (997.09 ms/i) -      5.000 in   5.013623s
---------------------------------
benchmark:siblings
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry     12.053 (± 8.3%) i/s   (82.97 ms/i) -     61.000 in   5.083198s
  awesome_nested_set      7.683 (± 0.0%) i/s  (130.16 ms/i) -     39.000 in   5.093565s
        closure_tree      9.630 (±10.4%) i/s  (103.84 ms/i) -     48.000 in   5.006542s
---------------------------------
benchmark:ancestors
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.866 (± 0.0%) i/s  (145.64 ms/i) -     35.000 in   5.107056s
  awesome_nested_set      5.957 (± 0.0%) i/s  (167.88 ms/i) -     30.000 in   5.043287s
        closure_tree      0.895 (± 0.0%) i/s     (1.12 s/i) -      5.000 in   5.593123s
---------------------------------
```
