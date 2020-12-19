FROM nginx:1.17.8-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
# COPY public /usr/share/nginx/html
COPY . /usr/share/nginx/html
# WORKDIR /app

# nginx user must own the cache directory to write cache
RUN chown -R 101:0 /var/cache/nginx \
    && chmod -R g+w /var/cache/nginx

USER 101