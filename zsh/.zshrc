# Load Homebrew command cli
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load Antigen zsh
source /opt/homebrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle sudo
antigen bundle web-search
antigen bundle macos # add 'pfd' alias

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

# Load Scm breeze
[ -s "/Users/ixi/.scm_breeze/scm_breeze.sh" ] && source "/Users/ixi/.scm_breeze/scm_breeze.sh"

# Default application
if [ -x "`which vim 2> /dev/null`" ]; then
    export EDITOR='vim'
elif [ -x "`which emacs 2> /dev/null`" ]; then
    export EDITOR='emacs'
fi

if [ -x "`which most 2> /dev/null`" ]; then
    export PAGER=most
elif [ -x "`which less 2> /dev/null`" ]; then
    export PAGER=less
elif [ -x "`which more 2> /dev/null`" ]; then
    export PAGER=more
fi

# ZSH configuration
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs time newline)
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Enable context configuration
unset POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='093'

# Functions
qfind() {
    find . -type f -exec grep -l $1 {} \;
}

gfind() {
    (cd ~/Project && rg -g '!{**/yarn.lock,**/package-lock.json}' $@)
}

gcom() {
    git com "$1"
    git push
}

gcoma() {
    git add -A
    git com "$1"
    git push
}

killPidFromPort() {
    kill $(lsof -t -i:$1)
}

# Alias
alias reload='source $HOME/.zshrc'

alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd.='cd ..'
alias c='cd ~/Projects'

alias ll='ls -larth'
alias la='ls -a'

alias rm='rmtrash'
alias cp='cp -i'
alias mv='mv -i'

alias diff='diff -u'
alias cqt='cat'

alias v='vim'

alias gp='git push'

alias tarbz2='tar cvjf'
alias untarbz2='tar xvjf'
alias readbz2='tar tjf'

alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'

alias clearDNS='sudo killall -HUP mDNSResponder'

alias blueOn='blueutil -p 1'
alias blueOff='blueutil -p 0'
alias blueDemonOff='sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport'
alias blueDemonOn='sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport'
alias wifiStatus='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I'
alias wifiOn='networksetup -setairportpower en0 on'
alias wifiOff='networksetup -setairportpower en0 off'
