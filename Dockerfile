FROM wodby/openjdk:17-alpine
#Expose le port de l'application Spring Boot
EXPOSE 8089
#Ajoute le livrable Spring Boot dans l'image
#ADD target/school-1.0.0.jar school-1.0.0.jar
ADD http://192.168.50.4:8081/repository/maven-releases/tn/m104/rh/school/1.0.0/school-1.0.0.jar .

#commande d'exécution de l'application Spring Boot
ENTERYOINT ["java", "-jar", "/school-1.0.0.jar"]

 