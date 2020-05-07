FROM nginx:1.18.0-alpine

MAINTAINER Steve Cochrane

ADD nginx.conf /etc/nginx/nginx.conf
ADD html /etc/nginx/html/
ADD ssl /etc/nginx/ssl/

CMD ["nginx"]
