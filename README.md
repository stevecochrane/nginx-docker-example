# nginx-docker-examples

Here I'll be learning about Nginx by trying a bunch of its features, and following along with
[Nginx: From Beginner to Pro](https://www.apress.com/gp/book/9781484216576) by Rahul Soni.

Here's how to build and run the Docker container for the webapp:

```bash
docker build -t stevecochrane/nginx-docker-example ./webapp
docker run -d -p 80:80 -p 443:443 stevecochrane/nginx-docker-example
```

Now you should be able to go to `http://localhost` in your browser to see a 'Hello World' page.
Nginx will redirect you to HTTPS automatically (which may cause issues if you don't have your
browser configured to accept self-signed certificates on localhost). This also requires having
a self-signed certificate in the `ssl/` directory, which is not included in the repo.

There is also a very simple load balancer, though it requires a couple of other servers running
on local IPs to run properly. Here's how to get that running in Docker:

```bash
docker build -t stevecochrane/nginx-load-balancer ./load-balancer
docker run -d -p 80:80 stevecochrane/nginx-load-balancer
```

When navigating to `http://localhost` this will redirect traffic to either `127.0.0.2` or
`127.0.0.3` depending on which server has the fewest current connections.
