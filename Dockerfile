FROM ubuntu:latest
LABEL maintainer="veenayadav860@gmail.com"

# Update package list and install required packages
RUN apt-get update && apt-get install -y apache2 zip unzip

# Download and extract the ZIP file
ADD https://www.tooplate.com/zip-templates/2113_earth.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip -q 2113_earth.zip

# Move files and clean up
RUN cp -rvf 2113_earth/* .
RUN rm -rf 2113_earth.zip

# Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# Expose ports
EXPOSE 80 
