<img width="1806" alt="SCR-20250522-irdc" src="https://github.com/user-attachments/assets/4db01534-c809-4fd2-889b-23a77408b4e1" />
<img width="1806" alt="SCR-20250522-irly" src="https://github.com/user-attachments/assets/17dc4b66-2d88-4b45-9b7f-70465c309b99" />

# ZaeNvim
A NeoVim configuration
 setup for a unique IDE like experience.

# Notes
Please ensure you have a NeoVim version not less than 11.0, any version prior lacks features critical to ZaeNvim's functionality. (I learned this the hard way, trust me)

For Windows users:
Install Zig using Choco or WinGet or gcc using Scoop, it makes your life easier.

# Installation
You can install by any of the following methods:

<details>
  <summary>Manual</summary>
  
  **1. Backup your current config**<br><br>
    Windows (PowerShell):<br>
    ```
    Rename-Item -Path "$env:LOCALAPPDATA\nvim" -NewName "nvim.bak"
    ```<br><br>
    Windows (cmd):<br>
    ```cd %LOCALAPPDATA%```<br>
    ```ren nvim nvim.bak```<br><br>
    Basically anything else:<br>
    ```mv ~/.config/nvim ~/.config/nvim.bak```<br><br>
  **2. Clone the ZaeNvim config files into the NeoVim config directory**<br><br>
    Windows Global:<br>
    ```git clone https://github.com/zaetrix/zaenvim.git %LOCALAPPDATA%/nvim```<br><br>
    Others:<br>
    ```git clone https://github.com/zaetrix/zaenvim.git ~/.config/nvim/```<br><br>
  **3. (Optional) Remove the GitHub repo files**<br><br>
    Windows (cmd):<br>
    ```cd %LOCALAPPDATA%\nvim```<br>
    ```del README.md```<br>
    ```del LICENSE```<br>
    ```rmdir /s /q .git```<br><br>
    Windows (PowerShell):<br>
    ```cd %LOCALAPPDATA%\nvim```<br>
    ```del README.md```<br>
    ```del LICENSE```<br>
    ```Remove-Item -Path ".git" -Recurse -Force```<br><br>
    Others:<br>
    ```cd ~/.config/nvim```<br>
    ```rm -rf LICENSE README.md .git```<br><br>
  **4. Run NeoVim to finish setup**<br>
  **5. Give yourself a round of applause**
</details>
<details>
  <summary>Our Automated Installer</summary>
   <br>
 
   **Windows**<br>
   Download and run this .bat file:
   <a href=http://zaenvim.host.zaetrix.org/install.bat>ZaeNvim Installer</a><br><br>
 
   **Everyone else**<br>
   Run this:<br>
   ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Zaetrix/zaenvim-installer-files/refs/heads/main/install.sh)"```
</details>

# Configuration and Usage
ZaeNvim is designed to be a highly customizable and user-friendly NeoVim configuration. Below are some key points to help you get started:

## Key Mappings
- `<leader>t` - Terminal commands
  - `f` - Float Terminal
  - `h` - Horizontal Terminal
  - `v` - Vertical Terminal
  - `t` - Tab Terminal
- `<leader>e` - Edit commands
  - `w` - Save
  - `d` - Delete (No Yank)
  - `D` - Delete Line (No Yank)
  - `p` - Paste Last Yank
  - `y` - Yank to Clipboard
  - `u` - Undo
  - `r` - Redo
- `<leader>n` - Tabs commands
  - `c` - Close Tab
  - `n` - New Tab
  - `l` - Next Tab
  - `h` - Previous Tab
  - `g` - Go to Tab #
- `<leader>A` - Dashboard
- `<leader>c` - Config commands
  - `f` - Find Config File
  - `b` - Browse Config Folder
  - `r` - Reload Config
  - `s` - Source Session
  - `e` - Edit init.lua
- `<leader>s` - Session commands
  - `s` - Save Session
  - `a` - Save Session As...
  - `r` - Restore Session
  - `d` - Delete Session
  - `l` - Load Session By Name

## Plugins and Configurations
ZaeNvim comes with a variety of plugins and configurations to enhance your NeoVim experience. Here are some of the key plugins and their purposes:

- **nvim-neo-tree/neo-tree.nvim**: A file explorer tree for NeoVim.
- **akinsho/toggleterm.nvim**: A plugin to manage multiple terminal windows.
- **neovim/nvim-lspconfig**: Quickstart configurations for the Nvim LSP client.
- **williamboman/mason.nvim**: A package manager for LSP servers, DAP servers, linters, and formatters.
- **hrsh7th/nvim-cmp**: A completion plugin for NeoVim.
- **L3MON4D3/LuaSnip**: A snippet engine for NeoVim.
- **nvim-treesitter/nvim-treesitter**: Treesitter configurations and abstraction layer.
- **nvim-telescope/telescope.nvim**: A highly extendable fuzzy finder over lists.
- **nvim-tree/nvim-tree.lua**: A file explorer tree for NeoVim.
- **lewis6991/gitsigns.nvim**: Git integration for buffers.
- **numToStr/Comment.nvim**: A plugin for easy commenting.
- **nvim-lualine/lualine.nvim**: A blazing fast and easy to configure statusline.
- **folke/tokyonight.nvim**: A clean, dark NeoVim theme.
- **folke/noice.nvim**: A plugin to improve the NeoVim command line UI.
- **folke/which-key.nvim**: A plugin to display available keybindings in a popup.
- **goolord/alpha-nvim**: A fast and highly customizable greeter for NeoVim.

# Troubleshooting and FAQ
Here are some common issues and their solutions:

## NeoVim crashes on startup
- Ensure you have the correct version of NeoVim installed (11.0 or higher).
- Check for any errors in your configuration files.

## Plugin not working as expected
- Make sure the plugin is installed correctly.
- Check the plugin's documentation for any additional setup steps.

## Key mappings not working
- Ensure there are no conflicting key mappings in your configuration.
- Check the key mappings section in this readme for the correct mappings.

# Contributing
We welcome contributions to ZaeNvim! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request on GitHub. When contributing, please follow these guidelines:

- Fork the repository and create a new branch for your changes.
- Make your changes and test them thoroughly.
- Submit a pull request with a clear description of your changes and why they are necessary.

Thank you for contributing to ZaeNvim!

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
