if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
  alias ll "exa -l -g --icons --header"
  alias lla "ll -a --header"
end

alias fishedit "vim ~/.config/fish/"
alias vimedit "vim ~/.vimrc"
alias zshrc "vim ~/.zshrc"


alias ide "tmux split-window -v -p 30 && tmux split-window -h -p 66 && tmux split-window -h -p 50"
alias term "tmux split-window -h && tmux split-window -v"

alias v "nvim"

alias art "artisan"
alias run "npm run dev"
alias serve "sail artisan serve"
alias queue "sail artisan queue:work"

alias gpsh "git push"
alias gpo "git pull origin"
alias gco "git checkout"
alias g "git"

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'


alias dockel "docker-compose exec app php artisan"
alias docker-refresh "docker-compose build && docker-compose up -d"


function nvm
   bass source $HOME/.nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
