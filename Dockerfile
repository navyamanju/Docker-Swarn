FROM openjdk:8
EXPOSE 8090
ADD   target/Springproduct-0.0.1-SNAPSHOT.war  Springproduct-0.0.1-SNAPSHOT.war
ENTRYPOINT [ "java","-jar","/Springproduct-0.0.1-SNAPSHOT.war"]
