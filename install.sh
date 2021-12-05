"Update system"
sudo apt update
sudo apt upgrade

echo "Install nix"
curl -L https://nixos.org/nix/install | sh

echo "Source nix"
. ~/.nix-profile/etc/profile.d/nix.sh

echo "Install packages"
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.direnv


echo "Stow packages"
stow git
stow zsh
stow nvim

echo "Add ush to login shells"
command -v zsh | sudo tee -a /etc/shells

echo "Use zsh as default shell"
sudo chsh -s $(which zsh) $USER

echo "Bundle zsh plugins"
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

exit
