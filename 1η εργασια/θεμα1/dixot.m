function [k,q,p,w] = dixot(f, d, e, l, k,p,w) 
% f = antikeimenikh synarthsh
% d = diasthma anazhthshs
% e = apostash apo dixotomo
% l = evros anazithsh
% k = arithmos epanalipsis 
% w = ypologismoi ths f 
% q = neo diasthma 
% p = pinakas diasthmatwn
%%%% l>2e

a=d(1);
b=d(2);
% a,b oria diasthmatos anazhthshs

if k==1
    p(1,1)=a;
    p(1,2)=b;
    w=0;
end
if b-a <l
    q=[a b];
else
    z=(a+b)/2;
    %evresh meshs
    x1 = z-e;
    x2 = z+e;
    if subs(f,x1)>=subs(f,x2)
        k=k+1;
        q(1) = x1;
        q(2) = b;
        p(k,:) = q;
        w=w+2;
        [k,q,p,w] = dixot(f,q,e,l,k,p,w);
    elseif subs(f,x1)<subs(f,x2)
        k=k+1;
        q(1) = a;
        q(2) = x2;
        p(k,:) = q;
        w=w+2;
        [k,q,p,w] = dixot(f,q,e,l,k,p,w);
    end
end

%w=2*(k-1);
end