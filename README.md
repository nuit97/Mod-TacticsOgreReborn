# Tactics Ogre: Reborn — Mode Manuel

**Mod non officiel · Pack v1.1 · Windows / Steam**

Un patch binaire pour jouer à Tactics Ogre: Reborn sans Tarot du Chariot ni contrôle automatique des unités du joueur. Les menus d'IA globale peuvent rester visibles, **mais leur activation est sans effet**, comme vérifié sur la configuration de référence. Le contrôle manuel des invités était également possible dans cette configuration.

## Fonctionnalités

| Fonction | Composant |
| --- | --- |
| Tarot du Chariot désactivé (pas le Tarot du Monde) | Notre patch BPS |
| Auto-Battle du joueur désactivé (individuel et global) | Notre patch BPS |
| Commandes d'IA globale visibles mais inopérantes | Comportement attendu |
| Contrôle manuel des invités, observé dans la configuration testée | Notre patch BPS |
| Buff Cards supprimées | **Dépendance externe obligatoire pour le mode complet** |

## Dépendance : ChaoticBrave

**Téléchargement séparé obligatoire : [Tactics Ogre Reborn Buff Card Removal — ChaoticBrave (Nexus Mods)](https://www.nexusmods.com/tacticsogrereborn/mods/27)**.

Notre BPS ne supprime **pas** les Buff Cards. Pour bénéficier des trois changements, il faut installer le mod de ChaoticBrave soi-même depuis sa page. **Aucun de ses fichiers n'est contenu ou redistribué ici.** Nous ne sommes pas affiliés à cet auteur et n'affirmons pas qu'il approuve ce projet.

## Installation

1. Lis le [guide détaillé](GUIDE_INSTALLATION.md).
2. Sauvegarde ton exécutable et `Data/battle`.
3. Télécharge puis installe séparément le [mod de ChaoticBrave](https://www.nexusmods.com/tacticsogrereborn/mods/27).
4. Applique [notre patch BPS](TOR_Mode_Manuel_EXACT_v1.0.bps) avec `CREER_EXE.cmd` à **ta propre version unpacked exacte et compatible** de l'exécutable du jeu, puis installe le fichier généré.
5. Vérifie les fonctionnalités en combat.

**Compatibilité stricte :** l'installateur vérifie les empreintes SHA-256 et refuse les versions inconnues. Le patch ne contient aucun exécutable complet, sauvegarde ou fichier de jeu.

## Fichiers

- [Guide d'installation et de désinstallation](GUIDE_INSTALLATION.md)
- [Dépendance et crédits](DEPENDANCE_CHAOTICBRAVE.md)
- [Historique](CHANGELOG.md)
- [Empreintes SHA-256](SHA256SUMS.txt)
- [Manifeste technique](MANIFEST.json)

## Crédits et précautions

Merci à **ChaoticBrave** et aux contributeurs crédités sur sa page officielle (Flenky, Gibbed, EldritchAbomination, Ziegh) pour *Buff Card Removal*. Les droits sur *Tactics Ogre: Reborn* appartiennent à leurs titulaires. Ce mod est communautaire, non officiel et gratuit.

Aucune ROM, aucun EXE complet, aucun contenu du mod tiers ni sauvegarde personnelle ne sont distribués. Une distribution de patch ne garantit pas automatiquement le respect de toutes les conditions du jeu : chaque utilisateur doit posséder sa propre copie et respecter les règles applicables.

**Tests :** le patch BPS a été appliqué à la base exacte et le résultat correspond, octet par octet, à l'exécutable modifié fourni et validé en jeu par le créateur. Cette compatibilité ne s'étend pas automatiquement aux mises à jour futures.
