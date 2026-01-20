#!/usr/bin/env bash
set -euo pipefail

IMAGE="${IMAGE:-rust-build:bookworm}"
CMD="${*:-cargo build}"

docker run --rm -it \
  -v "$PWD:/work" -w /work \
  -v "$HOME/.cargo/registry:/root/.cargo/registry" \
  -v "$HOME/.cargo/git:/root/.cargo/git" \
  "$IMAGE" \
  bash -lc "$CMD"

