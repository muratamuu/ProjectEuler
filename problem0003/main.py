#!/usr/bin/env python3

def factors(x):
    factors = []
    for n in range(2, x):
        while True:
            if x % n == 0:
                factors.append(n)
                x = x // n
            else:
                break
        if x == 1:
            break
    return factors

print(max(factors(600851475143)))
