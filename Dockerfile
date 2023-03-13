FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://templatemo.com/download/templatemo_579_cyborg_gaming /var/www/html
WORKDIR /var/www/html
RUN unzip templatemo_579_cyborg_gaming
RUN cp templatemo_579_cyborg_gaming/* .
RUN rm -rf templatemo_579_cyborg_gaming templatemo_579_cyborg_gaming
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
