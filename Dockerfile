FROM shangxian/nginx:alpine


RUN apk add bash \
    && mkdir /home/logs \
    && ln -s /etc/nginx /usr/local/nginx  \
    && ln -s /usr/sbin/  /usr/local/nginx/sbin \
    && ln -s /var/log/nginx  /home/logs/nginx

CMD ["nginx", "-g", "daemon off;"]