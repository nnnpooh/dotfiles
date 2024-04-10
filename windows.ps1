# NVIM
choco install -y neovim git ripgrep wget fd unzip gzip mingw make

# Fonts
choco install nerd-fonts-hack

cd $env:USERPROFILE/appdata/local
git clone git@github.com:nnnpooh/kickstart.nvim.git nvim
cd nvim
git checkout -t origin/nr 