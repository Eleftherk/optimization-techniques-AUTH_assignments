format long

syms x y
f(x,y)=x^5*exp(-x^2-y^2);


%given gk for X0=(0,0)
sprintf("given gk x0=(0,0)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_given_gk(f,[0 0],0.6)
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(0,0)_given_gk"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(0,0)_given_gk"))
plot([1:1:k],times,"*")
xlabel ("k")
ylabel ("f(x,y)_k")


%given gk for X0=(-1,1)
sprintf("given gk x0=(-1,1)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_given_gk(f,[-1 1],0.6)
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(-1,1)given_gk"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*-",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(-1,1)_given_gk"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")


%given gk for X0=(1,-1)
sprintf("given gk x0=(1,-1)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_given_gk(f,[1 -1],0.6)
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(1,-1)_given_gk"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(1,-1)_given_gk"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")



%best_gk for X0=(0,0)
sprintf("best_gk x0=(0,0)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_best_gk(f,[0 0])
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(0,0)_best_gk"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(0,0)_best_gk"))
plot([1:1:k],times,"*")
xlabel ("k")
ylabel ("f(x,y)_k")


%best_gk for X0=(-1,1)
sprintf("best_gk x0=(-1,1)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_best_gk(f,[-1 1])
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(-1,1)_best_gk"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*-",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(-1,1)_best_gk"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")


%best_gk for X0=(1,-1)
sprintf("best_gk x0=(1,-1)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_best_gk(f,[1 -1])
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(1,-1)_best_gk"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(1,-1)_best_gk"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")


%armijio for X0=(0,0)
sprintf("armijo x0=(0,0)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_armijo(f,[0 0],0.6)
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(0,0)_armijo"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(0,0)_armijo"))
plot([1:1:k],times,"*")
xlabel ("k")
ylabel ("f(x,y)_k")


%armijo for X0=(-1,1)
sprintf("armijo x0=(-1,1)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_armijo(f,[-1 1],0.6)
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(-1,1)_armijo"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*-",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(-1,1)_armijo"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")


%armijo for X0=(1,-1)
sprintf("armijo x0=(1,-1)")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=newton_armijo(f,[1 -1],0.6)
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia X0=(1,-1)_armijo"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia X0=(1,-1)_armijo"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")


