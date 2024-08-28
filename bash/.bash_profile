[ -r ~/.bash_env ] && source ~/.bash_env
[ -r ~/.bashrc ] && source ~/.bashrc
[ -r ~/.my_bashrc ] && source ~/.my_bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
