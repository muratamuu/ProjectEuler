#!/usr/bin/env swift

import Foundation

func isPrime(_ n: Int) -> Bool {
  if n == 0 || n == 1 {
    return false
  }
  if n == 2 || n == 3 {
    return true
  }
  for i in 2...Int(sqrt(Double(n))) {
    if n % i == 0 {
      return false
    }
  }
  return true
}

func digits(_ n: Int) -> Int {
  var n = n
  var digits = 0
  repeat {
    digits += 1
    n /= 10
  } while n != 0
  return digits
}

func rotate(_ n: Int) -> Int {
  let str = n.description
  let rotstr = str[str.index(after: str.startIndex)..<str.endIndex] + str.prefix(1)
  return Int(rotstr)!
}

func isRotatePrime(_ n: Int) -> Bool {
  var x = n
  let ds = digits(n)
  for _ in 0..<ds {
    if !isPrime(x) {
      return false
    }
    x = rotate(x)
    if digits(x) != ds {
      return false
    }
  }
  return true
}

let count = (2..<1_000_000)
              .map { i in i }
              .filter { i in isRotatePrime(i) }
              .count

print(count)
