FROM nginx:1.18.0-alpine

MAINTAINER Steve Cochrane

ADD nginx.conf /etc/nginx/nginx.conf
ADD 404.html /etc/nginx/html/404.html
ADD index.html /etc/nginx/html/index.html

CMD ["nginx"]