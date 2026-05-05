---
title: Política de generación de identificadores (@gv.je)
description: Cada cuenta recibe un identificador único y permanente para iniciar sesión
published: true
date: 2026-03-17T09:29:19.116Z
tags: 
editor: markdown
dateCreated: 2026-03-17T09:29:18.052Z
---

Política de generación de identificadores (ES)
==============================================

1\. Propósito
-------------

Cada cuenta recibe un **identificador único y permanente** para iniciar sesión.

Las identidades públicas (actores y direcciones como `alice.gv.je`) son independientes.

* * * * *

2\. Estructura
--------------

4 letras del apellido\
+ 4 letras del nombre\
+ número

Ejemplo:

Dupont Alice → dupoalic1

* * * * *

3\. Campos de origen
--------------------

Se deben usar dos campos:

-   **nombre para el identificador**

-   **apellido para el identificador**

No generar el identificador a partir de un solo campo de nombre completo.

* * * * *

4\. Normalización
-----------------

Antes de generar:

-   usar minúsculas

-   eliminar acentos

-   eliminar espacios y guiones

-   transliterar si es necesario

-   mantener partículas como **de, del, ben, al, van**

* * * * *

5\. Nombres cortos
------------------

Si el nombre o apellido tiene menos de cuatro letras, usar el nombre completo disponible.

* * * * *

6\. Contador
------------

Ejemplo:

dupoalic1\
dupoalic2\
dupoalic3

* * * * *

7\. Identificadores prohibidos
------------------------------

No se permiten identificadores que contengan:

-   palabras ofensivas

-   palabras reservadas del sistema (admin, root, etc.)

* * * * *

8\. Permanencia
---------------

Una vez asignado, el identificador **no debe modificarse**.

* * * * *

9\. Privacidad
--------------

El identificador es solo técnico.\
Las identidades públicas utilizan direcciones como:

alice.gv.je\
cafe.gv.je
