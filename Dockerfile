FROM java:8
#VOLUME /tmp
#WORKDIR '/app'
WORKDIR '/java-spring-basic-1'

#ADD COMMAND IS WORKING WITH CORRECT FILENAME
ADD target/microservice.basic-0.0.1-SNAPSHOT.jar .
RUN bash -c 'touch microservice.basic-0.0.1-SNAPSHOT.jar'
EXPOSE 80

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar microservice.basic-0.0.1-SNAPSHOT.jar"]
