#Simulation of M/M/1 Queuing System
#In a bank, suppose that customer arrives at an exponential rate λ = 1 per minute for deposit some amount and there is only one server for amount deposition which provide service with exponential rate µ = 1.3 per minute. Simulate M/M/1 Queuing System from 11.00 am to 11.15 am. i.e. simulate {X(t),t ≥ 0} where X(t) denotes number of customers in the bank at time t.
lambda=1; mu=1.3; t=15;
inter=rexp(30,lambda);
arr=cumsum(inter);
arr=arr[arr<t];
n1=length(arr);
ser=rexp(n1,mu);
dep=rep(0,n1);
dep[1]=arr[1]+ser[1];
for (i in 2:n1)
{dep[i]=max(arr[i],dep[i-1])+ser[i];}
dep=dep[dep<t];
start=sort(c(0,arr,dep));n=length(start);
end=sort(c(t,arr,dep));
Nt=rep(0,n);
for (i in 2:n)
{Nt[i]=sum(arr<=start[i])-sum(dep<=start[i])}
d1=data.frame(start,to=rep(" <= t < ",n),end,Nt)
d1


#