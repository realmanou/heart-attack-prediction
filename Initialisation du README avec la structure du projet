# heart-attack-prediction
Projet d'analyse prédictive des risques d'attaque cardiaque
Ce projet a été réalisé dans le cadre du Master 1 Data Science à l'Université Félix Houphouët-Boigny. Il vise à construire des modèles de machine learning pour prédire le risque d'attaque cardiaque à partir du dataset "heart.csv".
## Objectifs

*   Identifier les variables les plus influentes.
*   Comparer différents modèles de régression logistique.
*   Évaluer les performances via la validation croisée.
*   ## Données

Le dataset utilisé est "heart.csv", qui contient 303 observations et 13 variables explicatives. La variable cible est "output" (0 = faible risque, 1 = risque élevé). Les 13 variables explicatives sont :

*   age : Age
*   sex : Sexe
*   cp : Type de douleur thoracique
*   trtbps : Pression artérielle au repos
*   chol : Taux de cholestérol
*   fbs : Glycémie à jeun
*   restecg : Résultats de l'ECG au repos
*   thalachh : Fréquence cardiaque maximale atteinte
*   exng : Angine induite par l'exercice
*   oldpeak : Dépression du segment ST pendant l'exercice
*   slp : Type de pente du segment ST pendant l'exercice
*   caa : Nombre de vaisseaux sanguins colorés par fluoroscopie
*   thall : Thalassémie
## Méthodologie

1.  **Exploration des données :**
    *   Analyse descriptive pour comprendre la distribution des variables.
    *   Visualisations (histogrammes, boxplots) pour détecter les anomalies et les corrélations.
2.  **Construction des modèles :**
    *   Modèle complet (incluant toutes les variables explicatives).
    *   Modèle réduit (basé sur les variables significatives).
    *   Méthode pas à pas (stepwise regression) avec le critère AIC.
3.  **Évaluation des modèles :**
    *   Division du dataset en échantillons d'apprentissage et de test.
    *   Validation croisée K-fold (K=10) pour estimer les performances.

## Résultats

Le modèle retenu est le modèle `step.back.AIC`, car il a la plus petite erreur K-fold. Les variables significatives sont :

*   sex
*   cp
*   thalachh
*   exng
*   oldpeak
*   caa
*   thall

Les interactions significatives sont :

*   age:thalachh
*   oldpeak:restecg

## Code

Vous trouverez le code R utilisé pour ce projet dans les fichiers suivants :
*   `data_exploration.R`
*   `model_building.R`
*   `model_evaluation.R`
# Conclusion

Ce projet a permis de démontrer ma capacité à appliquer des techniques avancées de machine learning et d'analyse statistique dans un contexte médical. Les résultats obtenus offrent une base solide pour développer des outils prédictifs destinés à améliorer la prise en charge des patients.

## Contact

[Emmanuel DJDJE] - [emmanueldjedje57@gmail.com]
