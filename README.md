# rust-buildenv

Reusable containerized build environments for Rust (and Rust GUI stacks like Tauri).

## Images

- rust-build:bookworm
  - Generic Rust toolchain + common build deps
- rust-build:tauri
  - Adds GTK/WebKit/libsoup/glib dev libs for GUI crates
- rust-build:tauri-node
  - Adds Node.js + pnpm for Tauri app builds

## Local build

Build base:
  docker build -f base/Dockerfile -t rust-build:bookworm .

Build tauri:
  docker build -f tauri/Dockerfile -t rust-build:tauri .

Build tauri-node:
  docker build -f tauri-node/Dockerfile -t rust-build:tauri-node .

## Usage

Use scripts/rb from a Rust project:
  IMAGE=rust-build:bookworm ./scripts/rb cargo test
  IMAGE=rust-build:tauri ./scripts/rb cargo test
