export PATH=$HOME/bin:$HOME/.dotnet/tools:/usr/local/bin:$HOME/.local/bin:$HOME/.dotnet:$HOME/.stack/global-project/:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

set -o vi

source /usr/share/doc/fzf/examples/key-bindings.zsh

source /usr/share/doc/fzf/examples/completion.zsh

if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi
