#######################################
#How to: Correlation                  #
#######################################

##package: for normal distributed data
#install.packages("faux")
library(faux)

#function

corl <- function(x,y){
  dat <- rnorm_multi(x, 2, r = y)
  out <- cor(dat)
  out_l <- list(dat, out)
  return(out_l)
  #return(out)
}

#use corl(observations, r)

#10 observations with r = .5
corl(10, 0.5)

#10 observations with r = .99
corl(10, 0.99)

#100 observations with r = .6
corl(100, 0.6)


#plot the correlation (install ggplot2)
corplot <- function(x,y){
  dat <- rnorm_multi(x, 2, r = y)
  out <- cor(dat)
  library(ggplot2)
  plot_out <- ggplot(dat, aes(x= X1,y = X2)) +
    geom_point(position = "jitter", alpha = 0.3)
  return(plot_out)
}

#use corplot(observations, r)

#100 observations with r = .5
corplot(100, 0.5)

#1000 observations with r = .9
corplot(1000, 0.9)

