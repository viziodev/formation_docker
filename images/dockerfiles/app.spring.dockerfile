FROM openjdk:17
LABEL key="formation.docker.demon.spring"
WORKDIR /app 
COPY ./target/java.docker-0.0.1-SNAPSHOT.jar .
EXPOSE 1010
ENTRYPOINT ["java","-jar","/app/java.docker-0.0.1-SNAPSHOT.jar"]