if status --is-interactive
    set fish_greeting

    alias '..'='cd ..'
    alias '...'='cd ../..'
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

    set -gx PAGER less
    set -gx MOSH_SERVER_NETWORK_TMOUT 180
    set -gx MOSH_SERVER_SIGNAL_TMOUT 180

    set -gx EDITOR vim
    if test -f /usr/bin/nvim; or test -f /usr/local/bin/nvim
      set -gx EDITOR nvim
      alias vim='nvim'
    end

    if test -e ~/.ssh/ssh_auth_sock
      set -gx SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
    end

    if test -d ~/workspace/go
      set -gx GOPATH "$HOME/workspace/go"
    else
      set -gx GOPATH "$HOME/go"
    end

    set -gx PATH /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /bin /sbin
    if test -d $GOPATH/bin
      set -gx PATH $GOPATH/bin $PATH
    end
end
