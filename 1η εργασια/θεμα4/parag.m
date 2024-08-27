function [k,q,j,n] = parag(f,d,l,k,n,j)
a=d(1);
b=d(2);
if k==1
    n=1;
    while (1/2)^n>l/(b-a)
        n=n+1;
    end
    j(1,1)=a;
    j(1,2)=b;
    %w=0;
end
x=(a+b)/2;
p=subs(diff(f),x);
%w=w+1;
if p==0
    q=[x x];
    j(k+1,:)=q;
elseif p>0
    q(1)=a;
    q(2)=x;
    j(k+1,:)=q;
    if k<n
        k=k+1;
        [k,q,j,c]=parag(f,q,l,k,n,j);
    end
elseif p<0
    q(1)=x;
    q(2)=b;
    j(k+1,:)=q;
    if k<n
        k=k+1;
        [k,q,j,c] = parag(f,q,l,k,n,j);
    end
end
%w=k;
end