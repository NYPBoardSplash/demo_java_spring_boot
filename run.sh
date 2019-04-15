#This file creates the Tomcat admin user. Add one more file in the same directory named as run.sh with following content. This will call the create users file and then reload the Tomcat server.
!/bin/bash

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

exec ${CATALINA_HOME}/bin/catalina.sh run

#5. Build and Test the Docker Image-->Build the docker image using following command.
#docker build -f Dockerfile -t demo/spring:maven-3.3-jdk-8 .