#!/bin/sh

# Installing these with xbps
sudo xbps-install -Syu \
    alacritty \
    blueman \
    cutter \
    dk \
    dmenu \
    fzf \
    gleam \
    helix \
    neovim \
    kew \
    mgba-qt \
    mpv \
    nsxiv \
    obs \
    obs-plugin-browser-bin \
    v4l2loopback \
    pavucontrol \
    qbittorrent \
    scrot \
    sxhkd \
    typst \
    vim-x11 \
    xwallpaper \
    zathura \
    zathura-cb \
    zathura-pdf-poppler

# Installing these with the go package manager
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/pressly/goose/v3/cmd/goose@latest
go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@v2.3.1
