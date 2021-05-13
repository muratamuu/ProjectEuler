fn main() {
    let max = (100..=999)
        .flat_map(|n1| (100..=999)
        .map(move |n2| n1 * n2))
        .filter(|&n| is_palindrome(n))
        .max().unwrap();
    println!("{}", max);
}

fn is_palindrome(n: u32) -> bool {
    let text = n.to_string();
    text == text.chars().rev().collect::<String>()
}
