FROM centos
RUN yum update -y
RUN yum install httpd -y
COPY /home/ec2-user/app_one_container/index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd","-d","FOREGROUND"]
