function [itr,root,err] = nrmethod(f,a,b,es)

c = (a+b)/2;
itr=0;
err=100;

while err>es
    dfx=diff(f);
    x=c-subs(f,c)/subs(dfx,c);
    err=abs((x-c)/x)*100;
    c = x;
    itr=itr+1;
    fprintf('\n itr = 2.6%f ,root =%2.6f,err=%2.6f' , itr,x,err)
    
end
end

