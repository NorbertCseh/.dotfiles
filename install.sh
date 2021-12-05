echo "Updae system"
sudo apt update
sudo apt upgrade

echo "Install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Setup brew for bash"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc

echo "Install packages"
brew install \
    zsh \
    antibody \
    git \
    neovim \
    tmux \
    stow \
    yarn \
    fzf \
    ripgrep \
    bat \
    direnv \

echo "Add zsh to login shells"
command -v zsh | sudo tee -a /etc/shells

echo "Use zsh as default shell"
sudo chsh -s $(which zsh) $USER

echo "Stow packages"
stow git
stow zsh
stow nvim

echo "Setup brew for zsh"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc


echo "Bundle zsh plugins"
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sht
