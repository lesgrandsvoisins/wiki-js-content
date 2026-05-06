---
title: Gestion et création de comptes sur key.gv.je avec Keycloak
description: Nous utilisons Keycloak pour avoir des comptes unifiés sur plusieurs serveurs
published: true
date: 2026-03-17T09:26:18.779Z
tags: numerique, services, compte
editor: markdown
dateCreated: 2026-02-28T14:31:30.768Z
---

# Votre compte unifié sur key.gv.je

/ [home](../../home.md) / [numerique](../../numerique.md) / [services](../services.md) / Keycloak (key.gv.je)

Le serveur https://key.gv.je vous fournit un compte unifié avec le logiciel libre Keycloak.

Les noms d'utilisateurs sont une chaine de caractères alphanumériques sans espace et sans accent suivi de `@gv.je`. Le mien est `chris@gv.je`. [NOUVEAU SYSTEME D'IDENTIFIANTS D'UTILISATEURS](/numerique/comptes).

Si vous avez un compte, vous pouvez gérer vos informations depuis le lien ci-dessous (avec votre nom `@gv.je` *OU* avec votre courriel de référence externe). Si vous n'avez pas de compte, vous pouvez en créer un par le lien `Enregistrement` dans le lien ci-dessous.

https://key.gv.je/realms/master/account

Chaque compte a obligatoirement :

- Un **nom d'utilisateur** (exemple `vous@gv.je`) (sans espace ni accent)
- Un **courriel externe** (exemple `vous@gmail.com`) (et il faut valider sous 5 minutes après inscription, ou relancer le processus de validation, qui peut aller dans le SPAM/Pourriels/Indésirables) (pour compléter la validation, il faut cliquer sur le lien dans la page web en plus de cliquer sur le lien dans le courriel)
- Un **Nom de famille** (c'est un champs obligatoire)
- Les autres champs sont facultatifs et modifiables par vous : Prénom, Pseudonyme affiché, Numéro de téléphone.
- Le champs `@ courriels gérés par GV.je` est uniquement modifiable par les administrateurs. 

## Vérification de courriel

Lors de la vérification de votre compte **regardez dans le spam de votre email**, et faites attention, car le courriel de confirmation n'est valable que 5 minutes.

## Mot de passe oublié

Vous pouvez utiliser soit votre identifiant `@gv.je`, soit avec votre courriel externe.

https://key.gv.je/realms/master/protocol/openid-connect/auth

https://key.gv.je/realms/master/login-actions/reset-credentials

## Compte courriel

Le compte `@gv.je` est un compte courriel de réception par défault. Une intervention administrateur est requise pour envoyer des courriels depuis ce compte.

Le serveur mail.lesgrandsvoisins.com peut gérer les boîtes courriels de gv.je et d'autres domaines. Si vous avez d'autres comptes de courriel qui sont accessibles sur le plateform gv.je, ils sont listés dans le champ `autres courriels gérés par gv.je`.

## Identification par service externe (Google, etc.)

Il pourra avoir une possibilité de créer un compte et/ou s'identifier avec son compte externe (Google ou autre) en plus d'un mot de passe. Le mot de passe sera nécessaire pour certains services (Webdav et Email par exemples).

## Profile

gvUserAccount

| openLDAP | Keycloak | Commentaires |
| --- | --- | --- |
| mainMail | [email] | External email address single-valued |
| gvMail | gvMail | single-valued |
| mail | allMail | multi-valued |
| commonName (cn)* | username | required |
| userid (uid) | email [username] | required [required] |
| title | title |  |
| givenName (gn) | firstName |  |
| surname (sn)* | lastName | required |
| displayName | fullName |  |
| telephoneNumber | telephoneNumber |  |
| carLicense |  |  |
| password | password | |
| distinguishedName (dn) | | |
| | id | unique à Keycloak |
| entryUUID | | unique à OpenLDAP and referenced by Keycloak | 

gvMailbox

- gvMail*
- gvUserDN*
- gvMialQuota
- gvMailSend
- gvMailRecieve
- gvIMAP
- gvPOP3

gvMailDomain

- domainName*

gvMailAlias

- gvMail*
- gvUserDN*
- gvMailForward*

## Transition

Les comptes utilisateurs n'ont plus de @gv.je à la fin. 

uid -> mainMail  
cn -> gvMail (or can stay cn, why not)
part before @gv.je in cn -> uid
cn should be some permanent identifier, not just cosmetic, like mannchri




uidNumber = unique  
gidNumber = unique?  
homeDirector




