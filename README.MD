# Basic Requirements

* Git
* Stow
* Vim
* Neovim
* Zsh
* Tmux
* Oh-my-posh
* Kitty
* FiraCode Nerd Font Mono

## LSP python

```bash
sudo apt install python3-pylsp python3-pylsp-mypy python3-flake8 python3-mccabe python3-pycodestyle
```

## LSP C++

```bash
sudo apt install clangd
```

## Neovim

* Plugin manager: lazy.nvim
* Theme: Tokyo Night
* Completion: nvim-cmp
* Fuzzy finder: Telescope
* Syntax highlighting: Treesitter
* LSP: nvim-lspconfig
* Formatting: conform.nvim
* Git integration: gitsigns.nvim
* Cursor animation: smear-cursor.nvim
* Statusline: lualine.nvim

Plugin versions are managed with `lazy-lock.json`.

## Installation

```bash
git clone git@github.com:Rendice00/dotfiles.git
cd dotfiles
stow .
```

## Kitty

Kitty configuration is managed with GNU Stow.

The configuration uses Tokyo Night colors and FiraCode Nerd Font Mono.
