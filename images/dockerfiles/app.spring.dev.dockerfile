FROM openjdk:18
LABEL key="formation.docker.demon.spring"
RUN groupadd --gid 1000 spring \
  && useradd --uid 1000 --gid spring --shell /bin/bash --create-home spring
USER spring
WORKDIR /app 
ARG JAR_FILE=../target/java.docker-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} .
EXPOSE 1010
ENTRYPOINT ["java","-jar","/app/java.docker-0.0.1-SNAPSHOT.jar"]
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1