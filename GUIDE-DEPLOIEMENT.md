# Guide de déploiement — Impact Vente GEO (v1 démo)

Ce guide suppose que tu as déjà créé tes comptes GitHub, Supabase et Vercel.

## Étape 1 — Créer la base de données dans Supabase

1. Va sur ton projet Supabase.
2. Dans le menu de gauche, clique sur "SQL Editor".
3. Clique sur "New query".
4. Ouvre le fichier `supabase.sql` de ce dossier, copie tout son contenu, colle-le dans l'éditeur.
5. Clique sur "Run" (ou Ctrl+Entrée).
6. Tu dois voir un message de succès. Une table "products" a été créée.

## Étape 2 — Récupérer tes clés Supabase

1. Dans Supabase, va dans "Project Settings" (icône d'engrenage) > "API".
2. Copie la valeur "Project URL".
3. Copie la valeur "anon public" (une longue clé).
4. Garde ces deux valeurs sous la main, tu en auras besoin à l'étape 4.

## Étape 3 — Mettre le code sur GitHub

1. Va sur github.com, connecte-toi.
2. Clique sur le bouton "+" en haut à droite, puis "New repository".
3. Donne-lui un nom, par exemple `impact-vente-geo`.
4. Laisse-le en "Public" ou "Private" (peu importe pour l'instant), ne coche aucune case supplémentaire.
5. Clique sur "Create repository".
6. Sur la page qui s'affiche, cherche le lien "uploading an existing file".
7. Glisse-dépose TOUS les fichiers et dossiers de ce projet dans la zone (sauf le dossier "node_modules" s'il existe, il ne doit pas être envoyé).
8. En bas de la page, clique sur "Commit changes".

## Étape 4 — Déployer sur Vercel

1. Va sur vercel.com, connecte-toi.
2. Clique sur "Add New..." puis "Project".
3. Choisis le dépôt GitHub que tu viens de créer (`impact-vente-geo`).
4. Avant de cliquer sur "Deploy", cherche la section "Environment Variables".
5. Ajoute deux variables :
   - Nom : `NEXT_PUBLIC_SUPABASE_URL` — Valeur : l'URL copiée à l'étape 2
   - Nom : `NEXT_PUBLIC_SUPABASE_ANON_KEY` — Valeur : la clé "anon public" copiée à l'étape 2
6. Clique sur "Deploy".
7. Patiente 1 à 2 minutes. Vercel va te donner un lien (ex : impact-vente-geo.vercel.app).

## Étape 5 — Tester

1. Ouvre le lien fourni par Vercel.
2. Crée un compte avec ton email.
3. Vérifie ta boîte mail pour confirmer ton adresse (Supabase envoie un email de confirmation par défaut).
4. Connecte-toi, ajoute un produit (par exemple "Impact Vente"), clique sur "Voir l'analyse", puis "Lancer l'analyse (démo)".

Si tout s'affiche correctement, la version démo fonctionne. On pourra ensuite brancher les vraies API (Claude, OpenAI, Gemini) à la place des données factices.
