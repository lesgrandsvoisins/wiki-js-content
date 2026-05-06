---
title: Unified User Accounts in the @gv.je system
description: This is our system for allowing individual human beings to have unified accounts in @gv.je
published: true
date: 2026-03-17T09:49:15.536Z
tags: digital, accounts
editor: markdown
dateCreated: 2026-03-17T09:27:19.879Z
---

# Identifier Generation Policy (@GV.je System)

Each account receives a **unique and permanent identifier** used for login.\
This identifier is technical and cannot be changed once assigned.

Public identities (actors and addresses such as `alice.gv.je`) are separate and may change.


## Identifier Structure

Identifiers follow this format:

```
first 4 letters of family name
+ first 4 letters of given name
+ counter
```

Example:

```
Dupont Alice → dupoalic1
Dupont Alice (second person) → dupoalic2
```

The counter starts at **1** and increases only when necessary to maintain uniqueness.


## Source Fields

Identifiers must be generated from two explicit fields:

-   **Given name for identifier**

-   **Family name for identifier**

These fields are chosen deliberately and should reflect how the person normally identifies their name.

Do not generate identifiers from a single full-name field.


## Normalization Rules

Before generating the identifier, apply these rules:

-   convert all letters to lowercase

-   remove accents (é → e, ñ → n, etc.)

-   remove spaces, hyphens, and apostrophes

-   transliterate non-Latin scripts if needed

-   keep particles such as **de, del, ben, al, van**, etc. when they are part of the family name

Examples:

```
García López → garclope
Ben Ali → benali
Al Hassan → alhassan
van der Meer → vandermeer
O'Neill → oneill
```

Then apply the 4+4 rule.


## Short Names

If the given name or family name contains fewer than four letters, use the full available name.

Example:

```
Li Wei → liwei1
Ng Yu → ngyu1
```

## Counter Rule

The numeric counter ensures uniqueness.

Examples:

```
dupoalic1
dupoalic2
dupoalic3
```

Identifiers always include a number.


## Prohibited Identifiers

Identifiers must be rejected if they:

-   contain offensive or inappropriate substrings

-   match reserved system words (for example: admin, system, support, root)

If this occurs, increase the counter and generate the next identifier.


## Permanence

Once assigned, identifiers **must not be changed**, except in rare administrative corrections.


## Privacy

Identifiers are **technical login handles** and are not intended to be public identities.

Public identities appear through **actor addresses** such as:

```
alice.gv.je
cafe.gv.je
atelier.gv.je
```