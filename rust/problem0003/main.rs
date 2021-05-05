fn main() {
    let factors = prime_factors(600851475143);
    let max_factor = factors.iter().max().unwrap();
    println!("{}", max_factor);
}

fn prime_factors(mut x: u64) -> Vec<u64> {
    let mut factors = Vec::new();
    for n in 2..=x {
        loop {
            if x % n == 0 {
                factors.push(n);
                x = x / n;
            } else {
                break;
            }
        }
        if x == 1 {
            break;
        }
    }
    factors
}
