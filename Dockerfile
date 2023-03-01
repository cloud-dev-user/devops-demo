FROM openjdk

RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
#RUN curl -v https://dlcdn.apache.org/
#COPY apache-tomcat-9.0.64.tar.gz   ./apache-tomcat-9.0.64.tar.gz
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz
RUN tar xvf apache-tomcat-9.0.72.tar.gz
RUN cp -r apache-tomcat-9.0.72/*  /opt/tomcat/.
COPY my-app.war /opt/tomcat/webapps/

EXPOSE 8080

ENTRYPOINT ["/opt/tomcat/bin/catalina.sh","run"]
