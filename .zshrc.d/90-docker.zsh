if [ -x "$(which docker)" ]; then
  if [ -x "$(which docker-compose)" ]; then
    alias dc='docker-compose'
  else
    alias dc='docker compose'
  fi
fi
