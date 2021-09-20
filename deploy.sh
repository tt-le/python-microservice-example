SCRIPTPATH="$(
    cd "$(dirname "$0")" >/dev/null 2>&1
    pwd -P
)"

docker build -t helloapp "$SCRIPTPATH"/hello_service

docker build -t goodbyeapp "$SCRIPTPATH"/goodbye_service

docker-compose up
