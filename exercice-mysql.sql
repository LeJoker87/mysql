Pour vous entrainer, voici quelques questions qui vous permettront d'élaborer des requêtes et mener vers la réponse :
1. Afficher la profession de l'employé 547.
2. Afficher la date d'embauche de : Amandine.
3. Afficher le nombre de commerciaux.
4. Afficher le coût des commerciaux sur 1 année.
5. Afficher le salaire moyen par service.
6. Afficher le nombre de recrutements sur l'année 2010.
7. Augmenter le salaire pour chaque employé de 100€.
8. Afficher le nombre de services (différents).
9. Afficher les informations de l'employé du service commercial gagnant le salaire le plus élevé
10. Afficher l'employé ayant été embauché en dernier


1.select service from employes where id_employes=547;
2.select date_embauche from employes where id_employes=780;
3.select count(*) from employes where service='commercial';
4.select salaire*12 from employes where service='commercial';  "individuel"
4.select sum(salaire*12) from employes where service='commercial'; "total"
5.select service avg(salaire) from employes group by service;
6.select count(*) from employes where date_embauche between '2010-01-01' and '2010-12-31';
6.select prenom, nom, salaire, service from employes where date_embauche between '2010-01-01' and '2010-12-31';
7.update employes set salaire=salaire+100;
8.select count(*) from service;