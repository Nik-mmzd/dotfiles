export ASDF_DIR="${ASDF_DIR:-$HOME/.local/share/asdf}"
export ASDF_DATA_DIR="$ASDF_DIR"
export ASDF_CONFIG_FILE="$ASDF_DIR/.asdfrc"
if [[ -s "$ASDF_DIR/asdf.sh" ]]; then
  source "$ASDF_DIR/asdf.sh"
  fpath=(${ASDF_DIR}/completions $fpath)
fi
