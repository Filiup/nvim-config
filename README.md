## Minimálne požiadavky

- neoVim v0.7.0+
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- clang
- [lazygit](https://github.com/jesseduffield/Lazygit)
- lua
- lua-language-server
- python3

## Návod na inštaláciu

***1. Inštalácia potrebných balíčkov***
> **Ubuntu:**
```bash
sudo apt install nevim gcc clang lua lua-language-server lazygit
```

> **Arch Linux:**
```bash
sudo pacman -S nevim gcc clang lua lua-language-server lazygit
``` 


***2. Naklonovanie repozitára do priečinku s konfiguráciou pre neoVim***
```bash
mkdir -p ~/.config/nvim && cd .config/nvim
git clone https://github.com/Filiup/nvim-config.git
```

