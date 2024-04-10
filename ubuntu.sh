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

# Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish

# Change shell
chsh -s /usr/bin/fish


# Neovim
sudo apt install neovim


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




