FROM nginx:1.18.0-alpine

MAINTAINER Steve Cochrane

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

CMD ["nginx"]