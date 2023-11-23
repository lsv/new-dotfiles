# Aliases
alias upgrade='sudo apt -qq update && sudo apt -qq dist-upgrade -y && sudo apt -qq autoremove -y && sudo apt -qq clean'
alias s='symfony'
alias c='composer'

if [ -x "$(command -v tldr)" ]; then
        alias help='tldr'
fi
