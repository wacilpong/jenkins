NGINX_CONTAINER_ID=`docker ps -aq --filter 'name=nginx'`

if [ -n "$NGINX_CONTAINER_ID"];
  then
      echo "nginx container exist"
      docker stop $NGINX_CONTAINER_ID
      docker rm $NGINX_CONTAINER_ID
      docker run -d -p 80:80 --name nginx nginx:test
  else
      echo "nginx container not exist"
      docker stop $NGINX_CONTAINER_ID
      docker rm $NGINX_CONTAINER_ID
      docker run -d -p 80:80 --name nginx nginx:test
fi