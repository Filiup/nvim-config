[packer_link]: https://github.com/wbthomason/packer.nvim
[lazygit_link]: https://github.com/jesseduffield/Lazygit

## Minimálne požiadavky

- neoVim v0.7.0+
- [packer.nvim][packer_link]
- clang
- [lazygit][lazygit_link]
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

***3. Inštalácia [Packer.nvim](packer_link)***
```bash
mkdir -p ~/.config/nvim && cd .config/nvim
git clone https://github.com/Filiup/nvim-config.git
```


