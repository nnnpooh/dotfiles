# Powershell Core
choco install powershell-core --version 7.4.2

# Create powershell profile
New-Item -Path $PROFILE -Type File -Force

# Oh-my-posh
choco install oh-my-posh
$env:Path += ";C:\Users\user\AppData\Local\Programs\oh-my-posh\bin"

# zoxide and fzf (activation script is included in powershell profile)
choco install zoxide
choco install fzf

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
