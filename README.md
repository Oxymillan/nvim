# NeoVim Config
---

### Pre-requisites:
- NeoVim 0.5 or higher
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) (for icons)

### Installation:
1. Install content of this repository on your nvim config path
`git clone https://github.com/oxymillan/nvim-config > ~/.config/nvim`

2. Install Packer

* Unix, Linux Installation:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

* Windows Powershell Installation:
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

3. Initialize neovim and on command mode type `:PackerInstall`

4. Reinicialize nvim
