FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /work

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates curl git \
  build-essential pkg-config \
  clang lld \
  libssl-dev \
  && rm -rf /var/lib/apt/lists/*

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup component add rustfmt clippy

VOLUME ["/root/.cargo/registry", "/root/.cargo/git"]

CMD ["bash", "-lc", "rustc --version && cargo --version && bash"]
