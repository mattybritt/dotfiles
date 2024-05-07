export EDITOR='nvim'

alias k=kubectl
alias '?'=duck
alias '??'=google
alias '???'=bing
alias v=vi
alias vi=vim
alias vim=nvim
alias g=git
alias ..="cd .."

bind -x '"\C-f":"tmux-sessionizer"'

#list
alias lsa="exa -la"
alias ls='exa'
alias ls='exa --color=auto'
alias la='exa -a'
alias ll='exa -alFh'
alias l='exa'
alias l.="exa -A | egrep '^\.'"
alias listdir="exa -d */ > list"

#fix obvious typo's
alias cd..='cd ..'
alias pdw='pwd'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#free
alias free="free -mt"

#continue download
alias wget="wget -c"

#userlist
alias userlist="cut -d: -f1 /etc/passwd | sort"

#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#check cpu
alias cpu="cpuid -i | grep uarch | head -n 1"

#search content with ripgrep
alias rg="rg --sort path"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="reboot"

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#git
alias rmgitcache="rm -r ~/.cache/git"
alias grh="git reset --hard"
alias gpom="git push origin master"

