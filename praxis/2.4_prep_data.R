
#Filter: nur berufstätig

df <- df %>% filter(work == 1) %>% 
  select(work, inc, age, educ, sex, eastwest) %>% 
  na.omit() #delete missing values


#UV: Alter, Geschlecht, Bildung und Ost/west

#Sozioökonomie und Demografie

df$age_class[df$age < 20] <- "<20"
df$age_class[df$age >= 20 & df$age < 30] <- "20-29"
df$age_class[df$age >= 30 & df$age < 40] <- "30-39"
df$age_class[df$age >= 40 & df$age < 50] <- "40-49"
df$age_class[df$age >= 50 & df$age < 60] <- "50-59"
df$age_class[df$age >= 60 & df$age < 70] <- "60-69"
df$age_class[df$age >= 70] <- ">70"

age_level <- c("<20", "20-29", "30-39",
               "40-49", "50-59", "60-69", ">70")

#spezifizierung über levels = age_level. Achtung: die Variable age_level muss zuvor erstellt werden
df$age_class <- factor(df$age_class, levels = age_level)

attr(df$age_class, "label") <- list("Alter (Kategorisiert)")
attributes(df$age_class)

df$edu_c[df$educ == 1 | df$educ == 2] <- 1 #niedriges Bildungsniveau
df$edu_c[df$educ == 3] <- 2 # mittlere
df$edu_c[df$educ == 4 | df$educ == 5] <- 3 #hoch

edu_level <- c("low", "middle", "high")
df$edu_c <- factor(df$edu_c, levels = c(1,2,3), labels = edu_level)

attr(df$edu_c, "label") <- "Bildung (Kategorisiert)"
attributes(df$edu_c)

#Geschlecht

df$female <- factor(ifelse(df$sex == 1, 0, 1))

attr(df$female, "label") <- "Gender (Ref. Male)"

#Ostwest

df$west <- factor(ifelse(df$eastwest == 2, 0, 1))
attr(df$west, "label") <- "West(Ref. East)"
