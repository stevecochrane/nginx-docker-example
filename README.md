# nginx-docker-example

Here I'll be learning about Nginx by trying a bunch of its features, and following along with
[Nginx: From Beginner to Pro](https://www.apress.com/gp/book/9781484216576) by Rahul Soni.

Here's how to build and run the Docker container:

```bash
docker build -t stevecochrane/nginx-docker-example .
docker run -d -p 80:80 stevecochrane/nginx-docker-example
```

Now you should be able to go to `http://localhost:80` in your browser to see a 'Hello World' page.