export ASDF_DIR="${ASDF_DIR:-$HOME/.local/share/asdf}"
export ASDF_DATA_DIR="$ASDF_DIR"
export ASDF_CONFIG_FILE="$ASDF_DIR/.asdfrc"

if command -v asdf &> /dev/null; then
  export PATH="${ASDF_DATA_DIR}/shims:$PATH"
  if [[ -d "${ASDF_DIR}/completions" ]]; then
    fpath=(${ASDF_DIR}/completions $fpath)
  fi
elif [[ -s "$ASDF_DIR/asdf.sh" ]]; then
  source "$ASDF_DIR/asdf.sh"
  fpath=(${ASDF_DIR}/completions $fpath)
fi
