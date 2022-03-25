#Objekte

a <- 5
b <- "Hello World"
c <- TRUE

class(a)
class(b)
class(c)

#Boolean/Logical
5 > 6 #größer als 6

6 > 5 #6 größer als 5

#Struktur
str(a)
str(b)
str(c)

#Length
length(a)
length(b)
length(c)

#Achtung: Skalenniveau und R-Klasse passen nicht immer autmoatisch zusammen!

#Achtung R ist case sensitive

print(a)
print(A)

#Objekte in Formaten speichern
#vector (überschreiben)
a <- c(1,2,3,1,2,3)

class(a)
str(a)
length(a)

b <- c("eins", "zwei", "drei")
class(b)
length(b)

#welche klasse?
c <- c("1", "2", "3")

class(c)

#welche Klasse
d <- c(1, 2, "3")
class(d)


class_num <- a

class_chr <- b

#List
exp_list <- 
  list(
    class_num,
    class_chr
  )

exp_list
class(exp_list)
View(exp_list)

## ---- Indexing ----
#Indexing
exp_list[[1]]
exp_list[[2]][2]

exp_list[[2]]

exp_list[[2]][3]


#Element mit anderer Länge hinzufügen  
other_length <- c(1:10)
other_length
length(other_length)

exp_list[[3]] <- other_length

exp_list

## ----- Dataframe -----
#Dataframe

exp_dataframe <- as.data.frame(exp_list[[3]])
exp_dataframe
class(exp_dataframe)
View(exp_dataframe)

b <- c(1:10)
exp_dataframe <- cbind(exp_dataframe, b)
exp_dataframe

c <- c("a", "b", "c")
exp_dataframe <- cbind(exp_dataframe, c)
# error

exp_dataframe

#Variablennamen vergeben
names(exp_dataframe) <- c("var_1", "var_2")
exp_dataframe

#variablen anzeigen lassen:
names(exp_dataframe)
head(exp_dataframe)

#Anzahl der Fälle
nrow(exp_dataframe)


## ---- Missing Values -----

class(NA)

a <- c(1,2,3,4,5, NA)

is.na(a)
sum(is.na(a))

b <- c("eins", "zwei", "drei", "vier", "fünf", NA)

is.na(b)
sum(is.na(b))

df <- data.frame(a, b)

df

sum(is.na(df))




