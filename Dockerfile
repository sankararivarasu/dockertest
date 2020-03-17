FROM ubuntu:16.04
MAINTAINER hybridskill
RUN apt-get update -y
RUN apt-get install -y nginx
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD nginx -g 'daemon off;'
