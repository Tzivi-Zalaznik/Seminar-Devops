
FROM yanivomc/alpine-oraclejdk8:slim
WORKDIR /work
ENV DBHOST=MYSQL
ENV DBURL=mydb.com
COPY ./spring-music.jar ./code/spring-music.jar
EXPOSE 8080
EXPOSE 8081
WORKDIR /work/code
CMD java -jar -Dspring.profiles.active=none spring-music.jar
