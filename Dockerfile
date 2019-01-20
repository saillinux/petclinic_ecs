# FROM frolvlad/alpine-oraclejdk8:slim
FROm carsharing/alpine-oraclejdk8-bash
VOLUME /tmp
ADD target/spring-petclinic-rest-1.7.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]


