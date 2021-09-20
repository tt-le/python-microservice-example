SCRIPTPATH="$(
    cd "$(dirname "$0")" >/dev/null 2>&1
    pwd -P
)"

cd "$SCRIPTPATH"/hello_service && docker build -t helloapp .

cd "$SCRIPTPATH"/goodbye_service && docker build -t goodbyeapp .

cd "$SCRIPTPATH" && docker-compose up
