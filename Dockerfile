FROM openjdk:11-oraclelinux7
RUN groupadd -r spring -g 1000 && useradd -u 1000 -r -g spring -m -d /opt/spring -s /sbin/nologin -c "Spring User" spring && chmod 755 /opt/spring
USER spring:spring
WORKDIR /opt/spring
COPY build/libs/spring-boot-docker-0.0.1-SNAPSHOT.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","spring-boot-docker.jar"]
