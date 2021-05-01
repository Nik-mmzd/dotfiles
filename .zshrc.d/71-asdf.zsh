export ASDF_DIR="${ASDF_DIR:-$HOME/.local/share/asdf}"
export ASDF_DATA_DIR="$ASDF_DIR"
export ASDF_CONFIG_FILE="$ASDF_DIR/.asdfrc"
[[ -s "$ASDF_DIR/asdf.sh" ]] && source "$ASDF_DIR/asdf.sh" && fpath=(${ASDF_DIR}/completions $fpath)
