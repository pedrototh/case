FROM nginx:stable-alpine
COPY default.conf /etc/nginx/conf.d
RUN mkdir -p /var/www/html/
COPY index.html /var/www/html/
EXPOSE 8080/tcp
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]
WORKDIR /usr/share/nginx/html
