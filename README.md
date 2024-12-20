# KSP (Kokiris Status Page)

Le projet https://github.com/kokiriscloud/kokiris.github.io

Une page avec des crédentials est présente sur notre wiki.

La page de status est hébergée sur github afin d'être indépendante d'OVH Cloud.

Github action ainsi que des scripts sont utilisés pour en faciliter la construction et le déploiement.

## Ressources externes

* https://github.com/cstate/cstate?tab=readme-ov-file#getting-started-
* https://github.com/cstate/cstate/wiki/Customization

## Lexique

* system : le système qui est impacté, ` KCH (Hébergement Cloud Kokiris) Roubaix̀` par exemple
* severity : la sévérité, `down`, `disrupted` ou ̀`noticè`
* date : Date et heure de début d'incident avec ce format `ANNEE-MOIS-JOUR HEURE:MINUTE:SECONDE`
* resolvedWhen : Date et heure de résolution avec ce format `ANNEE-MOIS-JOUR HEURE:MINUTE:SECONDE`
* resolved : `true` l'incident est résolu, ̀`false` l'incident cours toujours
* affected : une liste `yaml` des système affectés

## Systèmes actuels

 *  KCH (Hébergement Cloud Kokiris) Roubaix
 *  KCH (Hébergement Cloud Kokiris) Gravelines
 *  KCB S3 Strasbourg
 *  KCL (infogérance)
 *  KPC (Cloud privé Kokiris)
 *  KPM (Infogérance Plesk Kokiris)
 *  KCC (Orchestration de conteneurs Kokiris)
 *  Kokiris documentation
 *  Kokigraf (Supervision orientée performance)
 *  Kokiperf (Surveillance site web)

## Où sont stockés les incidents (issue) 

Lister les incidents par date de modification.

```bash
ls -lart content/issues/
```

# Utilisation

## Récupération du site en local

```bash
git clone git@github.com:kokiriscloud/kokiris.github.io.git
```

## Création de l'incident

### Exporter la sévérité 

Exemple :

```bash
export SEVERITY=disrupted
```

### Exporter le premier système impacté

```bash
export AFFECTED='KCH (Hébergement Cloud Kokiris) Roubaix'
```

### Création de l'issue

```bash
bash issue.sh Hosting-problem
```

Le script se termine en affichant le chemin vers le nouveau fichier.

### Editer le nouveau fichier d'incident pour :
* améliorer le titre dans le méta-data `title`
* éventuellement ajouter un nouveau système à la méta-data : `affected`
* décrire l'incident et son impact

### Après édition, commiter les changement afin de lancer le build et la publication sur Github :

```bash
git add .
git commit -m "incident"
git push
```

### Surveiller son bon déploiement sur Github action 

En allant sur https://github.com/kokiriscloud/kokiris.github.io/actions/workflows/hugo.yml

Attention, il faut avoir un compte github autorisé pour y accéder.

### surveiller sa bonne publication 

En allant sur https://status.kokiris.net/

## Mise-à-jour de l'incident

Editez l'incident puis commiter le changement

## Fermeture de l'incident 

Editez les méta-data de l'incident, passer `resolved` à `true`, ajouter la méta-data `resolvedWhen` avec pour valeur le résultat de la commande `date  +"%Y-%m-%d %H:%M:%S"`

Puis commiter les modifications, l'incident sera clos côté `CState`.
