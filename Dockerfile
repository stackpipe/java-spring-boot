FROM java:8
VOLUME /tmp
#WORKDIR '/app'

#ADD COMMAND IS WORKING WITH CORRECT FILENAME
ADD target/microservice.basic-0.0.1-SNAPSHOT.jar user.jar
#COPY microservice.jar .
#COPY target/microservice.basic-0.0.1-SNAPSHOT.jar user.jar

RUN bash -c 'touch user.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar user.jar"]
 
