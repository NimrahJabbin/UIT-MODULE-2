function [itr,root,err] = falsimethod(f,a,b,es)
%syms x;
%func = input('write function');
%xl = input('write initial point');
%%xu = input('write final point');
%es = input('write stoping criteria');
fprintf('NIMRAH JABBIN AP-083')
f = inline(f1);
itr = 1;
err=100;
cold = 1;
xl = a;
xu = b;
while (err > es)

fxu = f(xu);
fxl = f(xl);
xr = xu - ((fxu*(xu-xl))/(fxu-fxl));
fxr = f(xr);

%fprintf('\n itr=%2.1f xl=%2.6f fxl=%2.6f xu=%2.6f fxu=%2.6f xr=%2.6f fxr=%2.6f err=%2.6f',itr,xl,fxl,xu,fxu,xr,fxr,err);

if (fxr*fxu <= 0)
    
xu = xl;
xl = xr;

else 
   
xu = xu;
xl = xr;

end

err = abs((xr-cold)*100/xr);
cold = xr;
itr = itr + 1; 

end
root=xr;
fprintf ('\n root = %2.6f error = %2.5f itr = %2.1f',root,err,itr)
end