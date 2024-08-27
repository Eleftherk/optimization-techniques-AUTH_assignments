function [k,q,p,w] = xrisos(f,l,d,k,x1,x2,y1,y2,p,w)
% f = synarthsh
% l = teliko evros anazhthshs
% d = diasthma anazhthshs
% k = arithmos epanalypshs
% y1,y2 lyseis ths f
% x1,x2 shmeia epilhshs
g = 0.618;
a = d(1);
b = d(2);

if k==1
    x1 = a+(1-g)*(b-a);
    x2 = a+g*(b-a);
    y1 = subs(f,x1);
    y2 = subs(f,x2);
    p(1,1)=a;
    p(1,2)=b;
    w=2;
end
if b-a < l
    q = [a b];
elseif y1>y2
    q(1) = x1;
    q(2) = b;
    x1 = x2;
    x2=q(1)+g*(q(2)-q(1));
    y1 = y2;
    y2 = subs(f,x2);
    w=w+1;
    k=k+1;
    p(k,:)=q;
    [k,q,p,w] = xrisos(f,l,q,k,x1,x2,y1,y2,p,w);
elseif y1<=y2
    q(1) = a;
    q(2) = x2;
    x2=x1;
    x1 = q(1)+(1-g)*(q(2)-q(1));
    y2 = y1;
    y1 = subs(f,x1);
    w=w+1;
    k = k+1;
    p(k,:)=q;
    [k,q,p,w]=xrisos(f,l,q,k,x1,x2,y1,y2,p,w);
end
%w=k+1;

end