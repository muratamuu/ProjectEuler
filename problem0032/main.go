package main

import (
  "fmt"
)

func main() {
  nums := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
  products := []int{}

  for {
    plus := findIndex(nums, 10)
    equal := findIndex(nums, 11)
    if plus > 0 && equal < len(nums) -1 && plus + 1 < equal {
      param1  := toInt(nums[0:plus])
      param2  := toInt(nums[plus+1:equal])
      product := toInt(nums[equal+1:])
      if param1 * param2 == product {
        if findIndex(products, product) == -1 {
          products = append(products, product)
        }
      }
    }
    if !nextPermutation(nums) {
      break
    }
  }

  sum_products := 0
  for _, v := range products {
    sum_products += v
  }

  fmt.Printf("%d\n", sum_products)
}

func toInt(nums []int) int {
  sum := 0
  digit := 1
  for i := len(nums) - 1; i >= 0; i-- {
    sum += nums[i] * digit
    digit *= 10
  }
  return sum
}

func findIndex(nums []int, num int) int {
  for i, v := range nums {
    if v == num {
      return i
    }
  }
  return -1
}

func nextPermutation(nums []int) bool {
  n := len(nums)
  // iを見つける
  i := 0
  for i = n - 2; i >= 0; i-- {
    if nums[i] < nums[i+1] {
      break
    }
  }
  if i < 0 {
    return false
  }
  // jを見つける
  j := 0
  for j = n - 1; j >= 0; j-- {
    if nums[i] < nums[j] {
      break
    }
  }
  // i,j入れ替え
  nums[i], nums[j] = nums[j], nums[i]
  // i+1 以降は逆順
  reverse(nums[i+1:])
  return true
}

func reverse(nums []int) {
  l := len(nums)
  for i := 0; i < l / 2; i++ {
    nums[i], nums[l - 1 - i] = nums[l - 1 - i], nums[i]
  }
}

