# Mode Manuel v1.1 — Tactics Ogre: Reborn

**Version publique · Windows / Steam · 24 novembre 2026**

Ce pack comprend le patch BPS exact (v1.0), un créateur d'exécutable Windows et les instructions d'installation. Il ne contient aucun exécutable du jeu ni fichier appartenant à un autre mod.

## Fonctionnalités
- Tarot du Chariot désactivé.
- Auto-Battle des unités du joueur désactivé, y compris lorsque les commandes globales d'IA restent affichées : elles n'ont plus d'effet dans la configuration testée.
- Contrôle manuel des invités observé avec l'exécutable de référence validé.
- Retrait des cartes de bonus **avec le mod complémentaire obligatoire de ChaoticBrave**.

## Dépendance externe obligatoire
Installer séparément **Buff Card Removal**, par **ChaoticBrave** :
https://www.nexusmods.com/tacticsogrereborn/mods/27

Les fichiers de l'auteur ne sont pas redistribués dans cette archive. Pour obtenir le fonctionnement complet, installer les deux composants suivant les instructions :
[Guide d'installation](GUIDE_INSTALLATION.md) · [Dépendance et crédits](DEPENDANCE_CHAOTICBRAVE.md).

## Installation et compatibilité
1. Sauvegarder l'exécutable Steam et les données de combat.
2. Extraire `Tactics_Ogre_Reborn_Mode_Manuel_v1.1.zip`.
3. Utiliser `CREER_EXE.cmd` avec **sa propre copie décompactée compatible** (`Tactics Ogre Reborn.exe.unpacked.exe`).
4. Installer séparément Buff Card Removal selon la notice de l'auteur, puis l'exécutable généré.

**SHA-256 de l'exécutable source décompacté requis :** `7b0230a11498f40396c9048345e7cfe0ef442cb7ca8faffc6f197920d2669599`.

## Fichiers et intégrité
- Archive v1.1 : `dist/Tactics_Ogre_Reborn_Mode_Manuel_v1.1.zip` (8 619 octets).
- SHA-256 du ZIP : `ee81cc8004502346a53de975eb70796b36222bd0d868788cc4dd47ea81c054d8`.
- Patch BPS inclus : `TOR_Mode_Manuel_EXACT_v1.0.bps`.
- SHA-256 du BPS : `7c1dba87bb8ea8f1de0beed1ad6478de6acc4116e495803765988a9f6fd35332`.

## Limites
Version spécifique de l'exécutable ; une mise à jour Steam peut rendre le patch incompatible. Les confirmations de fonctionnement sont issues de la configuration testée par l'auteur du dépôt, pas d'une validation sur toutes les versions du jeu. Le menu d'IA peut rester visible, sans effet.

Voir également [l'historique](CHANGELOG.md) et [le manifeste technique](../metadata/MANIFEST.json).
