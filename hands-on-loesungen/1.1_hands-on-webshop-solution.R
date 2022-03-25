## ---- Hands-On: Webshop (Lösung) ----

# Gestern hatte ihr Online-Shop 200 Besucher.
# 3 von den Besuchern haben für insgesamt 600 Euro etwas eingekauft. 

# Aufgabe 1:
# Speichern Sie die Informationen als Werte in einzelnen Variablen ab. Füllen Sie dazu den Code aus, wo "___" steht. 

besucher <- 200
kaeufer <- 3
umsatz <- 600

# Aufgabe 2:
# Berechnen Sie, wie viel Prozent der Besucher etwas bei Ihnen kaufen und speichern Sie das Ergebnis in der Variable "anteil" ab. 
# Nutzen Sie dafür die Variablen und nicht die Zahlen. 

anteil <- kaeufer/besucher

# Aufgabe 3
# Berechnen Sie viel Umsatz sie im Schnitt pro Käufer gemacht haben und speichern die das Ergebnis im Objekt "umsatzProKaeufer" ab
# Nutzen Sie dafür die Objekte und nicht die Zahlen. 

umsatzProKaeufer <- umsatz/kaeufer 

# Aufgabe 4:
# Lassen Sie sich beide berechneten Werte ausgeben. 

anteil
umsatzProKaeufer

#Alternativ mit print()
print(anteil)
print(umsatzProKaeufer)

# Aufgabe 5:
# Gestern hatte ihr Online-Shop 250 Besucher, 5 von ihnen haben für insgesamt 1000 Euro etwas gekauft. 
# Berechnen Sie die Werte "anteil" und "umsatzProKaeufer" für Vorgestern, in dem Sie einfach die Zahlen oben im Skript anpassen und dann alles noch einmal ausführen.

besucher <- 250
kaeufer <- 5
umsatz <- 1000

anteil <- kaeufer/besucher

umsatzProKaeufer <- umsatz/kaeufer

anteil
umsatzProKaeufer