sudo apt update && sudo apt upgrade -y;
sudo apt install sudo curl vim dnsutils git -y;
sudo apt install unzip zoxide tmux zsh -y
zsh --version
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Add zsh-autosuggestions zsh-syntax-highlighting zoxide to plugins in .zshrc
sed -i 's/plugins\s*=\s*(.*)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting zoxide virtualenv)/g' ~/.zshrc

# Fix Tmux prompt display character
echo "\nexport LANG=C.UTF-8" >> ~/.zshrc
echo "export LC_ALL=C.UTF-8" >> ~/.zshrc
echo "\nexport VIRTUAL_ENV_DISABLE_PROMPT=1" >> ~/.zshrc

# Change to theme that show hostname
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="gnzh"/' ~/.zshrc
source ~/.zshrc

# Tmux : Add delay to prevent character leaking
touch ~/.tmux.conf && grep -qxF 'set -s escape-time 10' ~/.tmux.conf || echo 'set -s escape-time 10' >> ~/.tmux.conf