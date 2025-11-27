FROM eclipse-temurin:17-jre

WORKDIR /app

COPY productms-0.0.1-SNAPSHOT.jar app.jar
COPY apm-agent-attach-cli-1.52.1.jar apm-agent.jar

ENV ELASTIC_APM_SERVER_URL="http://monitoreo.prophecyai.tech:8200"
ENV ELASTIC_APM_SERVICE_NAME="oss-microservicio"
ENV ELASTIC_APM_ENVIRONMENT="Sandbox"
ENV ELASTIC_APM_SECRET_TOKEN=""

EXPOSE 8080

ENTRYPOINT ["java", "-javaagent:apm-agent.jar", "-jar", "app.jar"]
