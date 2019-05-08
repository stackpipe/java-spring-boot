FROM maven:3.6.1-jdk-8-alpine AS MAVEN_TOOL_CHAIN
WORKDIR '/java-spring-basic-1'

# Exposes port 8080
EXPOSE 8080

ADD src	./src
ADD pom.xml .
RUN mvn package

RUN bash -c 'touch target/microservice.basic-0.0.1-SNAPSHOT.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar target/microservice.basic-0.0.1-SNAPSHOT.jar"]
