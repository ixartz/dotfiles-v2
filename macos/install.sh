# Install xcode command tools
xcode-select --install

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install brew application
brew install gh nvm trash tree httpie jq htop antigen fzf ripgrep

# Install Vim-plug manually install. Then, in Vim, run :PlugInstall

# Install Scm breeze installation
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
