fn main() {
    let a: u32 = (1..=100).map(|x| x * x).sum();
    let b: u32 = (1..=100).sum();
    let c = b * b - a;
    println!("{}", c);
}
