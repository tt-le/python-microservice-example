echo "curl hello service"
curl http://localhost:8080/hello
echo "curl hello service"
curl http://localhost:8080/hello
echo "curl goodbye service"
curl http://localhost:8080/goodbye
echo "curl goodbye service"
curl http://localhost:8080/goodbye

echo "Notice the ports, the load balancer is using round robin to assign the client to the backends"