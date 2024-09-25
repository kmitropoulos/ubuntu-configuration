# configurations that are used to set up an ubuntu installation with my preferences
## (has not been tested fully yet)

# nvim-conf
config files and instalation for neovim
Created following the ThePrimeagen tutorial: https://www.youtube.com/watch?v=w7i4amO_zaE&t=476s&ab_channel=ThePrimeagen

# Setup
1. Move nvim folder to:
    - ~/.config/ (Linux)
    - %userprofile%\AppData\Local\ (Windows)
2. install packer.nvim
    - https://github.com/wbthomason/packer.nvim
3. from nvim, source the lua/frenzy/packer.lua file
    - :luafile % (if inside the file)
4. run :PackerSync
5. restart nvim

### Tested with neovim v0.10.0

# HackNerdFonts are used from https://www.nerdfonts.com/font-downloads
