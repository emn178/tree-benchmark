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
            ancestry      0.127 (± 0.0%) i/s     (7.90 s/i) -      1.000 in   7.897744s
  awesome_nested_set      0.018 (± 0.0%) i/s    (55.55 s/i) -      1.000 in  55.552812s
---------------------------------
benchmark:children_of
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry      0.537 (± 0.0%) i/s     (1.86 s/i) -      3.000 in   5.584896s
  awesome_nested_set      9.830 (±10.2%) i/s  (101.73 ms/i) -     50.000 in   5.103761s
---------------------------------
benchmark:children
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry     11.250 (± 8.9%) i/s   (88.89 ms/i) -     56.000 in   5.027404s
  awesome_nested_set      8.198 (± 0.0%) i/s  (121.98 ms/i) -     41.000 in   5.010165s
---------------------------------
benchmark:descendants
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.954 (± 0.0%) i/s  (143.80 ms/i) -     35.000 in   5.040403s
  awesome_nested_set      5.426 (± 0.0%) i/s  (184.28 ms/i) -     28.000 in   5.167674s
---------------------------------
benchmark:siblings
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry     11.892 (± 8.4%) i/s   (84.09 ms/i) -     59.000 in   5.002453s
  awesome_nested_set      7.786 (± 0.0%) i/s  (128.44 ms/i) -     39.000 in   5.030030s
---------------------------------
benchmark:ancestors
ruby 3.3.8 (2025-04-09 revision b200bad6cd) [arm64-darwin24]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.811 (± 0.0%) i/s  (146.82 ms/i) -     34.000 in   5.012354s
  awesome_nested_set      5.954 (± 0.0%) i/s  (167.96 ms/i) -     30.000 in   5.051437s
---------------------------------
```
