FROM tomcat:8.0-alpine

LABEL maintainer="zuhair30@gmail.com"

COPY /target/war-test.war $CATALINA_HOME/webapps/

CMD ["catalina.sh", "run"]

RUN echo "Creation of your docker image is in progress, please hold on for a moment"