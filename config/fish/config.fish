alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias la='ls -la'
alias l="ls -laFGgohq"
alias fsh='vim ~/.config/fish/'
alias vrc='vim ~/.vimrc'
alias tmc='vim ~/.tmux.conf'
alias gco='git checkout'
alias gs='git status'
alias ga='git add'
alias t='todolist'
alias nats="docker run -d -p 4222:4222 -p 6222:6222 -p 8222:8222 nats:latest"
alias vim=nvim
alias fuck_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
status --is-interactive; and source (rbenv init -|psub)
status --is-interactive; and source (pyenv init -|psub)
set -x ERL_AFLAGS "-kernel shell_history enabled"
export NNN_TMPFILE="/tmp/nnn"
function n --description 'support nnn quit and change directory'
        nnn $argv

        if test -e $NNN_TMPFILE
                source $NNN_TMPFILE
                rm $NNN_TMPFILE
        end
end
