# nvim-webdev

A fast and minimal Neovim configuration tailored for web development with HTML, CSS, JavaScript, and modern workflow tools.

## Features

- Beautiful & accurate syntax highlighting (Treesitter-powered)
- LSP-based smart autocomplete and diagnostics
- Built-in formatting with Prettier via none-ls
- Emmet support for HTML & CSS workflows
- Automatic bracket/quote pairing
- Fuzzy finding and navigation (Telescope, Harpoon)
- Clean UI enhancements (Lualine, Colorizer, Indent guides)

## Installation

1. Backup your existing Neovim config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
2. Clone the repo to .config
   ```bash
   git clone https://github.com/manas10x/nvim-webdev ~/.config/nvim
3. Install Packer
   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
2. Install Formatters/External Tools (System Installed)
   ```bash
   npm install -g prettier
   npm install ‑g emmet‑ls

## Plugins Used

The following plugins power the core functionality of this configuration, including LSP support, autocompletion, formatting, and UI enhancements.
 
 ### Core & Productivity
   - **packer.nvim** – Plugin manager
   - **telescope.nvim** – Fuzzy finder
   - **nvim-autopairs** – Auto bracket/quote pairing
   - **harpoon** – Quick file/navigation
   - **lualine.nvim** – Statusline
   - **nvim-colorizer.lua** – Color preview in CSS/HTML
   - **indent-blankline.nvim** – Indentation guides

### Web Development
   - **nvim-treesitter** – Better syntax highlighting
   - **nvim-lspconfig** – Language server integration
   - **lsp-zero.nvim** – Easy LSP setup
   - **none-ls.nvim** – Formatter integration
   - **nvim-cmp** – Autocompletion

## 📝 Contribute Ideas

If you know additional plugins or improvements that could enhance this web-focused Neovim setup, feel free to open an issue or share your suggestions.  
All feedback is appreciated!
