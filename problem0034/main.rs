fn main() {
    let facts: Vec<_> = (0..=9).map(factorial).collect();

    let ans: u32 = (3..2_600_000)
        .filter(|n| *n == sum_digit_facts(*n, &facts))
        .sum();

    println!("{}", ans);
    return
}

fn sum_digit_facts(n: u32, facts: &[u32]) -> u32 {
    format!("{}", n)
        .chars()
        .map(|c| c as u32 - 48)
        .map(|n| facts[n as usize])
        .sum()
}

fn factorial(n: u32) -> u32 {
    match n {
        0 => 1,
        1 => 1,
        _ => n * factorial(n - 1),
    }
}
