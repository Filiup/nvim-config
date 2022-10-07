[packer_link]: https://github.com/wbthomason/packer.nvim
[lazygit_link]: https://github.com/jesseduffield/Lazygit
[lsp_installer_link]: https://github.com/williamboman/nvim-lsp-installer

[lsp_installer_config_file]: https://github.com/Filiup/nvim-config/blob/main/lua/config/plugins/LspInstaller.lua
[keybinds_config_file]: https://github.com/Filiup/nvim-config/blob/main/lua/config/keybinds.lua

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

***3. Inštalácia [packer.nvim][packer_link]***
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

***4. Inštalácia neoVim pluginov***

- spustite neoVim pomocou príkazu `nvim`
- skompilujte packer pomocou vim príkazu `:PackerCompile`
- nainštalujte všetky pluginy pomocou vim príkazu `:PackerSync`
- reštartujte editor neoVim

## Doplňujúce informácie

***Language servery*** 
- Language servery pre jazyky **C**, **C++**, **Lua**, **Python**, **Markdown** by sa po opetovnom spustení editora mali automaticky nainštalovať pomcou pluginu **[lsp-installer][lsp_installer_link]**.
- Skontrolujte, či sú language servery nainštalované pomocou vim príkazu `:LspInstallInfo`
- Pre pridanie ďalších language serverov odporúčam pozrieť dokomentáciu k pluginu **[lsp-installer][lsp_installer_link]**, môžte si ju zobrazit aj priamo v editore napríklad príkazom `:h nvim-lsp-installer-quickstart`
- Konfiguračný súbor pre **[lsp-installer][lsp_installer_link]** sa nachádza **[tu][lsp_installer_config_file]**

***Klávesové skratky***
- Klávesové skratky pre **editor/pluginy** si môžete pozriet v **[tomto][keybinds_config_file]** súbore
- pri akejkoľvek nejasnosti si treba pozrieť dokumentáciu k pluginu, pre ktorý je klávesová skratka určená
