FROM ubuntu
RUN apt install java -y
RUN apt install net-tools -y
ADD https://downloads.apache.org/tomcat/tomcat-10/v10.1.23/bin/apache-tomcat-10.1.23.tar.gz.asc
RUN tar -xzf apache-tomcat-10.1.23.tar.gz.asc
COPY project.war /apache-tomcat-10.1.23/webapps/
EXPOSE 8080/tcp
CMD ["apache-tomcat-10.1.23/bin/catalina.sh","run"]