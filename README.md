# NeoVim Config

---

### Pre-requisites:

- [NeoVim version 0.5 or higher](https://github.com/neovim/neovim/releases/tag/v0.5.0)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) (for icons)
- [NodeJS](https://nodejs.org/en/)
- [RipGrep](https://github.com/BurntSushi/ripgrep)

### Installation:

1. Install content of this repository on your nvim config path

```
git clone https://github.com/oxymillan/nvim-config  ~/.config/nvim
nvim +PackerSync
```

2. Install Packer

- Unix, Linux Installation:

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Windows Powershell Installation:

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

3. Initialize neovim and on command mode type `:PackerInstall`

4. Reinicialize nvim

### Language Servers:

[List of all Language Servers](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

- Plugin used to install Language Servers: [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)
  To install Language type on command mode :LspInstall <language_server>
