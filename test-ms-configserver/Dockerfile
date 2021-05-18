FROM openjdk:13
EXPOSE 8888
ADD ./target/test-ms-configserver-0.0.1-SNAPSHOT.jar    test-ms-configserver.jar
ENTRYPOINT ["java","-jar","/test-ms-configserver.jar"]