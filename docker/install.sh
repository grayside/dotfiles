#!/bin/sh
#
# Docker
#

## Phase2 Docker Stack

if test ! $(which devtools)
then
  # First time start will set up the Docker Machine.
  devtools start

  # Retrieve common Phase2 base images.
  docker pull phase2/apache-php-base
  docker pull phase2/devtools-build

  # Shut down devtools now that we got things put together.
  devtools stop
fi