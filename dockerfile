FROM nginx:1.19

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY README.md /usr/share/nginx/html/
