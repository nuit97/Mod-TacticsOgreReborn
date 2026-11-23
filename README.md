# Tactics Ogre: Reborn — Mode Manuel

**Mod non officiel · Pack v1.1 · Windows / Steam**

**[Télécharger Mode Manuel v1.1 pour Windows (.zip)](https://github.com/nuit97/Mod-TacticsOgreReborn/raw/refs/heads/main/dist/Tactics_Ogre_Reborn_Mode_Manuel_v1.1.zip)**

Joue tes batailles tour par tour avec le Tarot du Chariot et le contrôle automatique de tes unités désactivés. Le mode complet requiert aussi **Buff Card Removal** de ChaoticBrave pour retirer les cartes de bonus. [Télécharger le mod requis sur Nexus Mods](https://www.nexusmods.com/tacticsogrereborn/mods/27?tab=files)

## Fonctionnalités

| Fonction | Composant |
| --- | --- |
| Tarot du Chariot désactivé | Notre patch BPS |
| Auto-Battle du joueur désactivé (individuel et global) | Notre patch BPS |
| Commandes d'IA globale visibles mais inopérantes | Comportement attendu |
| Contrôle manuel des invités, observé dans la configuration testée | Notre patch BPS |
| Apparition des Buff Cards et cartes de départ des ennemis supprimées | **Buff Card Removal** de ChaoticBrave |

## Installation

1. Ferme le jeu. Sauvegarde ton exécutable et les données que tu vas remplacer.
2. Extrais le ZIP de Mode Manuel dans un dossier à part. Lance `CREER_EXE.cmd` et indique **ta propre copie décompactée compatible** de l'exécutable. Le script vérifie son SHA-256 avant de créer le fichier modifié.
3. Installe le fichier principal **Buff Card Removal** en suivant les instructions de ChaoticBrave. Chaque joueur récupère ce composant directement auprès de son auteur. [Page de ChaoticBrave](https://www.nexusmods.com/tacticsogrereborn/mods/27)
4. Installe l'exécutable généré sous le nom `Tactics Ogre Reborn.exe`, puis lance le jeu via Steam. [Guide pas à pas et retour à l'origine](docs/GUIDE_INSTALLATION.md)

Le pack public contient uniquement le patch de différences BPS, les scripts Windows et la documentation. L'exécutable Steam standard encore compacté est incompatible avec ce BPS. [Empreintes de la version compatible](metadata/MANIFEST.json)

## Fichiers

- [Guide d'installation et de désinstallation](docs/GUIDE_INSTALLATION.md)
- [Dépendance et crédits](docs/DEPENDANCE_CHAOTICBRAVE.md)
- [Historique](docs/CHANGELOG.md)
- [Empreintes SHA-256](metadata/SHA256SUMS.txt)
- [Manifeste technique](metadata/MANIFEST.json)

## Arborescence

- [`docs/`](docs/) : guides, dépendance externe, historique.
- [`scripts/`](scripts/) : outils PowerShell et Windows de création de l'exécutable.
- [`patches/`](patches/) : patch BPS exact.
- [`metadata/`](metadata/) : manifeste et sommes de contrôle.
- [`dist/`](dist/) : ZIP v1.1 prêt à extraire (scripts et patch réunis dans le ZIP).

Si tu clones le dépôt plutôt que de télécharger le ZIP, le script `scripts/CREER_EXE.cmd` retrouve automatiquement le BPS dans `patches/`.

## Crédits et vérification

Merci à **ChaoticBrave** et aux contributeurs crédités sur sa page officielle (Flenky, Gibbed, EldritchAbomination, Ziegh) pour *Buff Card Removal*. Ce projet communautaire est gratuit. [Crédits et liens de l'auteur](docs/DEPENDANCE_CHAOTICBRAVE.md)

Le BPS du pack v1.1 reproduit octet pour octet l'exécutable de référence validé en jeu par Nuit. Les observations sur les invités et les menus d'IA concernent cette version du jeu.
