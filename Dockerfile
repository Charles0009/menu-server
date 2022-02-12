# Depuis l'image de base azul/zulu-openjdk:11 (qui embarque un JRE dans la version 11)
FROM azul/zulu-openjdk:11

# Copier l'archive JAR depuis l'hôte dans le fichier /opt/app/menu-server.jar de l'image
COPY target/menu-server.jar /opt/app/menu-server.jar

# Définis la commande par défaut du container à java -jar /opt/app/menu-server.jar  --server.port=${PORT}
# La variable d'environnement PORT est définie par heroku à la création du container.
CMD ["java","-jar","/opt/app/menu-server.jar", "--server.port=${PORT}"]