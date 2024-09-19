if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
  alias ll "exa -l -g --icons --header"
  alias lla "ll -a --header"
end

alias fishedit "vim ~/.config/fish/"
alias tmuxedit "vim ~/.tmux.conf"
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

alias gcp "git cherry-pick"
alias gcpc "git cherry-pick --continue"

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sat "sail artisan tinker"
alias sa "sail artisan"


alias dockel "docker-compose exec app php artisan"
alias docker-refresh "docker-compose build && docker-compose up -d"

alias tllog "tail -f storage/logs/laravel.log"

function tlog
    tail -f storage/logs/$argv
end

function nvm
   bass source $HOME/.nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

alias forge-cw-p "ssh -L 3361:172.105.184.81:3306 forge@172.105.184.81"
alias forge-ortho-p "ssh -L 3361:194.195.254.186:3306 forge@194.195.254.186"
alias forge-eq-p "ssh -L 3362:172.105.171.241:3306 forge@172.105.171.241"
alias forge-staging "ssh -L 3345:172.105.185.234:3306 forge@172.105.185.234"
alias forge-ccoffee-staging "ssh -L 3346:194.195.251.203:3306 forge@194.195.251.203"


# Herd injected PHP binary.
export PATH="/Users/kennethsolomon/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/kennethsolomon/Library/Application Support/Herd/config/php/82/"

# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/kennethsolomon/Library/Application Support/Herd/config/php/74/"
