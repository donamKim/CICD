FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive 
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
ENTRYPOINT /usr/sbin/apachectl -DFOREGROUND
ADD ./index.html /var/www/html
