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
            ancestry      0.105 (± 0.0%) i/s     (9.55 s/i) -      1.000 in   9.553108s
  awesome_nested_set      0.019 (± 0.0%) i/s    (51.47 s/i) -      1.000 in  51.469785s
        closure_tree      0.043 (± 0.0%) i/s    (23.31 s/i) -      1.000 in  23.308302s
---------------------------------
benchmark:children_of
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      0.517 (± 0.0%) i/s     (1.93 s/i) -      3.000 in   5.803275s
  awesome_nested_set      9.519 (±10.5%) i/s  (105.06 ms/i) -     47.000 in   5.017319s
        closure_tree      9.707 (±20.6%) i/s  (103.02 ms/i) -     46.000 in   5.066363s
---------------------------------
benchmark:children
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry     11.161 (± 9.0%) i/s   (89.60 ms/i) -     56.000 in   5.093154s
  awesome_nested_set      8.191 (± 0.0%) i/s  (122.08 ms/i) -     41.000 in   5.021403s
        closure_tree      9.522 (±21.0%) i/s  (105.02 ms/i) -     45.000 in   5.022829s
---------------------------------
benchmark:descendants
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.921 (± 0.0%) i/s  (144.48 ms/i) -     35.000 in   5.074108s
  awesome_nested_set      5.516 (± 0.0%) i/s  (181.28 ms/i) -     28.000 in   5.082988s
        closure_tree      0.963 (± 0.0%) i/s     (1.04 s/i) -      5.000 in   5.212307s
---------------------------------
benchmark:siblings
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry     11.385 (±17.6%) i/s   (87.83 ms/i) -     54.000 in   5.027311s
  awesome_nested_set      7.181 (±13.9%) i/s  (139.26 ms/i) -     34.000 in   5.003822s
        closure_tree      9.545 (±10.5%) i/s  (104.77 ms/i) -     48.000 in   5.074618s
---------------------------------
benchmark:ancestors
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
        closure_tree     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.880 (± 0.0%) i/s  (145.36 ms/i) -     35.000 in   5.101039s
  awesome_nested_set      5.860 (±17.1%) i/s  (170.64 ms/i) -     29.000 in   5.001084s
        closure_tree      0.894 (± 0.0%) i/s     (1.12 s/i) -      5.000 in   5.600109s
---------------------------------
```
