function [k,q,p,w] = fib(f,l,e,d,k,n,x1,x2,y1,y2,p,w)
% f = synarthsh
% l = teliko evros
% d = diasthma anazhthshs
% e = stathera
%n = me to w mporw na epistrefw kai n me vash thn ekfonish anti gia to w

a=d(1);
b=d(2);
%n=1;
if k==1
    n=1;
    while fibonacci(n+1) < ((b-a)/l)
        n = n+1;
    end
    x1 = a+(fibonacci(n-1)/fibonacci(n+1))*(b-a);
    x2 = a+(fibonacci(n)/fibonacci(n+1))*(b-a);

    y1 = subs(f,x1);
    y2 = subs(f,x2);
    p(1,1)=a;
    p(1,2)=b;
    w=2;
    q=[a b];
end
if y1>=y2
    q(1)=x1;
    q(2)=b;
    p(k+1,:)=q;
    x1=x2;
    x2=q(1)+(fibonacci(n-k)/fibonacci(n-k+1))*(q(2)-q(1));
    y1 =y2;%f(x1k+1)=f(x2k)  
    if k==n-2
        %x1->xk+1=xn-1
        x1n=x1;
        x2n=x1+e;
        %f(x1n)=f(x1) ara y1
        y1n=y1;
        %f(x2n)=f(x1+e) ara prepei na thn ypologhsw
        y2n=subs(f,x2n);
        w=w+1;
        if y1n>y2n
            an=x1n;
            bn=q(2);%bn =bn-1=bk+1=q(2)
            q(1)=an;
            q(2)=bn;
        else 
            an= q(1); % an=an-1=ak+1=q(1)
            bn = x2n; % bn=bn-1=bk+1=q(2) 
            q(1)=an;
            q(2)=bn;
        end
        p(k+1,:)=q;
    else 
        y2=subs(f,x2);% f(x2k+1)
        w=w+1;
        k=k+1;
        [k,q,p,w]=fib(f,l,e,q,k,n,x1,x2,y1,y2,p,w);
    end

else
    q(1)=a;
    q(2)=x2;%x2k=x2
    p(k+1,:)=q;
    x2=x1;
    x1= q(1)+(fibonacci(n-k-1)/fibonacci(n-k+1))*(q(2)-q(1));
    y2 = y1; 
    y1 = subs(f,x1);
    w=w+1;
    if k==n-2
        %x1->xk+1=xn-1
        x1n=x1;
        x2n=x1+e;
        %f(x1n)=f(x1) ara y1
        y1n=y1;
        %f(x2n)=f(x1+e) ara prepei na thn ypologhsw
        y2n=subs(f,x2n);
        w=w+1;
        if y1n>y2n
            an=x1n;
            bn=q(2);%bn =bn-1=bk+1=q(2)
            q(1)=an;
            q(2)=bn;
        else 
            an= q(1); % an=an-1=ak+1=q(1)
            bn = x2n; % bn=bn-1=bk+1=q(2) 
            q(1)=an;
            q(2)=bn;
        end
        p(k+2,:)=q;
    else 
        k=k+1;
        [k,q,p,w]=fib(f,l,e,q,k,n,x1,x2,y1,y2,p,w);
    end
    

end

end