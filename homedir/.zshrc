# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="duellj"
# export ZSH_THEME="agnoster"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colorize compleat dirpersist autojump git gulp history cp)

source $ZSH/oh-my-zsh.sh

source /usr/local/opt/nvm/nvm.sh --no-use

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your pre running scripts
#ZSH_THEME="bira"
unsetopt correct
neofetch


# run fortune on new terminal :)
# fortune
# run personal aliases
alias ls='exa -lFa'
alias dev='cd ~/code'
alias pingpi='ping 192.168.10.175'
alias pingsrv='ping 192.168.10.80'
alias pingmm='ping 192.168.1.178'
alias dev="cd ~/code/"
alias cp="cp -r"
alias rm="sudo rm -rf"
alias up="cd .."
alias pis="ssh -p 5555 d@192.168.10.175"
alias dsrv="ssh -p 5555 d@192.168.10.80"
alias mm="ssh mm@192.168.1.100"
alias cat="bat"
#docker
alias d="docker"
alias dp="docker ps -a"
alias ds="docker stop "
alias dr="docker rm "
alias di="docker images"
alias dir="docker rmi "
alias dc='docker-compose'
alias dv='docker volume'
alias dn='docker network'

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval "$(starship init zsh)"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/d/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/d/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/d/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/d/google-cloud-sdk/completion.zsh.inc'; fi
