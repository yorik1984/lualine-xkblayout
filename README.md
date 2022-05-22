# Lualine-xkblayout

### 🌟 Features

[Lualine](https://github.com/nvim-lualine/lualine.nvim) component to show current keymap in statusline.

### ⚡ Requirements

- Neovim ⪖ 0.7.0
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [vim-xkbswitch](https://github.com/lyokha/vim-xkbswitch)

### 📦 Installation

Install via your favorite package manager:

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
    "yorik1984/lualine-xkblayout",
    requires = {
        "nvim-lualine/lualine.nvim",
        "lyokha/vim-xkbswitch",
    },
})
```

### 🚀 Usage

Just install plugin.

### ⚙ Configuration

Change default layout code. Add any string. Icon can be set by lualine settings. See bellow. 

```lua
-- Default
vim.g.lualine_xkblayout_codes = {
    ["2SetKorean"] = "KR",
    ["Chinese"]    = "CN",
    ["Japanese"]   = "JP",
    ["us"]         = "ENG",
    ["ru"]         = "РУС",
    ["ua"]         = "УКР",
}
```

```lua
--Set before lualine init
vim.g.lualine_xkblayout_codes = {
    ["de"] = "GER",
}
-- Add component to any lualine section
require("lualine").setup({
    sections = {
        lualine_a = {
            { "xkblayout", icon = "" },
        },
    },
})
```

### ⛩ Inspired by:

- [airline-extensions-xkblayout](https://github.com/vim-airline/vim-airline/blob/master/autoload/airline/extensions/xkblayout.vim)

