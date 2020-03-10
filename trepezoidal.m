function [i] = trepezoidal(f1,a,b,n)



f=inline(f1);
fa=f(a);
fb=f(b);
h = (b-a)/n;
x = a;
fsum = 0;
for i = 1:n-1
    fsum=fsum+f(a+i*h);
end
i=(h/2)*(fa+2*fsum+fb)
end