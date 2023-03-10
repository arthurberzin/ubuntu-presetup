echo "================================================================================================================"
echo "============================================== Install nvim   =================================================="
echo "================================================================================================================"
source $HOME/.profile
source "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install -f --HEAD neovim
#brew install -f neovim

#curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage &&
#chmod u+x nvim.appimage &&
#./nvim.appimage --appimage-extract
#./squashfs-root/AppRun --version
#sudo mv squashfs-root /
#sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

echo "============================backup conf =======================================#"
mv ~/.config/nvim ~/.config/nvim.bak

mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

echo "============================ Get Astrivim =======================================#"
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# sudo rm -rf ~/.config/nvim

echo "============================ Setting Up =======================================#"
#https://astronvim.github.io/#-setup
mkdir ~/.config/nvim/lua/user/
curl -o ~/.config/nvim/lua/user/init.lua https://raw.githubusercontent.com/arthurberzin/ubuntu-presetup/main/init.lua

#echo "========================= LspInstall  ==================================="
#https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
# nvim +':LspInstall pyright angularls arduino_language_server asm_lsp astro clangd csharp_ls omnisharp cssls dockerls eslint graphql html jsonls tsserver sumneko_lua marksman sqls tailwindcss terraformls lemminx yamlls'

#echo "========================= TsInstall  ==================================="
#nvim-treesitter
#https://astronvim.github.io/#install-language-parser
#https://github.com/nvim-treesitter/nvim-treesitter
#https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
# nvim +':TSInstall bash c c_sharp cpp css dockerfile git_rebase gitattributes gitcommit gitignore javascript html json lua markdown meson python sql terraform typescript yaml yang vim tsx'

#echo "========================= DapInstall  ==================================="
#https://github.com/ravenxrz/DAPInstall.nvim#list-of-debuggers
# nvim +':DapInstall ccppr_vsc lua dnetcs chrome jsnode markdown' +qa

#echo "========================= PackerSync  ==================================="

#nvim +':PackerSync'

#echo "========================= AstroUpdate  ==================================="
#nvim +':AstroUpdate'

echo "-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
                 Please run < nvim +':PackerSync' > to start install all plugins.
           After it please run < nvim +':Mason' > and install all needed 'Dap' servers.
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------"
