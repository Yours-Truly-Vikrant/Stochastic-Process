#Let {Xn,n ∈ N} be a Bienayme-Galton-Watson Branching Process with offspring distribution given by P[ξ = 0] = 0.2,P[ξ = 1] = 0.3,P[ξ = 2] = 0.2,P[ξ = 3] = 0.3. If X0 = 2,then realize X1,X2,··· ,X5 where Xn denote size of nth generation.
z=c(0,1,2,3)
pz=c(.2,.3,.2,.3)
x=c(rep(0,6))
x[1]=2
for (i in 1:5)
  x[i+1]=sum(sample(z,prob=pz,replace=T,size=x[i]))
x

#Let {Xn,n ∈ N} be a Bienayme-Galton-Watson Branching Process with offspring distribution specified by probability generating function as g (s) = 0.25 + 0.35s + 0.3s^2 + 0.1s^3.If X0 = 3 then obtain realization of {Xn,n ∈ N} for n = 0,1,··· ,8, Xn denote size of nth generation.
z=c(0,1,2,3)
pz=c(.25,.35,.3,.1)
x=c(rep(0,9))
x[1]=3
for (i in 1:8)
  x[i+1]=sum(sample(z,prob=pz,replace=T,size=x[i]))
x

#Let {Xn,n ∈ N} be a Bienayme-Galton-Watson Branching Process with offspring distribution given by P[ξ = 0] = 0.1,P[ξ = 1] = 0.2,P[ξ = 2] = 0.15,P[ξ = 3] = 0.2,P[ξ = 4] = 0.25,P[ξ = 5] = 0.1.If X0 = 1,then realize X1,X2,··· ,X7 where Xn denote size of nth generation.
z=c(0,1,2,3,4,5)
pz=c(0.1,0.2,0.15,0.2,0.25,0.1)
x=c(rep(0,8))
x[1]=1
for (i in 1:7)
  x[i+1]=sum(sample(z,prob=pz,replace=T,size=x[i]))
x












