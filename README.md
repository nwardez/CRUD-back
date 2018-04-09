 # Evaluation CRUD
## MODE OP�RATOIRE

### Pr�requis (Back)
- Java 1,8
- DatabaseCREATE.sql (cr�ation de la base)
- DatabaseTable.sql (cr�ation des tables et ajouts donn�es) [lien fichier DatabaseTable](https://github.com/nwardez/CRUD-BACK/blob/master/src/main/resources/databaseTable.sql)
- Ces fichiers se trouvent dans src/main/resources

#### Modifications n�cessaires [Lien fichier properties](https://github.com/nwardez/CRUD-BACK/blob/master/src/main/resources/application.properties)
- spring.datasource.username= Votre username SQL
- spring.datasource.password= Password SQL

- Si besoin de changer le port du serveur Tomcat,  ajouter la ligne : 
server.port: XXXX

### Lancement

#### Back
Via GitHub :
1. Cloner le repo
2. Ajouter le projet � votre IDE pr�f�r�e
3. Faire un ```MVN Clean Install```
4. Faire un Maven Update Project
5. Lancer l�application via : Run as Spring Boot App

## DIAGRAMMES

### USECASE

![](docs/useCases.PNG)

### DIAGRAMME DE CLASSE

![](docs/DiagrammeClasses.PNG)


### DIAGRAMMES D�ACTIVITE

![](docs/diagrammeActivites.PNG)

## Technologies Back
Sous �clipse: 
  -programme en JAVA Spring Boot et ustilisation de JPA Hibernate pour cr�er les tables et ses relations 
   dans la base de donn�es.
  
## Evaluation des comp�tences
### Structure du projet

R�alisation du programme: 
  - Toutes les classes (model) de A � Z  ainsi que leur controller en passant par l'interface JPArepository
    organis� par [packages](https://github.com/nwardez/CRUD-back/tree/master/src/main/java/co/simplon).
      

## INSTALLATION
### Cr�ation d'une base de donn�es vide
Via la lignes de commande SQL:
```
CREATE DATABASE gedesaft_v2;
```

### SCHEMA SQL

![](documents/Sch�ma.PNG)

### R�cup�ration du projet

### Ouvrir le projet dans �clipse
Changer le mot de passe existant avec le votre dans l'application properties
sur la ligne suivante: 
```
spring.datasource.password=
```
En lan�ant l'application (run as Application java), la connexion au port:8080 s'initialise,
il vous est donc possible de tester ce programme via POSTMAN.

##TEST UNITAIRE
Un test fonctionnel a �t� cr�� � cette adresse: [lien test](https://github.com/nwardez/CRUD-back/blob/master/src/test/java/com/example/demo/AffaireRepositoryTest.java)
 
 ##MOCKUP
 
Une partie du Mockup r�alis� avec Balsamicq :
        
  ![](docs/mockup.PNG)