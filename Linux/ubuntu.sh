# Update
sudo apt-get update -y
sudo apt-get upgrade -y

# Fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update -y
sudo apt-get install fish -y

# OMF
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install agnoster

# Change shell
chsh -s /usr/bin/fish

# Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Node (Install before NVIM or else LSP won't work)
fisher install jorgebucaran/nvm.fish
nvm install 21
nvm use 21

# ZOxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Neovim
# Turn out that ubuntu apt-get get the latest unstable build which break Mason 0.10.
# sudo add-apt-repository ppa:neovim-ppa/unstable -y
# sudo apt update -y
# sudo apt install make gcc ripgrep unzip git neovim -y


sudo apt-get install make gcc ripgrep unzip git -y
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
mkdir -p $HOME/local/nvim
cd $HOME && git clone https://github.com/neovim/neovim
# git checkout stable
cd $HOME/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
make CMAKE_INSTALL_PREFIX=$HOME/local/nvim install

# Neovim config
cd $HOME & git clone git@github.com:nnnpooh/kickstart.nvim.git $HOME/.config/nvim
cd $HOME/.config/nvim & git checkout -t origin/nr

# Fonts
# cd ~/
# wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
# wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
# mv PowerlineSymbols.otf ~/.local/share/fonts/
# sudo fc-cache -vf ~/.local/share/fonts/
# mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/


# cd ~/
# git clone https://github.com/lxbrtsch/Menlo-for-Powerline.git powerline
# cd ~/powerline
# cp "Menlo for Powerline.ttf" ~/.fonts
# sudo fc-cache -vf ~/.fonts


# cd ~/
# wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.0/Hack.zip
# sudo mkdir /usr/local/share/fonts/Hack
# sudo unzip Hack.zip -d /usr/local/share/fonts/Hack/
# sudo fc-cache -fv
# set -U theme_nerd_fonts yes




