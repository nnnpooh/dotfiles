# Setup Oh My Posh in WSL
sudo apt-get install zip -y
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install meslo

#Put this in .profile
eval "$(oh-my-posh init bash --config $HOME/.cache/oh-my-posh/themes/catppuccin.omp.json)"