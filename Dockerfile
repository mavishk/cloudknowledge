FROM centos:7
MAINTAINER abhishek.shukla@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/spa-center.zip
WORKDIR /var/www/html
RUN unzip spa-center.zip
RUN cp -rvf spa-center-html/* .
RUN rm -rvf spa-center.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
