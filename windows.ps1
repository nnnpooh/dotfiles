# ----- On Powershell 5
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine   

# Choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Scoop (no admin)
irm get.scoop.sh | iex # irm == invoke web request, ie download this file. iex == invoke expression, ie, evaluate the command.

# Powershell Core
choco install -y powershell-core 

# Tools
choco install -y git ripgrep wget fd unzip gzip mingw make fzf bat gh zoxide

# Install PSFzf, PSReadLine
Install-Module -Name PSFzf, PSReadLine -Force

# Create powershell profile
New-Item -Path $PROFILE -Type File -Force
copy-item powershell_profile.ps1 $profile



# Oh-my-posh
choco install oh-my-posh
$env:Path += ";$env:LOCALAPPDATA\Programs\oh-my-posh\bin"
oh-my-posh font install meslo

# Node
nvm install 22
nvm use 22

# Google Chrome
choco install googlechrome --ignore-checksums -y

# Application (add -y to skip confirmation)
choco install vscode
# If the prompt in VSCode integrated terminal displays weird ANSI escape code, see this solution: https://github.com/microsoft/vscode/issues/211922#issuecomment-2162554431

choco install docker-desktop -y
choco install golang -y
choco install python312 -y
choco install winrar -y
choco install onecommander -y
choco install screenpresso -y
choco install dbeaver -y
choco install obs-studio -y
choco install postman -y
choco install sumatrapdf.install -y
choco install pdf24 -y
choco install ccleaner -y
choco install line -y
choco install zoom -y
choco install inkscape -y
choco install googledrive -y
choco install notepadplusplus.install -y
choco install treesizefree -y
choco install vlc.install -y
choco install gimp -y
choco install discord -y
choco install mendeley-reference-manager -y 
choco install traffic-monitor -y
choco install joplin -y
choco install obsidian -y
choco install treesizefree -y
choco install syncbackfree -y

# Fonts
choco install nerd-fonts-hack
choco install nerd-fonts-jetbrainsmono

# Wezterm
choco install wezterm

# NVIM
choco install nvm
cd $env:USERPROFILE/appdata/local
git clone git@github.com:nnnpooh/kickstart.nvim.git nvim
cd nvim
git checkout -t origin/nr 

# App not working 
# one drive
# team

