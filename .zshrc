# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH
export PATH="$PATH:$HOME/.npm-global/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

source ~/antigen.zsh

antigen use oh-my-zsh

# OMZ Plugins 
antigen bundle git
antigen bundle aliases
antigen bundle aws
antigen bundle git
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle composer
#antigen bundle docker
antigen bundle fzf
antigen bundle common-aliases
antigen bundle alias-finder
antigen bundle zsh-interactive-cd

# Others
antigen bundle voronkovich/symfony-complete.plugin.zsh
antigen bundle "greymd/docker-zsh-completion"
antigen bundle prgTW/symfony.plugin.zsh
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle djui/alias-tips
antigen bundle agkozak/zsh-z
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# P10K
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
[[ ! -f ~/.zsh_alias.zsh ]] || source ~/.zsh_alias.zsh

# Mixed
/usr/bin/keychain -q --nogui $HOME/.ssh/id_rsa

source $HOME/.keychain/$HOST-sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

