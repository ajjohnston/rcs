export EDITOR=vim

# Setup Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Enable colors in the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Perform an `ls` after `cd`
function cd {
  builtin cd "$@" && ls -F
}

alias ll="ls -la"

# Prettier branching view for git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Add autojump to bash
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Show full path in terminal
PS1="\w$ "
