#!/bin/sh
#
# Docker
#

## Phase2 Docker Stack

# First time start will set up the Docker Machine.
devtools start

# Retrieve common Phase2 base images.
docker pull phase2/apache24base
docker pull phase2/devtools-build
