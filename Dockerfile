FROM centos:7
MAINTAINER abhishek.shukla@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/foodhut.zip /var/www/html
WORKDIR /var/www/html
RUN unzip foodhut.zip
RUN cp -rvf foodhut/* .
RUN rm -rvf foodhut.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
