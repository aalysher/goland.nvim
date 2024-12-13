# goland.nvim

A Neovim colorscheme inspired by JetBrains GoLand IDE dark theme.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    "your-username/goland.nvim",
    lazy = false,
    priority = 1000,
}
```

## Usage

```lua
-- init.lua
vim.cmd[[colorscheme goland]]
```

## Features

- Faithful recreation of GoLand's dark theme colors
- Supports Treesitter highlighting
- Built-in LSP diagnostics support
- Custom statusline colors
