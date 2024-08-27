format long
syms x;
f1(x)=(x-2)^2+x*log(x+3);
f2(x)=5^x+(2-cos(x))^2;
f3(x)=exp(x)*(x^3-1)+(x-1)*sin(x);
d=[-1 3];
% k gia k fores pou trexei h dixot h f kaleitai 2*(k-1) fores
z=0;
o1=0;
o2=0;
o3=0;
q=1;

for e=0.004 :-0.000125 :0.0005
    z(q)=e;
    [r,t,p,o1(q)]=dixot(f1,d,e,0.01,1);  
    [r,t,p,o2(q)]=dixot(f2,d,e,0.01,1);
    [r,t,p,o3(q)]=dixot(f3,d,e,0.01,1);
    q=q+1;
end
figure('Name','stathero l=0.01')
subplot(3,1,1)
plot(z,o1,Color="red")
xlabel("e") 
ylabel("f1(x)")
title('stathero l=0.01')
subplot(3,1,2)
plot(z,o2,Color="green")
xlabel("e") 
ylabel("f2(x)")
subplot(3,1,3)
plot(z,o3,Color="blue")
xlabel("e") 
ylabel("f3(x)")

q=1;
z=0;
o1=0;
o2=0;
o3=0;

for l=0.01 :-0.0005 :0.0025
    z(q)=l;
    [r,t,p,o1(q)]=dixot(f1,d,0.001,l,1);
    [r,t,p,o2(q)]=dixot(f2,d,0.001,l,1);
    [r,t,p,o3(q)]=dixot(f3,d,0.001,l,1);
    q=q+1;
end
figure('name','stathero e=0.001');
subplot(3,1,1)
plot(z,o1,Color="red")
xlabel("l")
ylabel("f(x1)")
title('stathero e=0.001')
subplot(3,1,2)
plot(z,o2,Color="green")
xlabel("l")
ylabel("f(x2)")
subplot(3,1,3)
plot(z,o3,Color="blue")
xlabel("l")
ylabel("f(x3)")

l=0.025;
figure('Name', 'diasthma anazhthshs')
for i=3:3:12
    l=l*2; % l= 0.05, 0.1, 0.2, 0.4
    [r,t,p,o]=dixot(f1,d,0.001,l,1);
    subplot(4,3,(i-2))
    for w=1:r
        plot(w,p(w,1),".",Color="red")
        %scatter(w,p(w,1),"green")
        hold on
        plot(w,p(w,2),".",Color="blue")
        %scatter(w,p(w,2),"red")
        hold on
    end
    xlabel(sprintf("epanalipsi gia l = %0.2f" ,l)) 
    ylabel("a,b")
    [r,t,p,o]=dixot(f2,d,0.001,l,1);
    subplot(4,3,i-1)
    for w=1:r
        plot(w,p(w,1),".",Color="red")
        %scatter(w,p(w,1),"green")
        hold on
        plot(w,p(w,2),".",Color="blue")
        %scatter(w,p(w,2),"red")
        hold on
    end
    xlabel(sprintf("epanalipsi gia l = %0.2f" ,l)) 
    ylabel("a,b")
    [r,t,p,o]=dixot(f3,d,0.001,l,1);
    subplot(4,3,i)
    for w=1:r
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


