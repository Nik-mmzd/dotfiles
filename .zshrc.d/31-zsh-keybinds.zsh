## From OH-MY-ZSH https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/key-bindings.zsh

# start typing + [Up-Arrow] - fuzzy find history forward
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
# start typing + [Down-Arrow] - fuzzy find history backward
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# [Shift-Tab] - move through the completion menu backwards
bindkey '^[[Z' reverse-menu-complete

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word
