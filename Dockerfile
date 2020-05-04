FROM nginx
LABEL maintainer="NginxForReact Maintainer <tzry93@gmail.com>"
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/conf.d/default.conf
EXPOSE 80
WORKDIR /var/www/html
CMD ["nginx", "-g", "daemon off;"]