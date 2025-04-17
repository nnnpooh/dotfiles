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

# Git config
git config --global user.email "nnnpooh@gmail.com"; git config --global user.name "Nirand Pisutha-Arnond"

# Install PSFzf, PSReadLine
Install-Module -Name PSFzf, PSReadLine -Force

# Oh-my-posh
choco install oh-my-posh
$env:Path += ";$env:LOCALAPPDATA\Programs\oh-my-posh\bin"
oh-my-posh font install meslo
# See oh-my-posh.md

# Create powershell profile
New-Item -Path $PROFILE -Type File -Force
copy-item powershell_profile.ps1 $profile

# Warp
winget install Warp.Warp

# Apps to get start with settings
choco install googlechrome --ignore-checksums -y
choco install joplin -y

# Programing
choco install nvm -y
nvm install 22
nvm use 22

choco install vscode
# If the prompt in VSCode integrated terminal displays weird ANSI escape code, see this solution: https://github.com/microsoft/vscode/issues/211922#issuecomment-2162554431

choco install python312 -y
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
uv venv
uv pip install jupyterlab ipykernel pandas matplotlib seaborn openpyxl ruff notebook
# In VSCode after install Python Extension, add this in the settings
#"python.venvPath": "~"

# WSL and Docker
wsl --install -d Ubuntu
wsl --set-default Ubuntu
choco install docker-desktop -y

# Applications
choco install -y googledrive winrar onecommander screenpresso dbeaver obs-studio postman sumatrapdf.install pdf24 ccleaner zoom notepadplusplus.install vlc.install discord treesizefree
choco install -y line syncbackfree --ignore-checksums
choco install obsidian -y
choco install traffic-monitor -y
choco install mendeley-reference-manager -y 
choco install gimp inkscape -y
choco install golang -y

# Fonts
choco install nerd-fonts-hack
choco install nerd-fonts-jetbrainsmono

# Wezterm
choco install wezterm

# NVIM
cd $env:USERPROFILE/appdata/local
git clone git@github.com:nnnpooh/kickstart.nvim.git nvim
cd nvim
git checkout -t origin/nr 

# App not working 
# one drive
# team

