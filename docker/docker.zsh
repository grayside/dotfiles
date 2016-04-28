alias fig=docker-compose
alias r="docker-compose -f build.yml run"

dcon() {
  docker exec -it $1 bash
}

# Support for DevTools
if test ! $(which devtools)
then
  eval "$(devtools config)"
fi
