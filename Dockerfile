FROM java:8
#VOLUME /tmp
#WORKDIR '/app'
WORKDIR '/java-spring-basic-1'

#ADD COMMAND IS WORKING WITH CORRECT FILENAME
ADD ./target/microservice.basic-0.0.1-SNAPSHOT.jar java-spring-basic-1.jar
RUN bash -c 'touch java-spring-basic-1.jar'
EXPOSE 80

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar java-spring-basic-1.jar"]
