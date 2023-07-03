#Realization of Markov Chain
#Consider a finite Markov Chain {Xn,n ∈ N} with state space S = {1,2,3,4} and TPM is P1 and initial probabilities are α = [α1,α2,α3,α4] = [0.1,0.2,0.3,0.4]. Generate the above Markov Chain up to n=5. (i.e. Obtain the realization X0,X1,··· ,X5)
s=seq(1,4,1)
a=matrix(c(0.1, 0.2, 0.3, 0.4),ncol=1,byrow = T)
P=matrix(c(.5,.5,0,0,0,.3,.3,.4,.2,.2,.4,.2,1,0,0,0),ncol=4,byrow = T)
x=rep(0, 5)
x[1]=sample(s,1,prob = a);
x[1]
for (i in 2: 5)
{
  x[i]=sample(s,1,prob = P[x[i-1],]);
}
x

#Consider a finite Markov Chain {Xn,n ∈ N} with state space S = {1,2,3} and transition probability matrix is P2 and initial probabilities are α = [0.3,0.5,0.2] Generate the above Markov Chain up to n = 5.
s=seq(1,3,1)
a=matrix(c(0.3,0.5,0.2),ncol=1,byrow = T)
P=matrix(c(0.3,0.2,0.5,0.2,0.5,0.3,0.3,0.4,0.3),ncol=3,byrow = T)
x=rep(0,5)
x[1]=sample(s,1,replace=T,prob = a);
x[1]
for (i in 2:5)
{
  x[i]=sample(s,1,replace=T,prob = P[x[i-1],]);
}
x



























