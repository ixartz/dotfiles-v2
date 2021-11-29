# Load Homebrew command cli
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load Antigen zsh
source /opt/homebrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load powerlevel10k theme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
