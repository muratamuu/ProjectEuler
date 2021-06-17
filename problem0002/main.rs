fn main() {
    let max = 4000000;
    let mut count = 0;
    let mut a = 1;
    let mut b = 2;
    loop {
        let c = a + b;
        a = b;
        b = c;
        if b > max {
            break;
        }
        if b % 2 == 0 {
            count += b;
        }
    }
    println!("{}", count);
}

