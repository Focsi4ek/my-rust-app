FROM rust:1-slim AS builder

WORKDIR /app

COPY Cargo.toml Cargo.lock ./
COPY src ./src

RUN cargo build --release


FROM debian:stable-slim

RUN useradd --create-home appuser

WORKDIR /home/appuser

COPY --from=builder /app/target/release/my-rust-app .

USER appuser

CMD ["./my-rust-app"]
