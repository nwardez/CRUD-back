# CRUD-back
# CRUD-back
## Contexte
Réalisation d'un projet CRUD fonctionnel à partir du projet fil-rouge
Ce projet doit inclure la partie back, et la partie front du projet. Il s'agit ici de la partie back
## Outils utilisés
Le back a entièrement été développé grâce à l'IDE Eclipse.
Utilisation de JPA, Hibernate et Spring Boot pour faciliter les échanges et requêtes avec la base de données.
## Partie personnelle
J'ai réalisé la partie back-end liée aux affaires
## Structure du projet
Réalisation de 3 classes s'appuyant sur le modèle MVC
AffaireModèle : Classe @Entity décrivant l'objet Affaire
IRepositoryAffaire : Interface s'occupant de la couche DAO
AffaireController : Classe s'occupant de l'Api
## Création d'un Test Unitaire
Voir classe AffaireRepositoryTest.java
Cette classe teste la requête retournant la liste des affaires
## Requêtes SQL
JPARepositpory possédant ses propres méthodes de requêtes SQL, ces différentes requêtes ont été rajoutées en commentaire dans la classe AffaireController

## Installation du projet coté back
### Création d'une base de donnée vide
Via les lignes de commande SQL: (voir fichier SQL databaseCreate dans SRC/MAIN/RESOURCES
```
CREATE DATABASE gedesaft_v2
```
Puis pour y inserer des données (fichier SQL databaseTable dans SRC/MAIN/RESOURCES) .. Cette étape est facultative car la table sera créée automatiquement par JPA
### Récupération du projet
Le projet se trouve dans mon GITHUB à l'adresse suivante:
[Lien GITHUB](https://github.com/nwardez/CRUD-back.git)
### Ouvrir ce projet avec ton IDE préféré
Une fois ouvert, ouvrir le fichier application.properties situé dans SRC/MAIN/RESOURCES
sur la ligne suivante: 
```
spring.datasource.password=admin
```
Remplacer "admin" par ton mot de passe
### Lancer l'application
Cliquer droit sur le fichier Application.java situé dans le package co.simplon. et "run as Java Application"
SpringBoot se lance en se connectant au serveur via le port:8080,
### Tester l'application
Via postman, on peut tester les differentes méthodes du controleur Affaire;
Ou via Le projet ANGULAR voir CRUD-Front sur mes Repo
