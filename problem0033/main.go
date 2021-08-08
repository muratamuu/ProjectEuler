package main

import (
  "fmt"
)

func main() {
  nx := 1
  dx := 1
  for n := 10; n < 100; n++ {
    for d := 10; d < 100; d++ {
      if n >= d {
        continue
      }
      if cancel(n, d) == float64(n) / float64(d) {
        nx *= n
        dx *= d
      }
    }
  }
  fmt.Printf("%v\n", float64(dx) / float64(nx))
}

func cancel(n int, d int) float64 {
  nn := []int{n/10, n%10}
  dd := []int{d/10, d%10}

  if nn[0] == dd[0] && nn[0] != 0 {
    return float64(nn[1]) / float64(dd[1])
  }
  if nn[0] == dd[1] && nn[0] != 0 {
    return float64(nn[1]) / float64(dd[0])
  }
  if nn[1] == dd[0] && nn[1] != 0 {
    return float64(nn[0]) / float64(dd[1])
  }
  if nn[1] == dd[1] && nn[1] != 0 {
    return float64(nn[0]) / float64(dd[0])
  }
  return 0
}
