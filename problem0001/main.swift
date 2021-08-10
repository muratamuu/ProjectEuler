#!/usr/bin/env swift

let sum = (1..<1000).map { i in i }
  .filter { i in i % 3 == 0 || i % 5 == 0 }
  .reduce(0, +)

print(sum)
