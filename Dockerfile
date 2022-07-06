FROM centos:7
MAINTAINER abhishek.shukla@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/blugoon.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip blugoon.zip
RUN cp -rvf 2116_blugoon/* .
RUN rm -rvf blugoon blugoon.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
