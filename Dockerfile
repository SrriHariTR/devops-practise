
FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY target/classes/ /app/

CMD ["java", "-cp", "/app", "HelloWorld"]
