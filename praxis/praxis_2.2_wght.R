#########################
#2.2 PRAXIS: Gewichtung #
#########################

#install.packages("survey")
library(survey)

library(rio)
df <- import("data/allbus_2018_gesamt.sav")

#Gewichtung
attributes(df$wghtpew)
table(df$wghtpew)

df.w <- svydesign(ids =~ 1, data = df, weights =~ wghtpew) 
# ~0 or ~1 is a formula for no clusters.


#Gewichtung Bildung
attributes(df$educ)
educ.table <- prop.table(table(df$educ))

educ.table

rownames(educ.table) <- c("Ohne Schulabschluss", "Volks-, Hauptschule",
                          "Mittlere Reife", "Fachhochschulreife",
                          "Hochschulreife",
                          "Anderer Abschluss", "Noch Schüler")

educ.table.w <- prop.table(svytable(~educ, design = df.w))
rownames(educ.table.w) <- c("Ohne Schulabschluss", "Volks-, Hauptschule",
                            "Mittlere Reife", "Fachhochschulreife",
                            "Hochschulreife",
                            "Anderer Abschluss", "Noch Schüler")
vergleich <- cbind(educ.table, educ.table.w)
View(vergleich)

colnames(vergleich) <- c("ohne Gewichtung", "mit Gewichtung")
View(vergleich)

vergleich

round(vergleich, 4)*100

vergleich <- round(vergleich, 4)*100

vergleich

#Vergleich mit dem Mittelwert aus den vorherigen Beispielen:
attributes(df$lm02)
mean(df$lm02, na.rm = TRUE)
svymean(~ lm02, df.w, na.rm = TRUE)

#by(df$lm02, df$eastwest, mean, na.rm=TRUE) #Mittelwert nach Gruppierungsvariable
#tapply(df$lm02, df$eastwest, mean, na.rm=TRUE)
