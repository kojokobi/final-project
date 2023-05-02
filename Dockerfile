# FROM ubuntu:16.04

# RUN apt-get update \
#     && apt-get install -y nginx \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
#     && echo "daemon off;" >> /etc/nginx/nginx.conf

# ADD default /etc/nginx/sites-available/default

FROM nginx:1.10.1-alpine

MAINTAINER kojokobi@gmail.com


COPY index.html /usr/share/nginx/html

COPY . .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

