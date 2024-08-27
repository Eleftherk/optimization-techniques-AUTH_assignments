format long 
syms x;
f1(x)=(x-2)^2+x*log(x+3);
f2(x)=5^x+(2-cos(x))^2;
f3(x)=exp(x)*(x^3-1)+(x-1)*sin(x);
d= [-1 3];

e=0.003;
q=1;
z=0;
o1=0;
o2=0;
o3=0;
%{
for l=0.05 :-0.0005 :0.0005 %isws valw 0.0005 kai ta dyo
    z(q)=l;
    [r,t,p,o1(q)]=fib(f1,l,e,d,1);
    [r,t,p,o2(q)]=fib(f2,l,e,d,1);
    [r,t,p,o3(q)]=fib(f3,l,e,d,1);
    q=q+1;
end
figure('name','metavlhto l');
subplot(3,1,1)
plot(z,o1,Color="red")
xlabel("l")
ylabel("f(x1)")
title('metavlhto l')
subplot(3,1,2)
plot(z,o2,Color="green")
xlabel("l")
ylabel("f(x2)")
subplot(3,1,3)
plot(z,o3,Color="blue")
xlabel("l")
ylabel("f(x3)")
%}
l=0.025;
figure('Name', 'diasthma anazhthshs')
for i=3:3:12
    
    l=l*2; % l= 0.05, 0.1, 0.2, 0.4???
    [r,t,p,o]=fib(f1,l,e,d,1);
    subplot(4,3,(i-2))
    for w=1:o-1
        plot(w,p(w,1),".",Color="red")
        %scatter(w,p(w,1),"green")
        hold on
        plot(w,p(w,2),".",Color="blue")
        %scatter(w,p(w,2),"red")
        hold on
    end
    xlabel(sprintf("epanalipsi gia l = %0.2f" ,l)) 
    ylabel("a,b")


    
    [r,t,p,o]=fib(f2,l,e,d,1);
    subplot(4,3,i-1)
    for w=1:o-1
        plot(w,p(w,1),".",Color="red")
        %scatter(w,p(w,1),"green")
        hold on
        plot(w,p(w,2),".",Color="blue")
        %scatter(w,p(w,2),"red")
        hold on
    end
    xlabel(sprintf("epanalipsi gia l = %0.2f" ,l)) 
    ylabel("a,b")

    [r,t,p,o]=fib(f3,l,e,d,1);
    subplot(4,3,i)
    for w=1:o-1
        plot(w,p(w,1),".",Color="red")
        %scatter(w,p(w,1),"green")
        hold on
        plot(w,p(w,2),".",Color="blue")
        %scatter(w,p(w,2),"red")
        hold on
    end
    xlabel(sprintf("epanalipsi gia l = %0.2f" ,l)) 
    ylabel("a,b")
end
subplot(4,3,1)
title('f1(x)')
subplot(4,3,2)
title('f2(x)')
subplot(4,3,3)
title('f3(x)')