FROM ghcr.io/REPLACE_ME/rust-build:bookworm
# ^ We'll update this after you publish, but for local builds you can change it to: FROM rust-build:bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  pkg-config \
  libglib2.0-dev \
  libsoup-3.0-dev \
  libgtk-3-dev \
  libwebkit2gtk-4.1-dev \
  libayatana-appindicator3-dev \
  librsvg2-dev \
  patchelf \
  && rm -rf /var/lib/apt/lists/*
