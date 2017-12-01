
# sed "s/\${DOCKER_CONTROL_HOST}/$DOCKER_CONTROL_HOST/" /etc/nginx/default-template.conf > /etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf
rm -f /usr/share/nginx/html/index.html
mv /usr/share/nginx/html/base.html /usr/share/nginx/html/index.html
exec nginx -g 'daemon off;'
