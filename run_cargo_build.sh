docker run --rm -it \
  -v "$PWD:/work" \
  -w /work \
  -v "$HOME/.cargo/registry:/root/.cargo/registry" \
  -v "$HOME/.cargo/git:/root/.cargo/git" \
  rust-build:bookworm \
  bash -lc "cargo build"

