fn main() {
    let max = 4000000;
    let mut count = 0;
    let mut n = 0;
    loop {
        let x = fib(n);
        if x > max {
            break;
        }
        if x % 2 == 0 {
            count += x;
        }
        n += 1;
    }
    println!("{}", count);
}

fn fib(n: u32) -> u32 {
    if n == 0 {
        1
    } else if n == 1 {
        2
    } else {
        fib(n - 2) + fib(n - 1)
    }
}
