if [ -f ~/.bashrc ] ; then
  source ~/.bashrc
fi

DEFAULT_USER=`whoami`
PROMPT_DIRTRIM=3

export PATH="/usr/local/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PS1="\033[34m\w\033[0m $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR="/usr/local/bin/emacs"
export BLOCKSIZE=1k

if [ -f /usr/local/share/gitprompt.sh ] ; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_THEME=Custom
  GIT_PROMPT_THEME_FILE=~/.gitprompt
  . /usr/local/share/gitprompt.sh
fi

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Git branch bash completion
if [ -f ~/.gitcompletion ] ; then
  . ~/.gitcompletion

  # Add git completion to aliases
  __git_complete gco _git_checkout
  __git_complete gbrd _git_branch
fi

alias sbash="source ~/.bash_profile"
alias c="clear"
alias e="emacs -nw"
alias l="ls -lhAF"
alias d="cd"
alias b="cd .."
alias t="touch"
alias f="open -a Finder ./"
alias tr="tree -a"
alias mv="mv -iv"
alias cp="cp -ivr"
alias rm="rm -ivr"
alias mk="mkdir -p"
alias nr="npm run"
alias et="sudo rm -vrf ~/.Trash/*"
alias nf="echo $(ls -1 | wc -l)"
alias qf="find . -name"
alias ip="curl ip.appspot.com"
alias opensoc="lsof -i"
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"
alias finderShowHidden="defaults write com.apple.finder ShowAllFiles TRUE"
alias finderHideHidden="defaults write com.apple.finder ShowAllFiles FALSE"

mkd () {
  mkdir -p "$1" && cd "$1"
}

ql () {
  qlmanage -p "$1" >& /dev/null
}

ftb () {
  cat $1 | pbcopy
}

zipf () {
  local archive=$1
  local archive_length=${#archive}
  if [ "${archive:$((archive_length-1)):1}" = "/" ] ; then
    archive=${archive::$((archive_length-1))}
  fi
  zip -r "$archive.zip" "$1"
}

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1    ;;
      *.tar.gz)  tar xzf $1    ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar e $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xf $1     ;;
      *.tbz2)    tar xjf $1    ;;
      *.tgz)     tar xzf $1    ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *)         echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

unode () {
  sudo npm cache clean -f
  sudo npm install -g n
  sudo n stable
}

alias gbd="git bd"
alias gbl="git bl"
alias gbr="git br"
alias gbrd="git brd"
alias gcc="git shortlog | grep -E '^[ ]+\w+' | wc -l"
alias gccm="git shortlog | grep -E '^[^ ]'"
alias gcl="git cl"
alias gcm="git cm"
alias gcma="git cma"
alias gcme="git cme"
alias gcmm="git cmm"
alias gco="git co"
alias gcob="git cob"
alias gcp="git cp"
alias gdd="git dd"
alias gdi="git di"
alias gdic="git dic"
alias gfe="git fe"
alias glg="git lg"
alias glga="git lga"
alias gmr="git mr"
alias gph="git ph"
alias gphf="git phf"
alias gphu="git phu"
alias gpl="git pl"
alias grb="git rb"
alias grbc="git rbc"
alias grbi="git rbi"
alias grs="git rs"
alias gsh="git sh"
alias gsha="git sha"
alias gshd="git shd"
alias gshl="git shl"
alias gss="git ss"
alias gsw="git sw"
