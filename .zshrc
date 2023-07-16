# customize command line prompt 
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

# customize ls colors 
export CLICOLOR=1
export LSCOLORS=FxexcxdxBxegedabagacad # https://geoff.greer.fm/lscolors/ 

# print git aliases
alias gitalias="grep 'alias.*git' ~/.zshrc | grep -v 'gitaliases' | cut -c 7-"

# general aliases
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="cd ~/.config/nvim && nvim ."
alias ll="ls -al"

# git
alias gst="git status" 
alias gf="git fetch"
alias gb="git branch"
alias gfo="git fetch origin"
alias gpu="git push origin ${current_branch}"
alias gpl="git pull origin ${current_branch}"
alias glo="git log --oneline"
alias gl="git log"
alias grs="git restore"
alias gac="git add . && git commit -m"

source .zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
