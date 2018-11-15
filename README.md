# LANDING PAGES Session 6 2018

##  1 - Team Front

    -   @FredS ( la bête)
    -   @Axel ( le normand)
    
## 2 - Team Back

    - @MarcelALng ( la mascotte)
    - @iCédric  ( le cerveau)
    - @Juliette ( la meilleure)
    
### What is the project ?
    
Ce projet a pour but de réaliser des actions de Growth Hacking. L'idée est de récupérer plusieurs sources de contact (via plusieurs manières), de créer des Landing Pages personnalisées, de diriger les contacts vers ces Landing Pages afin de convertir l'utilisateur en l'incitant à souscrire à la newsletter, newsletter qui sera envoyé regulièrement aux différents contacts.

## Design Choice

Les 3 Landing Pages possèdent le même design qui reste lié à l'identité du site principal de The Hacking Project. Ainsi, on retrouve la police d'écriture du site, les couleurs dominantes comme le blanc, le noir, le violet, le jaune... Nous avons choisi de volontairement éviter le scroll down pour l'utilisateur en mettant en avant deux choses :
- la baseline
- le Call-To-Action


# Landing Page 1

    https://the-growth-hacking-project.herokuapp.com/?p=1
    
## Target

Cette Landing Page est dédiée aux associations populaires dont l'intérêt d'une telle formation leur permettrait d'apprendre le code à des formateurs.

## Back

- Mailer (un asso qui a envoyé des mails à des associations d'éducation populaire)

# Landing Page 2

    https://the-growth-hacking-project.herokuapp.com/?p=2

## Target

Les personnes qui sont à la recherche d'une formation pour apprendre à coder.

## Back

- Bot Twitter (qui tourne 1 fois par jour via Heroku Scheduler) qui récupère les derniers tweets contenant l'expression "apprendre à coder" et renvoi d'un tweet au handle qui a posté.


# Landing Page 3

    https://the-growth-hacking-project.herokuapp.com/?p=3
    
## Target

Pour les futurs entrepreneurs qui recherchent un CTO (et qui pourraient s'en passer).

## Back

- Bot Twitter (qui tourne 1 fois par jour via Heroku Scheduler) qui récupère les derniers tweets contenant l'expression "recherche un CTO" et renvoi d'un tweet au handle qui a posté.
   

# Mailer Newsletter 

Un mailer newsletter qui envoie régulièrement (avec Heroku Scheduler) un mail à ceux qui s'inscrivent.

# Tools Used

Utilisation de l'API MailChimp / Twitter / Gmail.
Bootstrap pour le front.

# Sayonara 

PS: We miss you Stan Lee :'(
