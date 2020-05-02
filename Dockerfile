FROM nginx:1.18.0-alpine

MAINTAINER Steve Cochrane

ADD nginx.conf /etc/nginx/nginx.conf

CMD ["nginx"]