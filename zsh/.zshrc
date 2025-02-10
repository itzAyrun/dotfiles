ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Add aliases
alias nv='nvim'
alias ll='ls -al'
alias cls='clear'
alias tmux='tmux -u'
alias vencord-update='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias arch-rankmirrors='sudo reflector --verbose -c IN --protocol https --sort rate --latest 50 --download-timeout 5 --save /etc/pacman.d/mirrorlist'

# Add go bin directory to path
export PATH="$HOME/go/bin:$PATH"

# Configure starship
eval "$(starship init zsh)"

export PATH=$PATH:/home/ayrun/.spicetify
