#FROM tomcat:8.0.51-jre8-alpine
#CMD ["catalina.sh", "run"]
FROM tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/employee-producer-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]