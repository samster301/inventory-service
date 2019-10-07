FROM openjdk:8
RUN mkdir app
ADD inventory-master/target/inventory-0.0.1-SNAPSHOT.jar app/docker-inventory-service.jar
WORKDIR app
RUN "pwd"
RUN "ls"
EXPOSE 9910
ENTRYPOINT ["java", "-jar", "docker-inventory-service.jar"]



