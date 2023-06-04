FROM nginx:1.10.1-alpine

MAINTAINER kojokobi@gmail.com

COPY index.html /usr/share/nginx/html

COPY . .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]