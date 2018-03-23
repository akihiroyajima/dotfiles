# Path to your oh-my-zsh installation.
export LC_CTYPE="UTF-8"
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='ys'

plugins=(git)

# User configuration
export PATH=/usr/local/bin:$PATH
export MANPATH='/usr/local/man:$MANPATH'
source $ZSH/oh-my-zsh.sh

PATH=$HOME/.cabal/bin:$PATH

# ======================================================================
# General
# ======================================================================

# Directory
setopt MARK_DIRS
setopt auto_cd
function chpwd() { ls -F }
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Node Pacage Manager
# export PATH=/usr/local/share/npm/bin:$PATH

# Disable suspend in the Ctrl-y
stty dsusp undef

# ======================================================================
# Aliases
# ======================================================================

# Tmux
alias t='tmux'

# Docker
alias d='docker'
alias dc='docker-compose'

# Vagrant
alias v='vagrant'

# Ruby on Rails
# alias rails='bundle exec rails'
alias rake='bundle exec rake'
# alias cap='bundle exec cap'

# Dotfiles
alias dotfiles='cd ~/Development/dotfiles'

# Config
alias zshrc='vi ~/.zshrc'
alias zprofile='vi ~/.zprofile'
alias vimrc='vi ~/.vimrc'
alias gitconf='vi ~/.gitconfig'
alias tmuxconf='vi ~/.tmux.conf'
alias ohmyzsh='vi ~/.oh-my-zsh'

alias sourcezsh='source ~/.zshrc'
alias sourcevim='source ~/.vimrc'
alias sourcegit='source ~/.gitconfig'
alias sourcetmux='t source-file ~/.tmux.conf'

# Listing
alias la='ls -a'
alias ls='ls -GF'
alias ll='ls -la'

# Git
alias g='git'

## Branching
alias gbr='git branch'

## Checkout
alias gcod='git checkout develop'

## Show status
alias gs='git status'

## Diff
alias gd='git diff'
alias gds='git diff --staged'

## Staging
alias ga.='git add .'

## Committing
alias gcim='git commit -m'
alias gciam='git commit -am'

## Pushing
alias gshod='git push origin develop'
alias gsh='git push'
alias gshso='git push --set-upstream origin'

## Pulling
alias gll='git pull'
alias gllso='git pull --set-upstream origin'

## Merging
alias gm='git merge'
alias gmnf='git merge --no-ff'

## Fetching
alias gft='git fetch'
alias gfto='git fetch origin'

## Rebasing
alias grod='git rebase origin/develop'

## Stashing
alias gsts='git stash save'
alias gsta='git stash apply'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gsth='git stash show'
alias gstd='git stash drop'
alias gstc='git stash clear'

## Submodule
alias gsu='git submodule update --init --recursive'

# Git flow
alias gfi='git flow init'

## Feature
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias gffpsh='git flow feature publish'
alias gffpll='git flow feature pull'

## Release
alias gfrs='git flow release start'
alias gfrp='git flow release publish'
alias gfrf='git flow release finish'

## Hotfix
alias gfhs='git flow hotfix start'
alias gfhf='git flow hotfix finish'

# Tig
alias tiga='tig --all'

# SSH
alias ssh='TERM=xterm ssh'

# ======================================================================
# Tmux
# ======================================================================

function is_exists() { type "$1" >/dev/null 2>&1; return $?; }
function is_osx() { [[ $OSTYPE == darwin* ]]; }
function is_screen_running() { [ ! -z "$STY" ]; }
function is_tmux_runnning() { [ ! -z "$TMUX" ]; }
function is_screen_or_tmux_running() { is_screen_running || is_tmux_runnning; }
function shell_has_started_interactively() { [ ! -z "$PS1" ]; }
function is_ssh_running() { [ ! -z "$SSH_CONECTION" ]; }

function tmux_automatically_attach_session()
{
  if is_screen_or_tmux_running; then
    ! is_exists 'tmux' && return 1

    if is_tmux_runnning; then
      echo "${fg_bold[red]} _____ __  __ _   ___  __ ${reset_color}"
      echo "${fg_bold[red]}|_   _|  \/  | | | \ \/ / ${reset_color}"
      echo "${fg_bold[red]}  | | | |\/| | | | |\  /  ${reset_color}"
      echo "${fg_bold[red]}  | | | |  | | |_| |/  \  ${reset_color}"
      echo "${fg_bold[red]}  |_| |_|  |_|\___//_/\_\ ${reset_color}"
    elif is_screen_running; then
      echo "This is on screen."
    fi
  else
    if shell_has_started_interactively && ! is_ssh_running; then
      if ! is_exists 'tmux'; then
        echo 'Error: tmux command not found' 2>&1
        return 1
      fi

      if tmux has-session >/dev/null 2>&1 && tmux list-sessions | grep -qE '.*]$'; then
        # detached session exists
        tmux list-sessions
        echo -n "Tmux: attach? (y/N/num) "
        read
        if [[ "$REPLY" =~ ^[Yy]$ ]] || [[ "$REPLY" == '' ]]; then
          tmux attach-session
          if [ $? -eq 0 ]; then
            echo "$(tmux -V) attached session"
            return 0
          fi
        elif [[ "$REPLY" =~ ^[0-9]+$ ]]; then
          tmux attach -t "$REPLY"
          if [ $? -eq 0 ]; then
            echo "$(tmux -V) attached session"
            return 0
          fi
        fi
      fi

      if is_osx && is_exists 'reattach-to-user-namespace'; then
        # on OS X force tmux's default command
        # to spawn a shell in the user's namespace
        tmux_config=$(cat $HOME/.tmux.conf <(echo 'set-option -g default-command "reattach-to-user-namespace -l $SHELL"'))
        tmux -f <(echo "$tmux_config") new-session && echo "$(tmux -V) created new session supported OS X"
      else
        tmux new-session && echo "tmux created new session"
      fi
    fi
  fi
}
tmux_automatically_attach_session

source $HOME/.zshrc_export
