# Powershell Core
choco install powershell-core --version 7.4.2

# zoxide and fzf
chocho install zoxide
choco install fzf

# Create powershell profile
New-Item -Path $PROFILE -Type File -Force

# NVIM
choco install -y neovim git ripgrep wget fd unzip gzip mingw make

# Fonts
choco install nerd-fonts-hack

# Wezterm
choco install wezterm

# Nvim
cd $env:USERPROFILE/appdata/local
git clone git@github.com:nnnpooh/kickstart.nvim.git nvim
cd nvim
git checkout -t origin/nr 
