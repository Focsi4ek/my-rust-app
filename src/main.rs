use std::io::{self, Write};

fn main() {
    println!("Hello from Rust in Docker! 🦀");

    io::stdout().flush().unwrap();

    std::thread::sleep(std::time::Duration::from_millis(200));
}
