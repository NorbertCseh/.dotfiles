# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# setup brew
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(home/linuxbrew/.linuxbrew/bin/brew shellenv)"  /

# install packages with brew
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
  npm \
  node

# stow
stow git
stow zsh
stow nvim

# add zsh to valid login shells 
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
