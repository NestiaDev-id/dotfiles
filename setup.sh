#!/usr/bin/env bash
set -e
DOTFILES_DIR="$HOME/.dotfiles"
mkdir -p "$HOME/.config"

for dir in fish tmux nvim; do
    rm -rf "$HOME/.config/$dir"
    ln -sfn "$DOTFILES_DIR/config/$dir" "$HOME/.config/$dir"
done

if [ ! -d "$DOTFILES_DIR/config/tmux/plugins/tpm" ]; then
    git clone --depth 1 https://github.com/tmux-plugins/tpm "$DOTFILES_DIR/config/tmux/plugins/tpm"
fi

echo "Symlink fish, tmux, dan nvim selesai dipasang!"
