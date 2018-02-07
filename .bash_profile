export EDITOR=vim

# Setup Golang
export GOPATH=$HOME/go

# Bake autocompletion
_bake () {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local tasks="$(bake | grep -v BAKEFILE | grep '^  ' | sed 's/^  //g' | cut -f1 -d' ')"
  COMPREPLY=( $(compgen -W "$tasks" -- $cur) )
}
complete -F _bake bake

# Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Enable colors in the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

