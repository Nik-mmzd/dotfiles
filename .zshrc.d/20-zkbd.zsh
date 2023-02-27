#!/usr/bin/env zsh

typeset -g -a zkbd_keymaps
typeset -g -A zkbd_mapping
typeset -g -A key

zkbd_keymaps+=("${ZDOTDIR:-$HOME}/.zkbd/$TERM")
zkbd_keymaps+=("${ZDOTDIR:-$HOME}/.zkbd/$TERM-$VENDOR")
zkbd_keymaps+=("${ZDOTDIR:-$HOME}/.zkbd/$TERM-$VENDOR-$OSTYPE")
zkbd_keymaps+=("${ZDOTDIR:-$HOME}/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}")

zkbd_mapping[Left]=backward-char
zkbd_mapping[Right]=forward-char
zkbd_mapping[Up]=up-line-or-beginning-search
zkbd_mapping[Down]=down-line-or-beginning-search
zkbd_mapping[Home]=beginning-of-line
zkbd_mapping[End]=end-of-line
zkbd_mapping[Delete]=delete-char
zkbd_mapping[Shift-Tab]=reverse-menu-complete
zkbd_mapping[Control-Right]=forward-word
zkbd_mapping[Control-Left]=backward-word

function __kk::zkbd::load() {
  [[ -e "$1" ]] && source "$1"
}

function __kk::zkbd::bind() {
  [[ -n ${key[$1]} ]] && bindkey "${key[$1]}" "$2" || [[ -v __kk_zkbd_missing ]] || {
    echo " ### Please generate zkbd mapping with 'autoload zkbd && zkbd' ###" >&2
    __kk_zkbd_missing=true
  }
}

for mapping in "${zkbd_keymaps[@]}"; do
  __kk::zkbd::load "$mapping"
done

unset __kk_zkbd_missing

for k in "${(@k)zkbd_mapping}"; do
  __kk::zkbd::bind "$k" "$zkbd_mapping[$k]"
done

unset __kk_zkbd_missing
