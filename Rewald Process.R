#Rewald Process
rm(list=ls(all=T))
n=500;
x=sample(c(-1,1),n,replace=T)
y=cumsum(x)
plot((1:n),y,type='s',xlab="sample",ylab="cumsum of x")