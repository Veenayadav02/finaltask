FROM ubuntu:latest
MAINTAINER veenayadav860@gmail.com
RUN apt install apache2 -y
RUN apt install zip -y
RUN apt install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip /var/www/html/
WORKDIR /var/www/html/
RUN sh -c 'unzip -q "*.zip"'
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
