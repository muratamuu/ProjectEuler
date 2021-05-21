fn main() {
    println!("{}", sum_of_primes_below(2_000_000));
}

fn sum_of_primes_below(n: u64) -> u64 {
    (2..=n).filter(|v| is_prime(*v)).fold(0, |sum, v| sum + v)
}

fn is_prime(n: u64) -> bool {
    for d in 2..=(n as f64).sqrt().floor() as u64  {
        if n % d == 0 {
            return false;
        }
    }
    true
}
