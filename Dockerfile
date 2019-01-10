FROM java:8
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} /app/app.jar
WORKDIR /app/
EXPOSE 8080
ENTRYPOINT ["java","-jar","./app.jar"]
