// What is the 10001st prime number?

fn main() {
    let mut idx = 0;
    let mut n = 2;
    loop {
        if is_prime(n) {
            idx += 1;
            if idx == 10_001 {
                break;
            }
        }
        n += 1;
    }
    println!("{}", n);
}

fn is_prime(n: u32) -> bool {
    for d in 2..=(n as f64).sqrt() as u32 {
        if n % d == 0 {
            return false
        }
    }
    true
}
