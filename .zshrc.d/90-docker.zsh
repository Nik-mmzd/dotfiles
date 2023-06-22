if command -v docker &> /dev/null; then
  if docker compose version &> /dev/null; then
    alias dc='docker compose'
  elif command -v docker-compose &> /dev/null; then
    alias dc='docker-compose'
  fi
fi
