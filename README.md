Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


ALGORITHME DE MATCHING [PSEUDOCODE + EXPLICATIONS] :

L'affichage des profils pertinents dépend de deux fonctionnalités qu'il convient de bien distinguer : d'une part, les préférences utilisateur (qui sont les seuls critères pris en compte dans le calcul du score d'affinité), et d'autre part les divers filtres qu'il est possible d'appliquer lors d'une recherche.

L'algorithme de matching stricto sensu ne fait donc appel qu'aux trois critères suivants : 

* 1. Le style de musique joué || 50%
* 2. Années d'expérience || 30%
* 3. Fréquence de répétitions hebdomadaire || 20%

Les pourcentages ci-dessus représentent la pondération de chacun de ces trois critères dans l'algorithme de matching. 

* 2. Le critère relatif aux années d'expérience agit comme un seuil : tout musicien ayant le niveau d'expérience requis (ou au-delà) recueille "tous les points". Une pénalité progressive est appliquée pour les musiciens ayant année d'expérience < critère renseigné.

* 3. Même remarque

## PSEUDOCODE

