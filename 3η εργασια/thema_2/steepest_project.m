function [xk,k,shm] = steepest_project(f,x0,gk,sk)
xk=x0;
e=0.01;
k=1;
while true
    shm(k,:) = xk;
    syms x y
    p=vpa(subs(jacobian(f),[x y],xk));
    g=norm(p);
    if k>=2000
        sprintf("η μέθοδος αποκλείνει")
        break
    end
    if g<e
       break
    else

        %[xk,p]=steepest_given_gk(f,xk,gk);

        
        xk_p=xk-sk*p;

        %provolh:
        if (-10>xk_p(1) || xk_p(1)>5 || -8>xk_p(2) || xk_p(2)>12)
            if -10>xk_p(1)
                xk_p(1)=-10;
            elseif xk_p(1)>5
                xk_p(1)=5;
            end

            if -8>xk_p(2)
                xk_p(2)=-8;
            elseif xk_p(2)>12
                xk_p(2)=12;
            end
        end
        xk=xk+gk*(xk_p-xk);
        k=k+1;
    end
end
end