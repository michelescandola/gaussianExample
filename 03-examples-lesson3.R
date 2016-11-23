rm(list=ls())
library(lme4)
library(ggplot2)

load("dataLesson2.RData")

str(dati)

summary(dati)

table(dati$subjectID)
table(dati$emotion)
table(dati$muscle)
table(dati$block)

table(dati$subjectID,dati$emotion,dati$muscle,dati$block)

ftable(table(dati$subjectID,dati$emotion,dati$muscle,dati$block))

dati1 = subset(dati,as.numeric(subjectID)<8)
dati1 = droplevels(dati1)

dati2 = subset(dati,as.numeric(subjectID)>7&as.numeric(subjectID)<15)
dati2 = droplevels(dati2)

dati3 = subset(dati,as.numeric(subjectID)>14&as.numeric(subjectID)<22)
dati3 = droplevels(dati3)

dati4 = subset(dati,as.numeric(subjectID)>21&as.numeric(subjectID)<29)
dati4 = droplevels(dati4)

dati5 = subset(dati,as.numeric(subjectID)>28&as.numeric(subjectID)<36)
dati5 = droplevels(dati5)

dati6 = subset(dati,as.numeric(subjectID)>35)
dati6 = droplevels(dati6)

ggplot(dati1,aes(y=y,x=EMO_Attrat_Att,colour=muscle))+
  geom_smooth(method="lm")+geom_point()+
  facet_wrap(~subjectID:block:emotion,ncol=4)+
  theme(legend.position="bottom")

ggplot(dati2,aes(y=y,x=EMO_Attrat_Att,colour=muscle))+
  geom_smooth(method="lm")+geom_point()+
  facet_wrap(~subjectID:block:emotion,ncol=4)+
  theme(legend.position="bottom")

ggplot(dati3,aes(y=y,x=EMO_Attrat_Att,colour=muscle))+
  geom_smooth(method="lm")+geom_point()+
  facet_wrap(~subjectID:block:emotion,ncol=4)+
  theme(legend.position="bottom")

ggplot(dati4,aes(y=y,x=EMO_Attrat_Att,colour=muscle))+
  geom_smooth(method="lm")+geom_point()+
  facet_wrap(~subjectID:block:emotion,ncol=4)+
  theme(legend.position="bottom")

ggplot(dati5,aes(y=y,x=EMO_Attrat_Att,colour=muscle))+
  geom_smooth(method="lm")+geom_point()+
  facet_wrap(~subjectID:block:emotion,ncol=4)+
  theme(legend.position="bottom")

ggplot(dati6,aes(y=y,x=EMO_Attrat_Att,colour=muscle))+
  geom_smooth(method="lm")+geom_point()+
  facet_wrap(~subjectID:block:emotion,ncol=4)+
  theme(legend.position="bottom")

# vogliamo analizzare come l'attivazione del muscolo viene modificata dall'emozione che dimostrava
# l'immagine e dal blocco. Vogliamo inoltre però togliere l'influenza dei questionari di empatia, e
# vedere l'effetto della covariata riguardante l'attrattività