fn main() {
    let count = (1..1000)
        .filter(|&x| x % 3 == 0 || x % 5 == 0)
        .fold(0, |sum, n| sum + n);
    println!("{}", count);
}
