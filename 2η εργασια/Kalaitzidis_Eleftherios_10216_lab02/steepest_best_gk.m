function [xk,k,shm] = steepest_best_gk(f,x1)
e=0.01;
k=1;
xk=x1;
syms x y gk
while true
    shm(k,:) = xk;
    p=vpa(subs(jacobian(f),[x y],xk));
    g=norm(p);

    if g<e
        break
    
    else 
        dk=-p;
        %gk 

        
        syn=-(subs(jacobian(f),[x y],xk-gk*subs(jacobian(f),[x y],xk)))*(subs(jacobian(f),[x y],xk))';
        gamk=vpa(solve(syn,gk));
        
        temp=1/0;
        tempgk=0 ;      
        for i=1:size(gamk)
            if gamk(i)>0
                if subs(f,[x y],xk+gamk(i)*dk)<temp
                    tempgk=gamk(i);
                    temp = subs(f,[x y],xk+tempgk*dk);
                end
            end
        end
        gamk=tempgk;

        xk=xk-gamk*p;
        k=k+1;
    end
end
end