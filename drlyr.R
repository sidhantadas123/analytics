library(dplyr)
dplyr::filter(mtcars,mpg>25&am==1)
?mtcars
mtcars%>%filter(mpg>25&am==1)%>%arrange(wt)%>%summarise(n())
count(mtcars)
mtcars%>%group_by(wt,vs,gear)%>%summarise(mean(mpg))
