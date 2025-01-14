FROM openjdk:8-jdk

VOLUME /tmp

ADD ./target/javasec-1.11.jar app.jar

EXPOSE 8888

RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
