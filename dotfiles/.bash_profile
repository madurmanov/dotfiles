if [ -f ~/.bashrc ] ; then
  source ~/.bashrc
fi

DEFAULT_USER=`whoami`
PROMPT_DIRTRIM=3

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PATH="/usr/local/bin:$PATH"
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

alias sbash="source ~/.bash_profile"
alias c="clear"
alias e="emacs -nw -Q"
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
alias menuBarShowAdobe="launchctl load -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist"
alias menuBarHideAdobe="launchctl unload -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist"

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

alias gsw="git sw"
alias gss="git ss"
alias gdd="git dd"
alias gdi="git di"
alias gbr="git br"
alias gbrd="git brd"
alias gcm="git cm"
alias gcmm="git cmm"
alias gcma="git cma"
alias gco="git co"
alias gcob="git cob"
alias gmr="git mr"
alias gph="git ph"
alias gpl="git pl"
alias gfe="git fe"
alias gsh="git sh"
alias gshl="git shl"
alias gshd="git shd"
alias gsha="git sha"
alias gcp="git cp"
alias glg="git lg"
