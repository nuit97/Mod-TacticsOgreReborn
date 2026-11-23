# Installer Mode Manuel sur Windows

Il te faut ta copie Steam du jeu, l'exécutable décompacté compatible issu de ta copie, le ZIP Mode Manuel et le mod **Buff Card Removal** de **ChaoticBrave**. [Pack Mode Manuel](https://github.com/nuit97/Mod-TacticsOgreReborn/raw/refs/heads/main/dist/Tactics_Ogre_Reborn_Mode_Manuel_v1.1.zip) · [Fichier principal de ChaoticBrave](https://www.nexusmods.com/tacticsogrereborn/mods/27?tab=files)

1. **Sauvegarde les originaux.** Ferme le jeu. Dans ta bibliothèque Steam, ouvre le dossier des fichiers locaux de *Tactics Ogre: Reborn*. Copie `Tactics Ogre Reborn.exe` et le dossier `Data\battle` en lieu sûr, hors du jeu. Si la notice du mod téléchargé indique d'autres fichiers à remplacer, sauvegarde-les aussi.
2. **Crée l'exécutable Mode Manuel.** Extrais le ZIP de Mode Manuel dans un dossier à part. Place ton `Tactics Ogre Reborn.exe.unpacked.exe` à côté de `CREER_EXE.cmd`, ou indique son chemin quand le script te le demande. Double-clique sur `CREER_EXE.cmd`. Le fichier `Tactics Ogre Reborn - MODE MANUEL.exe` apparaît dans ce même dossier. Un message « source incompatible » indique qu'il faut la version décompactée précise dont l'empreinte figure ci-dessous.
3. **Installe le mod requis de ChaoticBrave.** Télécharge le fichier principal *Tactics Ogre Reborn Buff Card Removal* (version 1.3 référencée), puis extrais-le. Suis la notice de l'auteur pour placer son dossier `entry` et son fichier `battle_data_release.dat` dans `Data\battle`. Ce sont ses données qui retirent les cartes de bonus. [Page et instructions de ChaoticBrave](https://www.nexusmods.com/tacticsogrereborn/mods/27)
4. **Installe l'exécutable.** Renomme le fichier généré `Tactics Ogre Reborn.exe`, puis copie-le à la racine du jeu. Accepte le remplacement une fois la copie de sécurité de l'étape 1 effectuée. Lance le jeu via Steam.

> **Archive et dépôt :** le ZIP v1.1 regroupe le script et le BPS dans un même dossier. Dans les sources GitHub, ils sont classés dans `scripts/` et `patches/` ; le script du dépôt prend en charge ces chemins.

## Vérifier en combat

À la préparation, essaie d'activer l'IA pour tous, puis entre en bataille. Tes unités doivent attendre tes ordres, même si le menu d'IA globale reste visible. Le Tarot du Chariot doit être indisponible. Si des cartes de bonus apparaissent au sol, vérifie l'installation de **Buff Card Removal** à l'étape 3.

## Si l'exécutable est refusé

Le script accepte la source décompactée de **14 183 184 octets**, dont le SHA-256 est `7b0230a11498f40396c9048345e7cfe0ef442cb7ca8faffc6f197920d2669599`. Renommer un exécutable Steam compacté laisse son empreinte identique. Après une mise à jour du jeu, vérifie la compatibilité avant de réinstaller le pack.

## Désinstaller

Ferme le jeu. Restaure l'exécutable d'origine et les données sauvegardées à l'étape 1. La restauration des deux composants rétablit le fonctionnement antérieur du Chariot, de l'IA et des cartes de bonus.
