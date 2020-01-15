function cdtemp {
    cd $(mktemp -d)
}
alias t=cdtemp

function nh {
    xdg-open .
}

function nb {
    xdg-open ./build/libs/
}

alias dns='resolvectl query'
alias mkdir='mkdir -p'
