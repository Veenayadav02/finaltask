FROM ubuntu:latest
MAINTAINER veenayadav860@gmail.com
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.tooplate.com/download/2126_antique_cafe /var/www/html/
WORKDIR /var/www/html/
RUN sh -c 'unzip -q "*.zip"'
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
