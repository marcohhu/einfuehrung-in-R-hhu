## ---- R in a nutshell -----
#Trinkeld
0.15*35.70

#trinkgeld_in_prozent
trinkgeld_in_prozent <- 0.20 

#bierdeckel
bierdeckel <- 50.35

#trinkgeld berechnen
trinkgeld <- trinkgeld_in_prozent * bierdeckel

print(trinkgeld)

trinkgeld * 10
trinkgeld / 5

bierdeckel <- c(35.70, 24.50, 12, 17.50)
bierdeckel

trinkgeld_in_prozent * bierdeckel

0.05 * bierdeckel

#Funktion anwenden
mean(bierdeckel)
sum(bierdeckel)
?mean