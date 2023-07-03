#Simulation of Random walk
#Consider a finite Markov Chain {Xn,n ∈ N} with state space S = 0,1,2,3,4 and TPM is P1 and initial probabilities are α = [α0,α1,α2,α3,α4] = [0.1,0.2,0.3,0.2,0.2]. Simulate Xn up to n = 5.
Y=c(0,1,2,3,4)
S=seq(1:5);
alpha=c(.1,.2,.3,.2,.2)
n=5;
x=c(0,n+1);
x[1]=sample(S,1prob=alpha)
P=matrix(c(1,0,0,0,0,0.4,0,0.6,0,0,0,0.5,
           0,.5,0,0,0,0.2,0,0.8,0,0,0,0,1),nrow=5,byrow=TRUE)
for (i in 1:n)
{x[i+1]=sample(S,1,prob=P[x[i],])}
Y[x]



#Repeat the above example with TPM P2. Simulate Xn up to n = 7.
Y=c(0,1,2,3,4)
S=seq(1:5);
alpha=c(.1,.2,.3,.2,.2)
n=7;
x=c(0,n+1);
x[1]=sample(S,1,prob=alpha)
P=matrix(c(0.3,0.7,0,0,0,0.2,0,0.8,0,0,0,0.4,0,0.6,0,0,
           0,0.3,0,0.7,0,0,0,0.6,0.4),nrow=5,byrow=TRUE)
for (i in 1:n)
{x[i+1]=sample(S,1,prob=P[x[i],])}
Y[x]

#Consider a random walk {Xn,n ∈ N} with state space S = {··· ,−3,−2,−1,0,1,2,3,···}. Simulate Xn up to n = 7 where P[yi = 1] = 0.55 = 1−P[yi = −1] and X0 = 0
Y=c(1,-1);
pY=c(.55,.45);
Yi=sample(Y,7,replace=TRUE,prob=pY)
Xn=cumsum(Yi);Xn






