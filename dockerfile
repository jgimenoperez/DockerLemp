FROM ubuntu:latest


USER root

# RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install \
#     nano \
#     nginx \
#     wget \
#     php-fpm \
#     mysql-server \
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install nano
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install wget
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install nginx
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install php-fpm
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install mysql-server
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install php-mysql

# # RUN apt-get u
# RUN apt-get update && apt-get -y install \
#     nano \
#     nginx \
#     wget \
#     php-fpm \
#     mysql-server \
#     php-mysql
# # RUN apt-get update &&  apt-get install nano && apt-get install nginx 
# RUN apt-get install php-fpm && apt-get install mysql-server && apt-get install php-mysql
COPY ./default /etc/nginx/sites-available/
COPY ./test.php /var/www/html/
# RUN service php7.4-fpm restart
# RUN service nginx restart




#    && apt-get install mysql-server 
# DEBIAN_FRONTEND=noninteractive apt-get install lightdm -y
