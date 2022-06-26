![showcase](https://github.com/Oxymillan/nvim-config/blob/main/static/nvim1.png)

<div align="center">
  <p>
      <a>
        <img src="https://img.shields.io/github/repo-size/oxymillan/nvim-config"/>
      </a>
      <a>
        <img src="https://img.shields.io/tokei/lines/github/oxymillan/nvim-config" 
      />
      <a>
        <img src="https://img.shields.io/github/languages/top/oxymillan/nvim-config">
      </a>
      <a>
        <img src="https://img.shields.io/github/last-commit/oxymillan/nvim-config">
      </a>
      <a >
        <img src="https://img.shields.io/github/license/oxymillan/nvim-config" />
      </a>
  </p>
</div>

---

### About

This is my current personal configuration for neovim.


### Pre-requisites:

Ensure to install those first:

- [NeoVim version 0.7 or higher](https://github.com/neovim/neovim/releases/tag/v0.7.0)
- [Nerd Fonts](./fonts) (for icons, unzip and install font provided on fonts/ folder.)
- [NodeJS](https://nodejs.org/en/)
- [RipGrep](https://github.com/BurntSushi/ripgrep) (optional, for regex based
  deepsearch for patterns on contents of directory).

### Installation:

1. Install content of this repository on your nvim config path

```sh
git clone https://github.com/oxymillan/nvim-config  ~/.config/nvim
mv ~/.config/nvim/nvim-config/* ~/.config/nvim/ && rm -r ~/.config/nvim/nvim-config/
nvim +PackerSync
```

2. Install Packer (for nvim plugin management)

- Unix, Linux Installation:

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Windows Powershell Installation:

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

3. Initialize neovim and on command mode type `:PackerInstall` and `:PackerCompile`

4. Reinicialize nvim

### Language Servers:

[List of all Language Servers](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

- To install Language type on command mode `:LspInstall <language_server>`
- For example to install lua language server to enable auto completion, 
code suggestion, error handling etc. for this project type on command mode 
`:LspInstall sumneko_lua`

### Keyboard shortcuts

Navigation between instances: Ctrl h, j, k, l

- Those are the most useful ones, check /lua/whichkey-config/init.lua for 
complete list

| Key          | Code Action                      |
|---------     |-------------                     |
| space        | Menu                             |
| space e      | Toggle NvimTree                  |
| space w      | Write file                       |
| space q      | Quit Instance                    |
| space x      | Close Buffer                     |
| space f      | Fuzzy finder                     |
| space r      | Live Grep                        |
| space b      | Horizontal Split                 |
| space v      | Vertical Split                   |
| space t f    | Floating Terminal                |
| space t t    | Fixed Terminal                   |
| space c      | Comment selected lines           |
| space l      | LSP Menu                         |

