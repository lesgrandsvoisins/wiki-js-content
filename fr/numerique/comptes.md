---
title: Comptes unifiés @GV.je
description: Voici nos comptes unifiés et notre politique pour établir les identifiants.
published: true
date: 2026-05-05T14:01:39.950Z
tags: numerique, compte
editor: markdown
dateCreated: 2026-03-17T09:26:17.165Z
---

# Politique de génération des identifiants (@gv.je)

/ [home](../home.md) / [Numérique](../numerique.md) / comptes @gv.je

Chaque compte reçoit un **identifiant unique et permanent** utilisé pour la connexion.\
Cet identifiant est technique et ne peut pas être modifié.

Les identités publiques (acteurs et adresses comme `alice.gv.je`) sont distinctes.


## Structure de l'identifiant

L'identifiant est construit comme suite:

```
4 premières lettres du nom de famille  
+ 4 premières lettres du prénom  
+ compteur
```

Exemple :

```
Dupont Alice → dupoalic1\
Dupont Alice (deuxième personne) → dupoalic2
```

## Champs utilisés

L'identifiant doit être généré à partir de :

-   **prénom pour l'identifiant**

-   **nom de famille pour l'identifiant**

Ne pas générer l'identifiant à partir d'un seul champ « nom complet ».


## Normalisation

Avant la génération :

-   utiliser des lettres minuscules

-   supprimer les accents

-   supprimer espaces, tirets et apostrophes

-   translittérer si nécessaire

-   conserver les particules faisant partie du nom (de, del, ben, al, van...)


## Noms courts

Si le prénom ou le nom comporte moins de quatre lettres, utiliser la totalité du nom.


## Compteur

Le compteur garantit l'unicité :

```
dupoalic1
dupoalic2
dupoalic3
```

## Identifiants interdits

Refuser les identifiants contenant :

-   mots offensants

-   mots réservés du système (admin, root, system...)


## Permanence

Un identifiant attribué **ne doit pas être modifié**.


## Vie privée

L'identifiant est un **identifiant technique**.\
Les identités publiques utilisent les adresses d'acteurs :

```
alice.gv.je
cafe.gv.je
atelier.gv.je
```