function [ y ] = Fn( x )
%lab 1 cw 4
N=100;
sum=0;
for k=0:N
    stepValue = x^k/factorial(k);
    sum = sum + stepValue;
end
y=sum;

end

