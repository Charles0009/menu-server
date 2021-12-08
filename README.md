== Projet de gestion de menu pour la cantina de Mos-Estafette

=== Lancer le projet

```bash
./executer.sh
```

== Dépendances du Projet

- Spring boot et tous les machins qui vont avec
  - spring-boot-starter-data-jpa
  - spring-boot-starter-web
  - spring-boot-starter-test (mais ça on s'en sert pas on en à pas besoin)
- Lombok
- H2 Database (parce qu'on a pas besoin d'un serveur de base de données)
- maven-failsafe-plugin

== Plugins maven

- spring-boot-starter-test
- maven-failsafe-plugin

== Plan de test pour vérifier que "ça marche sur mon poste"

```bash
# Créer un nouveau menu avec un plat dedans
curl -H "Content-Type: application/json" --data-raw '{"name": "Menu spécial du chef", "dishes": [{"name": "Bananes aux fraises"},{"name": "Bananes flambées"}]}' localhost:8080/menus

# Lire les menus enregistrés
curl localhost:8080/menus
```
