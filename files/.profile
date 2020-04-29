[ -f /etc/profile ] && source /etc/profile

alias '..'='cd ..; '
alias '...'='cd ../..; '
alias g='grep -i -E '
alias h='helm '
alias i='sudo systemctl '
alias j='sudo journalctl '
alias k='kubectl '
alias ke='kubectl exec -it '
alias kev='kubectl get events --sort-by=.metadata.creationTimestamp '
alias kg='kubectl get service,deploy,statefulset,po,pv '
alias kl='kubectl logs '
alias l='ls -lFh '
alias r='rsync -rvz --progress '
alias s='sudo '

export PS1='\u@\h \w \$ '
export PS2='>'
export PAGER=less
export MOSH_SERVER_NETWORK_TMOUT=180
export MOSH_SERVER_SIGNAL_TMOUT=180

export EDITOR=vim
if [ -f /usr/bin/nvim ] || [ -f /usr/local/bin/nvim ]; then
  alias vim='nvim '
  export EDITOR=nvim
fi

if [ -e ~/.ssh/ssh_auth_sock ]; then
  export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
fi

if [ -d ~/workspace/go ]; then
  export GOPATH="$HOME/workspace/go"
else
  export GOPATH="$HOME/go"
fi
export PATH="$GOPATH/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/mingw64/bin"
