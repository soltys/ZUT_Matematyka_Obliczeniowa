format long e

err  = @(x) abs(Fn(x)-exp(x))/abs(exp(x));

input= -100:10:100;

output=arrayfun(err,input);
plot(input,output)
