a = @(x)sqrt(1+x*x);
w1 =@(x)x-a(x);
w2 = @(x)1/(x+a(x));


for k=4:10
    x = 10^k;
    x = single(x);
    k
    w1(x)
end

format long e