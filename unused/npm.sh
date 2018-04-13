# Create a function that uses Docker to run as a "local npm" installation.
# @link https://hub.docker.com/_/node/
function npm() {
  docker run --rm --interactive --tty --volume $PWD:/app -w /app --user $(id -u):$(id -g) node:latest npm "$@"
}
