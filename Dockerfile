FROM openjdk:8

COPY . /usr/src/spring-petclinic

WORKDIR /usr/src/spring-petclinic

RUN apt-get update \
    && apt-get install maven -y \
    && rm -rf /var/lib/apt/lists/*

RUN mvn package \
    && mv target/spring-petclinic-*.jar target/springpetclinic.jar

EXPOSE 8080

CMD java -jar target/springpetclinic.jar