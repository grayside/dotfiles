dcon() {
  docker exec -it $1 bash
}

# Support for DevTools
if test ! $(which devtools)
then
  eval "$(devtools config)"
fi
