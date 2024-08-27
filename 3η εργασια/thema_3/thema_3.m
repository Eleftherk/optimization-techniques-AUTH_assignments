syms x y
f=(1/3)*x^2+3*y^2

sprintf("given gk = 0.1, sk = 15 ")
x=0;
k=0;
shm=0;
times=0;
[x k shm]=steepest_project(f,[-5 10],0.1,15)
syms x y
figure("Name",sprintf("grafhkh synarthshs kai shmeia xk gia gk = 0.1, sk = 15"))
fsurf(f)
xlabel ("x")
ylabel ("y")
hold on 
for i=1:k
    times(i)=subs(f,[x y],[shm(i,1) shm(i,2)]);
    plot3(shm(i,1),shm(i,2),times(i),"*",Color="red")
    hold on 
end
figure ("Name",sprintf("grafhkh synarthshs-epanalipshs gia gk = 0.1, sk = 15"))
plot([1:1:k],times,"*-")
xlabel ("k")
ylabel ("f(x,y)_k")