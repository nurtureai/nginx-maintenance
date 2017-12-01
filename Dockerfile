from nginx:1-alpine

COPY entry.sh /entry.sh
COPY nginx.default.conf /etc/nginx/default-template.conf

RUN chmod a+x /entry.sh
COPY base.html /usr/share/nginx/html/base.html
RUN chmod a+rx /usr/share/nginx/html/*.html

ENV DOCKER_CONTROL_HOST ""

EXPOSE 80

ENTRYPOINT "/entry.sh"

