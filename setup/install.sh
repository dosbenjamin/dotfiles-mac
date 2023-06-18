# Create symlinks
## Git
ln ~/Workspace/dotfiles-mac/config/.gitignore_global ~
ln ~/Workspace/dotfiles-mac/config/.gitconfig ~

## Mac
ln ~/Workspace/dotfiles-mac/config/.hushlogin ~

## Homebrew
ln ~/Workspace/dotfiles-mac/config/Brewfile ~

## Wrap
mkdir -p ~/.warp/themes
ln ~/Workspace/dotfiles-mac/config/.warp/themes/ayu_mirage.yaml ~/.warp/themes

## SSH
mkdir ~/.ssh
ln ~/Workspace/dotfiles-mac/config/.ssh/config ~/.ssh

## Fish
mkdir -p ~/.config/fish
ln ~/Workspace/dotfiles-mac/config/.config/fish/config.fish ~/.config/fish

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
BREW_PREFIX=$(brew --prefix)

## Update
brew update
brew upgrade

## Install
brew install bundle
brew bundle

## Cleanup
brew cleanup
brew cleanup -s

# PNPM
curl -fsSL https://get.pnpm.io/install.sh | sh -
pnpm env use --global lts

# Fish
## Default
sudo sh -c 'echo /usr/local/bin/fish >> /etc/shells'
chsh -s /usr/local/bin/fish

## Oh My Fish
curl -L https://get.oh-my.fish | fish
omf install pure
