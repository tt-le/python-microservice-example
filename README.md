# python-microservice-example

A simple flask microservice example using a HAproxy load balancer in layer 7 via Http. 

### Build the image for the hello and goodbye microservices
```docker build -t helloapp /hello_service```

```docker build -t goodbyeapp /goodbye_service```
### Deploy
`docker-compose up`
### Make some requests
Make a request to the hello endpoint twice.

```curl http://localhost:8080/hello```

Notice that the port changes from 1111 to 2222. This is the work of the loadbalancer.
Do the same with the goodbye endpoint.

```curl http://localhost:8080/goodbye```

---

### Alternatively
Run the following script to build and deploy.

```source deploy.sh```

Run the following script to test the application

```source test.sh```
