rollno=1:30
sname=paste('Student',1:30,sep='-')
df=data.frame(rollno,sname,stringsAsFactors =F)
df
summary(df)
gender=sample(c('M','F'),size=30,replace=T,prob=c(0.5,0.5))
df=data.frame(rollno,sname,gender,stringsAsFactors =F)
df
df$gender=factor(df$gender)
grade=sample(c('a','b','c','d'),size=30,replace=T,prob=c(.4,.2,.3,.1))
df=data.frame(rollno,sname,gender,grade,stringsAsFactors =F)
df
summary(grade)
gradef=factor(grade)
grade
summary(gradef)
table(gradef)
class(gradef)
gradef0=factor(grade,order=T)
gradef0
gradef1=factor(grade,order=T,levels=c('b','c','a','d'))
summary(gradef1)
gradef1
marks=ceiling(rnorm(30,mean=60,sd=5))
marks
student1=data.frame(marks,gender,gradef1)
boxplot(marks~gradef1,data=student1)
