FROM eclipse-temurin:17-jre
WORKDIR /app
COPY productms-0.0.1-SNAPSHOT.jar /app/productms.jar
ENTRYPOINT ["java", "-jar", "/app/productms.jar"]