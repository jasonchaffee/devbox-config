# Source global definitions
if [[ -f /etc/zshrc ]]; then
	. /etc/zshrc
fi

 # Source .profile, if it exists
 if [[ -f ~/.profile ]]; then
     . ~/.profile
 fi

 # Source .zsh files, if it exists
 if [[ -d ~/.zsh ]]; then
     . ~/.zsh/antigen.zsh
     . ~/.zsh/checks.zsh
     . ~/.zsh/alias.zsh
     . ~/.zsh/functions.zsh
     . ~/.zsh/exports.zsh
 fi

# Initialize pyenv
if command -v pyenv >/dev/null 2>&1; then eval "$(pyenv init -)"; fi

# Initialize rbenv
if command -v rbenv >/dev/null 2>&1; then eval "$(rbenv init -)"; fi

# Source nvm
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"

path_append ${HOME}/bin
