#Consider a renewal process {N(t),t ≥ 0} having following distribution for inter-arrival times. Then simulate the renewal process for 0 ≤ t ≤ y.
#a) N(µ = 2,σ^2 = 0.0625) & y = 5 b) Gamma(α = 2,β = 2) & y = 10 c) LN(µ = 0.5,σ^2 = 0.0025) & y = 7 d) Uniform(0,5) & y = 15
#lambda=2; t=5;inter=rexp(n=2*lambda*t,rate=lambda);
#mu=2;t=5;inter=rnorm(n=20,mu,sqrt(0.0625))
#alpha=2;beta=2;t=10;inter=rgamma(n=200,alpha,beta);
mu=0.5;sig2=0.0025;t=5;inter=rlnorm(n=20,mu,sqrt(sig2))
#a=0; b=5; t=15; inter=runif(n=200,a,b)
arr=cumsum(inter);
arr=arr[arr<t]
n=length(arr);
t1=c(0,arr)
ti=rep("<=t<",n+1)
t2=c(arr,t)
Nt=seq(0,n);
dat=data.frame("start"=round(t1,3),ti,"to"=round(t2,3),Nt)
dat
plot(t1,Nt,type="S")