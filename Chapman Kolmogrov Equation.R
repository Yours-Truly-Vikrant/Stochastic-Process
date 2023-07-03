#Calculate n-step Transition Probability(Chapman-Kolmogrov eq.)
#Consider a finite Markov Chain {Xn,n ≥ 0} with state space S = {1,2} and transition probability matrix(TPM) P1 as given below and initial probability distribution is [α1 = 0.35,α2 = 0.65]. Obtain the following terms.
#i)P12(2)  ii) P11(4)   iii) P(X27 = 1|X17 = 2) iv) P(X5 = 1) v) P(X8 = 2)
library(expm)
a=matrix(c(0.35,0.65),ncol=1,byrow = T)
P=matrix(c(0.7,0.3,0.4,0.6),ncol=2,byrow = T)
PT=c("P_12^2 = ","P_22^4= ","P_21^10= ","P(X_5= 1) = ","P(X_8= 2) = ")
Pr =c((P%^%2)[1,2],(P%^%4)[2,2],(P%^%10)[2,1],(t(a)%*%(P%^%5))[1],
      (t(a)%*%(P%^%8))[2])
data.frame(PT,Pr)


#. Consider a finite Markov Chain {Xn,n ≥ 0} with state space S = {0,1,2,3} and TPM P2 as given below. Obtain the following terms.
#i) P11(8)   ii) P(X8 = 2|X3 = 2) iii) P(X4 = 2) iv) P(X6 = 2)
#where initial probability distribution is [α0,α1,α2,α3] = [0.1,0.2,0.3,0.4]
library(expm)
a=matrix(c(0.1,0.2,0.3,0.4),ncol=1,byrow = T)
P=matrix(c(0.3,0.5,0.1,0.1,0.1,0.6,0.1,0.2,0,0.5,0.5,0,0,0.3,0.2,0.5),
         ncol=4,byrow = T)
PT=c("P_11^8 = ","P_22^5 = ","P(X_4 = 2) = ","P(X_6 = 2) = ")
Pr =c((P%^%8)[1,1],(P%^%5)[2,2],(t(a)%*%(P%^%4))[2],(t(a)%*%(P%^%6))[2])
data.frame(PT,Pr)


























