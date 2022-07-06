FROM centos:7
MAINTAINER abhishek.shukla@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/evolve.zip /var/www/html
WORKDIR /var/www/html
RUN unzip evolve.zip
RUN cp -rvf evolve/* .
RUN rm -rvf evolve.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
