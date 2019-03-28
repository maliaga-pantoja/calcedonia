FROM openjdk:8-jdk-alpine
ENV REPO_URI=$REPO_URI
RUN echo ${REPO_URI}
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/config-server-0.0.1-SNAPSHOT.jar coral.jar
ENTRYPOINT exec java $JAVA_OPTS -jar coral.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar coral.jar
