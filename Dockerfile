FROM openjdk:17-jdk


WORKDIR /app

COPY target/paypal-integration-0.0.1-SNAPSHOT.jar /app/paypal-integration.jar

EXPOSE 8080

CMD ["java", "-jar", "paypal-integration.jar"]