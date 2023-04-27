clc; 
clear;

x1 = input('Enter the value of x1: ');
x2 = input('Enter the value of x2: ');

for i=1:1:15
   t(i) = i;
   a(i) = x1;
   b(i) = x2;

   f1(i) = a(i)^3 - 9*a(i)+1;
   f2(i) = b(i)^3 - 9*b(i)+1;

   x0(i) = a(i) - (f1(i)*(b(i)-a(i)))/(f2(i)-f1(i));

   f3(i) = x0(i)^3 - 9*x0(i)+1;
   
    if(i>1)
        k(i) = ((x0(i) -x0(i-1))/x0(i))*100;
        m(i) = abs(k(i));

        if(m(i)<=0.0001)
            break;
        end
    end

    if(f1(i) * f3(i) > 0)
        x1 = x0(i)
    end
    if(f1(i) * f3(i) < 0)
        x2 = x0(i)
    end
end

result = [t' a' b' f1' f2' x0' f3' m'];
disp('Iteration    x1    x2   f1   fb  x0   f3  Error');
disp(result);
root = x0(i);
fprintf('The Root is %0.4f',root);