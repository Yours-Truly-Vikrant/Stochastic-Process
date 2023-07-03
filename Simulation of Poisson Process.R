#Let {N(t),t ≥ 0} be the Poisson Process with rate λ = x. Simulate the interarrival times and hence waiting times up to t = y. Depict it graphically for 0 ≤ t ≤ y.
#i) x = 2 and y = 5 ii) x = 4 and y = 9.5 iii) x = 9 and y = 7
PoisProc=function(lambda,time)
{
  inter=rexp(20,rate=lambda)
  arr=cumsum(inter)
  arr=arr[arr<time];n=length(arr);
  t1=c(0,arr);
  t2=c(arr,time)
  x=data.frame(t1,".."=rep("<=t<",n+1),t2,Nt=seq(0,n));
  print(x);
  return(x)
}
#a)
lambda=2; time=5;
x=PoisProc(lambda,time)
#b) 
lambda=4; time=9.5;
x=PoisProc(lambda,time)
#c) 
lambda=9; time=7;
x=PoisProc(lambda,time)

#Simulate the Poisson process at time points t with rate λ without simulating its interarrival time.
#i) t = 1.5,2.2,3.8,7.5,8.8 & λ = 1 ii) t = 1.23,2.21,2.83,6.05,7.08,17.8 & λ = 1.5
SimuPoiss=function(lambda,t)
{
  n=length(t);
  Nt=rep(0,n)
  Nt[1]=rpois(1,lambda*t[1])
  for (i in 2:n)
  {Nt[i]=rpois(1,lambda*(t[i]-t[i-1]))}
  Nt=cumsum(Nt)
  x=data.frame(t,Nt)
  print(x)
  return(x)}
#i)
lambda=1;t=c(1.5,2.2,3.8,7.5,8.8);
x=SimuPoiss(lambda,t)
#ii)
lambda=1.5;t=c(1.23,2.21,2.83,6.05,7.08,17.8);
x=SimuPoiss(lambda,t)

#If {N(t),t ≥ 0} is the Poisson Process & N(x) = y. Simulate Poisson process for 0 ≤ t ≤ x i) x = 6 and y = 5 ii) x = 7 and y = 10 iii) x = 9 and y = 7
SimPoiss=function(n,t)
{
  arr=sort(runif(n,0,t));
  t1=c(0,arr);
  t2=c(arr,t)
  x=data.frame(t1,".."=rep("<=t<",n+1),t2,Nt=seq(0,n))
  print(x)
  return(x)
}
#i)
n=5;t=6;
x=SimPoiss(n,t)
#ii)
n=10;t=7;
x=SimPoiss(n,t)
#iii)
n=7;t=9;
x=SimPoiss(n,t)



