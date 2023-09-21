MAILCHECK=0
export LC_ALL=en_US.UTF-8

# ZSH setup
export ZSH="/Users/marc/.oh-my-zsh"
ZSH_THEME="marc"
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_PREFIX=[
KUBE_PS1_SUFFIX=]
KUBE_PS1_CTX_COLOR=yellow
KUBE_PS1_NS_COLOR=cyan
#PS1=""
plugins=(
#  zsh-syntax-highlighting
  git
  kubectl
  kube-ps1
)
source $ZSH/oh-my-zsh.sh
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# If you come from bash you might have to change your $PATH.
#export PATH=$PATH:$HOME/bin:/usr/local/bin
#export PATH=$PATH:~/Library/Python/2.7/bin
#export PATH=$PATH:~/go/bin

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
REPORTTIME=8

setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

export GIT_USERNAME=marcdk

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Golang 
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
#export GOSUMDB=off
#export GO111MODULE=on

# Aliases
alias youtube-mp3-dl="youtube-dl -i -x --embed-thumbnail --audio-format mp3 "
alias youtube-iphone-dl="youtube-dl -i -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --add-metadata --write-description --merge-output-format mp4 "

unalias ls
alias ls="/opt/homebrew/opt/coreutils/libexec/gnubin/ls --color -h --group-directories-first"
alias ll="ls -l"
alias la="ls -al"
#alias -g no='2> /dev/null > /dev/null'
alias curl="noglob curl"

alias k="kubectl"
alias kns="kubens"
alias kctx="kubectx"

export W=~/workspace

# Direnv
eval "$(direnv hook zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "\$NVM_DIR/bash_completion"

#export GH_REVIEWERS='...'
#alias ghpr='gh pr create --reviewer $GH_REVIEWERS'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
