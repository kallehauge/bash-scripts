# Create a function that uses Docker to run as a "local composer" installation.
# @link https://hub.docker.com/_/composer/
function composer() {
  docker run --rm --interactive --tty --volume $PWD:/app --user $(id -u):$(id -g) composer "$@"
}
