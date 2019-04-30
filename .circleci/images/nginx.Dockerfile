FROM nginx:1.15-alpine

ADD site/public /usr/share/nginx/html
