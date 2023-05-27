n=input('Enter the number of buses in the system:');
for i = 1:n
    for j = 1:n
        fprintf('Enter the impedance between line %d and %d number\n',i,j);
        fprintf('Enter 0 if the impedance is not or specified');
        x=input(':');
        if j == i || x == 0 
            A(i,j) = 0;
        elseif j ~= i
            y=1/x;
            A(i,j)=y;
        end
    end
end
for k = 1:n
    for m =1:n
        if k == m
            Y(k,m)=0;
            for r = 1:n
                Y(k,m)= Y(k,m) + A(k,r);
            end
        elseif k ~= m
            Y(k,m)= -A(k,m);
        end
    end
end
disp('The bus matrix is:');
disp(Y);