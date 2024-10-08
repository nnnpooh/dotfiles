# ----- On Powershell 5
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine   

# Choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Powershell Core
choco install powershell-core --version 7.4.3

# ----- On Powershell Core
choco install googlechrome --ignore-checksums

# Create powershell profile
New-Item -Path $PROFILE -Type File -Force

# Oh-my-posh
choco install oh-my-posh
$env:Path += ";$env:LOCALAPPDATA\Programs\oh-my-posh\bin"

# zoxide and fzf (activation script is included in powershell profile)
choco install zoxide
choco install fzf

# NVIM
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
choco install nvm
nvm install 21
nvm use 21

# Fonts
choco install nerd-fonts-hack
choco install nerd-fonts-jetbrainsmono

# Wezterm
choco install wezterm

# Nvim
cd $env:USERPROFILE/appdata/local
git clone git@github.com:nnnpooh/kickstart.nvim.git nvim
cd nvim
git checkout -t origin/nr 

# Application (add -y to skip confirmation)
choco install vscode
# If the prompt in VSCode integrated terminal displays weird ANSI escape code, see this solution: https://github.com/microsoft/vscode/issues/211922#issuecomment-2162554431

choco install docker-desktop
choco install golang
choco install python311
# Github CLI
choco install gh
choco install winrar
# choco install freecommander-xe.install --ignore-checksums
chco install onecommander
choco install screenpresso
choco install dbeaver
choco install obs-studio
choco install postman
choco install sumatrapdf.install
choco install pdf24
choco install ccleaner
choco install line
choco install zoom
choco install inkscape
choco install googledrive
choco install notepadplusplus.install
choco install treesizefree
choco install vlc.install
choco install gimp
choco install discord
choco install mendeley-reference-manager
choco install traffic-monitor
choco install joplin
choco install obsidian
choco install treesizefree
choco install syncbackfree
# App not working 
# one drive
# team
#
# Install PSFzf
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex # irm == invoke web request, ie download this file. iex == invoke expression, ie, evaluate the command.
Install-Module -Name PSFzf
