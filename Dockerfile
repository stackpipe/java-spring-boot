FROM java:8
WORKDIR '/app'

COPY target/microservice.basic-0.0.1-SNAPSHOT.jar java-spring-basic-1.jar

RUN bash -c 'touch java-spring-basic-1.jar'

EXPOSE 80

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar java-spring-basic-1.jar"]
