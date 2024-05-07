source ~/.config/antigen.zsh

# Load the virtualenv and virtualenvwrapper plugins.
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# Load the autojump plugin.
. /usr/share/autojump/autojump.sh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle autojump
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle extract
antigen bundle git
antigen bundle nmap
antigen bundle npm
antigen bundle thefuck
antigen bundle virtualenv
antigen bundle virtualenvwrapper

# Bundles from zsh-users repos.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# Initialize the NVM bundle.
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
antigen bundle lukechilds/zsh-nvm

# Bundles from other repos.
antigen bundle mrjohannchang/zsh-interactive-cd

# Load the theme.
antigen theme robbyrussell

# Apply all settings to Antigen.
antigen apply

# Launch Starship prompt.
eval "$(starship init zsh)"

# Add pipx to PATH
export PATH="$PATH:/home/a/.local/bin"

# Add Go to PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# Configure Aliases
alias i='weechat'
