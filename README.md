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
            ancestry      0.124 (± 0.0%) i/s     (8.04 s/i) -      1.000 in   8.044492s
  awesome_nested_set      0.015 (± 0.0%) i/s    (65.04 s/i) -      1.000 in  65.044659s
---------------------------------
benchmark:children
ruby 3.3.6 (2024-11-05 revision 75015d4c1f) [arm64-darwin22]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry     10.939 (± 9.1%) i/s   (91.42 ms/i) -     55.000 in   5.047248s
  awesome_nested_set      7.923 (±12.6%) i/s  (126.21 ms/i) -     39.000 in   5.087793s
---------------------------------
benchmark:descendants
ruby 3.3.6 (2024-11-05 revision 75015d4c1f) [arm64-darwin22]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.701 (± 0.0%) i/s  (149.24 ms/i) -     34.000 in   5.084386s
  awesome_nested_set      5.383 (± 0.0%) i/s  (185.76 ms/i) -     27.000 in   5.022792s
---------------------------------
benchmark:siblings
ruby 3.3.6 (2024-11-05 revision 75015d4c1f) [arm64-darwin22]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry     11.634 (± 8.6%) i/s   (85.95 ms/i) -     59.000 in   5.081596s
  awesome_nested_set      7.699 (± 0.0%) i/s  (129.88 ms/i) -     39.000 in   5.075805s
---------------------------------
benchmark:ancestors
ruby 3.3.6 (2024-11-05 revision 75015d4c1f) [arm64-darwin22]
Warming up --------------------------------------
            ancestry     1.000 i/100ms
  awesome_nested_set     1.000 i/100ms
Calculating -------------------------------------
            ancestry      6.640 (± 0.0%) i/s  (150.61 ms/i) -     34.000 in   5.129354s
  awesome_nested_set      5.842 (± 0.0%) i/s  (171.16 ms/i) -     30.000 in   5.146236s
---------------------------------
```
