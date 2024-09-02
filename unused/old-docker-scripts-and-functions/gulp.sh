# Create a function that uses Docker to run as a "local gulp" installation.
# @link https://hub.docker.com/_/node/
function gulp() {
  docker run --rm --interactive --tty --volume $PWD:/usr/src/app -w /usr/src/app --user $(id -u):$(id -g) kallehauge/gulp
}
