#Simulation of Compount Poisson Process.
#In a bank, suppose that customer arrives at an exponential rate λ = 1 per minute for depositing or withdrawing amount. Suppose the distribution of amount to be deposited or withdrawn has distribution N(µ = 1000,σ^2 = 400). Simulate the compound poisson process of the amount at counter from 11.00 am to 11.15 am. Consider initial amount at counter is Rs.10000/-.
lambda=1; time=15;
inter=rexp(30,rate=lambda)
arr=cumsum(inter)
arr=arr[arr<time];n=length(arr);
x=rnorm(n,1000,20); Zt=c(10000,10000+cumsum(x))
t1=c(0,arr);
t2=c(arr,time)
data.frame(t1,".."=rep("<=t<",n+1),t2,Nt=seq(0,n),Zt)


#