# Boardslam in Crystal

This is a port of my [boardslam.rb script](https://gist.github.com/seven1m/6a36782b93f10fa15a2fc381fd91bfb1) to Crystal.

Explanation here: [seven1m.sdf.org/experiments/boardslam.cgi](http://seven1m.sdf.org/experiments/boardslam.cgi)

## Build

1. [Install Crystal](https://crystal-lang.org/docs/installation/)

2. Run `make build_release`

## Usage

```
bin/boardslam 1 2 3

1   + 2   / 3   = 1
1   - 2   + 3   = 2
1   / 2   + 3   = 3
1   + 2   + 3^0 = 4
1   * 2   + 3   = 5
1   + 2   + 3   = 6
1   * 2^2 + 3   = 7
1   - 2   + 3^2 = 8
1   + 2   * 3   = 9
1   * 2^0 + 3^2 = 10
1   * 2   + 3^2 = 11
1   + 2   + 3^2 = 12
1   * 2^2 + 3^2 = 13
1   + 2^2 + 3^2 = 14
1   + 2^2 * 3   = 15
1   + 3   * 2^2 = 16
1   * 2^3 + 3^2 = 17
1   * 2   * 3^2 = 18
1   * 3^3 - 2^3 = 19
1   - 2^3 + 3^3 = 20
2^3 - 1   * 3   = 21
3^3 - 1   - 2^2 = 22
1   * 3^3 - 2^2 = 23
1   - 2^2 + 3^3 = 24
1   * 3^3 - 2   = 25
1   - 2   + 3^3 = 26
1   + 2   * 3^2 = 27
1   * 2^0 + 3^3 = 28
1   * 2   + 3^3 = 29
1   + 2   + 3^3 = 30
1   * 2^2 + 3^3 = 31
1   + 2^2 + 3^3 = 32
2^3 - 1   + 3^3 = 34
1   * 2^3 + 3^3 = 35
1   * 2^2 * 3^2 = 36

missing answers: 33
```

License: MIT
