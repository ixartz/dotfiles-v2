# Load Homebrew command cli
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load Antigen zsh
source /opt/homebrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle sudo
antigen bundle web-search

# Syntax non-core bundle
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load powerlevel10k theme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ZSH configuration
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
