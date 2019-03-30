FROM openjdk:12-jdk

VOLUME /tmp

RUN mkdir /app
WORKDIR /app

# set entrypoint to execute spring boot application
ENTRYPOINT ["sh","-c","java -jar -Dspring.profiles.active=docker build/libs/${JAR_TARGET}"]
