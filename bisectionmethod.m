function [itr,root,err] = bisectionmethod(f,a,b,es)
%syms x;
%f = input('enter function=');
%a = input('enter lower limit=');
%b = input('enter upper limit=');
%es = input('enter stoping criteria=');
err = 100 ;
cold= 1;
itr = 1;

while(err>es)
c= (a+b)/2;
fa = subs(f,a);
fb = subs(f,b);
fc = subs(f,c);
%fprintf('\n itr=%2.1f a = %2.6f fa=%2.6f b = %2.6f fb=%2.6f c=%2.6f fc=%2.6f err=%2.6f' , itr,a,fa,b,fb,c,fc,err);
if (fa*fc<=0)
b = a;
a = c;
else
a = c;
b = b;
end



err = abs(c-cold)*100/c;
cold = c;
itr = itr + 1;


end
root = c;
%fprintf('\n function = ',f);
fprintf(' root = %2.6f  err=%2.6f itr=%2.1f',c,err,itr);
end