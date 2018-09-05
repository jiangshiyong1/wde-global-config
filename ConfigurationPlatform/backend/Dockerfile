FROM centos:6.9

RUN echo "install java"
ADD jdk-8u151-linux-x64.rpm /jdk8.rpm
RUN yum install -y /jdk8.rpm
RUN ["/bin/bash", "-c", "rpm -ql /jdk8.rpm|grep jdk"]

RUN echo "install nginx"
RUN rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
RUN yum install -y nginx
ADD default.conf /etc/nginx/conf.d/default.conf
RUN service nginx start

RUN echo "install apache httpd service"
RUN yum install -y httpd
ADD ./html/* /var/www/html/
RUN service httpd start

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    JHIPSTER_SLEEP=0 \
    JAVA_OPTS=""

ADD *.war /app.war
VOLUME /data /

CMD echo "The application will start in ${JHIPSTER_SLEEP}s..." && \
   sleep ${JHIPSTER_SLEEP} && \
    java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.war --logging.level.com.config.platform=DEBUG

EXPOSE 8008
