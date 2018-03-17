# Use a Docker wrapper for wp-cli if we are inside a Git repository with a docker-compose file.
# Use the original wp-cli command if the above conditions are not true. 
#function wp() {
#    GIT_ROOT=$(git rev-parse --show-toplevel  2> /dev/null)
#    if [ ! -z "$GIT_ROOT" ] && [ -r "$GIT_ROOT/docker-compose.yml" ] && [ -z $(grep -q wp: "$GIT_ROOT/docker-compose.yml" || echo "Error") ]; then
#        echo "Running wp in container"
#        docker-compose run --rm --no-deps wp "$@"
#    else
#        command wp "$@"
#    fi
#}
function wp() {
    GIT_ROOT=$(git rev-parse --show-toplevel  2> /dev/null)
    if [ ! -z "$GIT_ROOT" ] && [ -r "$GIT_ROOT/docker-compose.yml" ] && [ -z $(grep -q php: "$GIT_ROOT/docker-compose.yml" || echo "Error") ]; then
        docker-compose run --rm php wp "$@"
    else
        command wp "$@"
    fi
}
