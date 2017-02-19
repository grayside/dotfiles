
#git
#exec('git rev-parse --show-toplevel 2> /dev/null', $output);
#if (!empty($output)) {
#  $repo = $output[0];
#  $options['config'] = $repo . '/drush/drushrc.php';
#  $options['include'] = $repo . '/drush/commands';
#  $options['alias-path'] = $repo . '/drush/aliases';
#}

dcon() {
  docker exec -it $1 bash
}

# Default to empty value for NCL docker-compose.yml
export DOCKER_ENV=""

# Configure Phase2 nameservers.
export RIG_NAMESERVERS=”10.10.7.2:53,8.8.8.8:53”

# Support for DevTools
if test $(which rig)
then
  eval "$(rig config)"
fi
