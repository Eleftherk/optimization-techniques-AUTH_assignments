format long
syms x y
f=(1/3)*x^2+3*y^2



%gk=0.1,0.3,3,5
%-10<=x1<=5
%-8<=x2<=12

sprintf("given gk = 0.1 ")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=steepest_given_gk(f,[1 4],0.1);
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia gk=0.1"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia gk=0.1"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")



sprintf("given gk = 0.3 ")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=steepest_given_gk(f,[1 4],0.3);
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia gk=0.3"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia gk=0.3"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")



sprintf("given gk = 3 ")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=steepest_given_gk(f,[1 4],3);
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia gk=3"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia gk=3"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")




sprintf("given gk = 5 ")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=steepest_given_gk(f,[1 4],5);
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia gk=5"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia gk=5"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")