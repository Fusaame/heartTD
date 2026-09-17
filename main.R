# Permet de lire les valeurs de notre fichier et les mettre dans notre variable
patients <- read.csv("heart.csv")
#head(patients)

############################################ ETUDE SUR LA VARIABLE AGE ############################################
summary(patients$Age)
tranches_age <- cut(patients$Age, breaks = seq(0, 100, by = 10))
barplot(table(tranches_age), main = "Répartition des patients d'âge", xlab = "Tranches d'âge", ylab = "Nombre de patients", col = "steelblue", las = 2)
#boxplot(patients$Age, main = "Age de la population etudie", xlab = "Age", col = "lightblue")

############################################ ETUDE SUR LA VARIABLE Sexe ############################################
summary(patients$Sex)
barplot(table(patients$Sex), main = "Repartition des sexes", xlab = "Sex", ylab = "Nombre de patients", col = "Steelblue")

############################################ ETUDE SUR LA VARIABLE ChestPainType ############################################
summary(patients$ChestPainType)
#TODO expliquer la différence entre les maladies
barplot(table(patients$ChestPainType), main = "Repartition des type de douleurs", xlab = "Type de maladie", ylab = "Population", col = "Steelblue")

############################################ ETUDE SUR LA VARIABLE RestingBP ############################################
#pression artérielle au repos, exprimée en mm Hg.
summary(patients$RestingBP)
tranches_RestingBP <- cut(patients$RestingBP, breaks = seq(80,200, by = 20))
barplot(table(tranches_RestingBP), main = "Pression artérielle au repos en mm Hg", xlab = "Pression artérielle (repos)", ylab = "Population", col = "steelblue")

############################################ ETUDE SUR LA VARIABLE Cholesterol ############################################
# taux de cholestérol sérique, exprimé en mg/dl
summary(patients$Cholesterol)
tranches_Cholesterol <- cut(patients$RestingBP, breaks = seq(80,200, by = 20))
barplot(table(tranches_Cholesterol), main = "Taux de Cholestérol mg/dl", xlab = "Cholestérol", ylab = "Population", col = "steelblue")

############################################ ETUDE SUR LA VARIABLE FastingBS ############################################
#glycémie à jeun.
# — 1 : si la glycémie à jeun est supérieure à 120 mg/dl ;
# — 0 : sinon
barplot(table(patients$FastingBS), main = "Glycémie à jeun", xlab = "Glycémie", ylab = "Population", col = "Steelblue")

############################################ ETUDE SUR LA VARIABLE RestingECG ############################################
#résultats de l’électrocardiogramme au repos.
# — Normal : résultat normal ;
# — ST : présence d’anomalies de l’onde ST-T, telles que des inversions de l’onde T et/ou une élévation ou une dépression du segment ST supérieure à 0,05 mV ;
#— LVH : hypertrophie ventriculaire gauche probable ou certaine selon les critères d’Estes.
# TODO faire un deuxieme graph avec les autres valeurs car ca va jusqu'a 600
barplot(table(patients$RestingECG), main = "Au repos", xlab = "Type de résultat", ylab = "Population", col = "steelblue")

############################################ ETUDE SUR LA VARIABLE MaxHR ############################################
# fréquence cardiaque maximale atteinte, avec une valeur comprise entre 60 et 202.
tranche_MaxHR <- cut(patients$MaxHR, breaks = seq(60, 220, by = 20))
barplot(table(tranche_MaxHR), main = "Frequence cardiaque maximale", xlab = "Fréquence", ylab = "Population", col = "Steelblue", las = 2)


############################################ ETUDE SUR LA VARIABLE ExerciseAngina ############################################
# présence d’une angine de poitrine provoquée par l’exercice.
# — Y : oui
# — N : non
barplot(table(patients$ExerciseAngina), main = "Exercice angine poitrine", xlab = "Presence d'angine", ylab = "Population", col = "steelblue")


############################################ ETUDE SUR LA VARIABLE Oldpeak ############################################
# dépression du segment ST mesurée pendant l’exercice
# quantitative continue
hist(
  patients$Oldpeak,
  breaks = 20,
  main = "Distribution de la dépression du segment ST (Oldpeak)",
  xlab = "Oldpeak (mm)",
  ylab = "Nombre de patients",
  col = "steelblue",
  border = "white"
)

############################################ ETUDE SUR LA VARIABLE ST_Slope ############################################
# pente du segment ST au pic de l’exercice.
# — Up : pente ascendante
# — Flat : pente plate
# — Down : pente descendante
barplot(table(patients$ST_Slope), main = "Pente du sgemnt ST au pic de l'exercice", xlab = "Etat de la pente", ylab = "Population", col = "Steelblue")

############################################ ETUDE SUR LA VARIABLE HeartDisease ############################################
# variable cible indiquant la présence ou l’absence d’une maladie cardiaque.
# — 1 : présence d’une maladie cardiaque ;
# — 0 : absence de maladie cardiaque
barplot(table(patients$HeartDisease), main = "Presence de maladie cardiaque", ylab = "Population", col = "Steelblue")








