FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
ADD . /var/www/html
RUN rm index.html
ENTRYPOINT apachectl -D FOREGROUND
