FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/edu-meeting.zip /var/www/html
WORKDIR /var/www/html
RUN unzip edu-meeting.zip
RUN cp -rf edu-meeting/* .
RUN rm -rf edu-meeting
RUN rm-rf edu-meeting.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
