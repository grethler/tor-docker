FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
