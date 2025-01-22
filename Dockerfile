FROM openjdk:17
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-XX:MinRAMPercentage=60.0","-XX:MaxRAMPercentage=90.0","-jar","app.jar"]
