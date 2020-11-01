# Only Room
=====

1. Importer le projet dans IntelliJ IDEA en important le fichier "pom.xml" à la racine de ce répertoire

2. Exécuter votre DB mysql. Si vous avez docker, vous pouvez utiliser la commande suivante:
```
docker run --name mariadb --rm -e MYSQL_ROOT_PASSWORD=toor -e MYSQL_DATABASE=defaultdb -p 3306:3306 -v "`pwd`/initdb:/docker-entrypoint-initdb.d" mariadb
```

3. Si vous n'avez pas Docker, et que vous avez un serveur MariaDB custom, vérifiez bien que vos utilisateurs / mdp sont les bons par rapport au fichier de configuration (src/main/resources/application.properties), et exécutez les scripts présents dans le dossier `initdb`

![screen1](https://user-images.githubusercontent.com/63356912/97811385-92d5b900-1c7a-11eb-9268-ba39cb970502.jpg)

4. Run les fichiers suivants : TABLES.sql et DEFAULT_ENTRIES.sql dans IntelliJ. Sélectionner défaultdb pour la basede données

![screen2](https://user-images.githubusercontent.com/63356912/97811588-e85e9580-1c7b-11eb-98ca-246e5b8b45f1.jpg)

5. Lancez l'application via IntelliJ, et vérifiez qu'elle fonctionne sur http://localhost:8080 (par défaut)
