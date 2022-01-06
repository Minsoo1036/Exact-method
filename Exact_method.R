###Exact Method code
### #notice : you should find a proper mcmc iteration using elrm package.

#######
## ex1-1)
#######
x = c(rep(1,6),rep(0,21))
y = c(rep(1,2),rep(0,4),rep(1,2),rep(0,19))

### MLE
fit1=glm(y~x, family=binomial)
summary(fit1) #point estimate : 1.558

print(1.5581 - 1.96*1.1413)  # WALD CI lower bound
print(1.5581 + 1.96*1.1413)  # WALD CI upper bound


### Firth
library(logistf)

fit2=logistf(y~x)
summary(fit2) #point estimate : 1.466       # profile CI

print(1.4663 - 1.96*1.0949) # WALD CI lower bound
print(1.4663 + 1.96*1.0949) # WALD CI upper bound


### CMLE
set.seed(1234)# grouped data
library(elrm) 

x=c(1,0)
y=c(2,2)
n=c(6,21)
df=cbind(x,y,n)
df=as.data.frame(df)
fit3 = elrm(formula=y/n~x, interest=~x,
            r=2,iter=700000, burnIn=30000, dataset=df);

summary(fit3) #point estimate : 1.464 (1.482 in the book), Is there a problem in elrm with grouped data?

#fit3$coeffs.ci # CI

