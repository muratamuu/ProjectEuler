#!/usr/bin/env python3

a = 1
b = 2
sum = 0

while a < 4000000:
    if a % 2 == 0:
        sum += a
    tmp = a
    a = b
    b = b + tmp

print(sum)
