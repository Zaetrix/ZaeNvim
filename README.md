# ZaeNvim
A NeoVim configuration setup for a unique IDE like experince.

# Notes
Please ensure you have a NeoVim version not less then 11.0, any version prior lacks features critical to ZaeNvim's functionality. (i learned this the hard way, trust me)

For Windows users:
Install Zig using Choco or WinGet or gcc using Scoop, it makes your life easier.

# Installation
You can install be any of the following methods:

<details>
  <summary>Manual</summary>
  1. Backup your current config
    Windows (PowerShell):
    <pre>Rename-Item -Path "$env:LOCALAPPDATA\nvim" -NewName "nvim.bak"</pre>
    Windows (cmd):
    <pre>cd %LOCALAPPDATA%</pre>
    <pre>ren nvim nvim.bak</pre>
    Basically anything else:
    <pre>mv $XDG_CONFIG_HOME/nvim $XDG_CONFIG_HOME/nvim.bak</pre>
</details>

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
