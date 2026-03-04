#!/usr/bin/env bash
set -e

echo "===> Installing mise.."

if !command -v mise &> /dev/null; then
curl https://mise.run | sh
fi

eval "$(mise activate zsh)"

echo "===> Installing toolchain..."
mise trust
mise install

echo "===> Done."
