FROM centos:6.9

RUN echo "install java"
ADD jdk-8u151-linux-x64.rpm /jdk8.rpm
RUN yum install -y /jdk8.rpm
RUN ["/bin/bash", "-c", "rpm -ql /jdk8.rpm|grep jdk"]
RUN rm /jdk8.rpm

RUN echo "install nginx"
RUN rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
RUN yum install -y nginx

RUN echo "install apache httpd service"
RUN yum install -y httpd
ADD ./html/* /var/www/html/

RUN yum install -y python-setuptools
RUN easy_install supervisor

RUN yum install -y git

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    JHIPSTER_SLEEP=0 \
    JAVA_OPTS=""

ADD *.war /app.war

RUN echo "get config from git"
ADD start.sh /start.sh
RUN chmod 777 /start.sh

ADD ./supervisord.conf /etc/supervisord.conf
RUN mkdir -p /var/log/supervisor/

#VOLUME /data /config

EXPOSE 8008 22 80 8080


CMD echo "The application will start in ${JHIPSTER_SLEEP}s..." && \
	/usr/bin/supervisord -c /etc/supervisord.conf 