clc; 
clear;

a = input('Enter the value of a: ');
b = input('Enter the value of b: ');

for i=1:1:15
    t(i) = i;
    x1(i) = a;
    x2(i) = b;
    c(i) = (x1(i)+x2(i))/2;

    if(i>1)
        k(i) = ((c(i) - c(i-1)) / c(i))*100;
        m(i) = abs(k(i));
        if(m(i)<=0.0001)
            break;
        end
    end

    f1(i) = x1(i)^3-9*x1(i)+1;
    f2(i) = c(i)^3-9*c(i)+1;

    if(f1(i)*f2(i)>0)
        a = c(i)
    end

    if(f1(i)*f2(i)<0)
        b = c(i)
    end
end

result = [t' x1' x2' c' f1' f2' m'];
disp('Iteration    a    b   c   fa  fb  error');
disp(result);
root = c(i);
fprintf('The Root is %0.4f',root);