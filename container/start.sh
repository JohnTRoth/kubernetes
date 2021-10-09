echo "<HEAD></HEAD><BODY><H1>$(date): You have reached $container </BODY>" > /usr/share/nginx/html/index.html
nginx -g "daemon off;"
