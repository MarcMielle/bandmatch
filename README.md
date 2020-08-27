Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


ALGORITHME DE MATCHING [PSEUDOCODE + EXPLICATIONS] :

L'affichage des profils pertinents dépend de deux fonctionnalités qu'il convient de bien distinguer : d'une part, les préférences utilisateur (qui sont les seuls critères pris en compte dans le calcul du score d'affinité), et d'autre part les divers filtres qu'il est possible d'appliquer lors d'une recherche.

L'algorithme de matching stricto sensu ne fait donc appel qu'aux trois critères suivants : 

* 1. Le style de musique joué || 50%
* 2. Années d'expérience || 30%
* 3. Fréquence de répétitions hebdomadaire || 20%

Les pourcentages ci-dessus représentent la pondération de chacun de ces trois critères dans l'algorithme de matching. 

* 2. Le critère relatif aux années d'expérience agit comme un seuil : tout musicien ayant le niveau d'expérience requis (ou au-delà) recueille "tous les points". Une pénalité progressive est appliquée pour les musiciens ayant années d'expérience < critère renseigné.

* 3. Même remarque

## PSEUDOCODE


INITIALISATION :

musicien1 = utilisateur courant
musicien2
preferences_musicien1

ALGO :

score = 100
si preferences_musicien1.style != musicien2.style alors
    score -= 50
selon (diff1 = preferences_musicien1.années - musicien2.années)
    si 1 <= diff1 <= 3 alors
        score -= 7
    si 4 <= diff1 <= 7 alors
        score -= 20
    si diff1 > 7 alors
        score -= 30
selon (diff2 = preferences_musicien1.freq - musicien2.freq)
    si 1 <= diff2 <= 2 alors
        score -= 10
    si diff2 > 2 alors
        score -= 20

OUTPUT :

retourner score + "%"

si (diff1 = preferences_musicien1.années - musicien2.années) > 0 alors
score -= diff1*4
si (diff2 = preferences_musicien1.freq - musicien2.freq) > 0 alors
score -= diff2*7