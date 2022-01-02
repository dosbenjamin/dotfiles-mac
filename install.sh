# Install Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install command-line tools and softwares using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install binaries and softwares.
brew bundle

# Remove outdated versions from the cellar.
brew cleanup
brew cleanup -s

# Remove .zshrc file created by Oh My Zsh installation.
rm ~/.zshrc

# Create symlinks for files needed in ~.
ln -sv ~/Personal\ Workspace/dotfiles-mac/.zshrc ~
ln -sv ~/Personal\ Workspace/dotfiles-mac/.gitconfig ~
ln -sv ~/Personal\ Workspace/dotfiles-mac/ssh-config ~/.ssh/config
ln -sv ~/Personal\ Workspace/dotfiles-mac/.hushlogin ~
ln -sv ~/Personal\ Workspace/dotfiles-mac/.curlrc ~
ln -sv ~/Personal\ Workspace/dotfiles-mac/.wgetrc ~

# Install Oh My Zsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
