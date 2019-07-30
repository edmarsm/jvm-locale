FROM openjdk:8-jre-alpine
MAINTAINER edmarsm
COPY target/*.jar /app.jar
ENV TZ America/Sao_Paulo
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8
ENV LC_ALL pt_BR.UTF-8
ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Duser.language=jp -Duser.country=JP"
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar