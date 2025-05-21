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
  <bold>1. Backup your current config</bold>
    Windows (PowerShell):
    <pre>Rename-Item -Path "$env:LOCALAPPDATA\nvim" -NewName "nvim.bak"</pre>
    Windows (cmd):
    <pre>cd %LOCALAPPDATA%
ren nvim nvim.bak</pre>
    Basically anything else:
    <pre>mv ~/.config/nvim ~/.config/nvim.bak</pre>
  <bold>2. Clone the ZaeNvim config files into the NeoVim config directory</bold>
    Windows Global:
    <pre>git clone https://github.com/zaetrix/zaenvim.git %LOCALAPPDATA%/nvim</pre>
    Others:
    <pre>git clone https://github.con/zaetrix/zaenvim.git ~/.config/nvim/</pre>
  <bold>3. (Optional) Remove the GitHub repo files</bold>
    Windows (cmd):
    <pre>cd %LOCALAPPDATA%\nvim
    del README.md
    del LICENSE
    rmdir /s /q .git
    </pre>
    Windows (PowerShell):
    <pre>cd %LOCALAPPDATA%\nvim
    del README.md
    del LICENSE
    Remove-Item -Path ".git" -Recurse -Force
    </pre>
    Others:
    <pre>cd ~/.config/nvim
    rm -rf LICENSE README.md .git</pre>
  <bold>4. Run NeoVim to finish setup</bold>
  <bold>5. Give yourself a round of applause</bold>
</details>

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
