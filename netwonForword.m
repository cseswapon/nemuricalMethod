clc
clear

x0=input('Enter the value of x0:');
p=input('Enter the value of p:');
h=input('Enter the value of h:');

u=(p-x0)/h;
x=[0.00 0.10 0.20 0.30 0.40];
y=[1.000 1.2214 1.4918 1.8221 2.2255];

dely0=y(2)-y(1);
dely1=y(3)-y(2);
dely2=y(4)-y(3);
dely3=y(5)-y(4);

fprintf('dely0=%0.4f\n dely1=%0.4f\n dely2=%0.4f\n dely3=%0.4f\n',dely0,dely1,dely2,dely3);

delsqry0=dely1-dely0;
delsqry1=dely2-dely1;
delsqry2=dely3-dely2;

fprintf('delsqry0=%0.4f\n delsqry1=%0.4f\n delsqry2=%0.4f\n',delsqry0,delsqry1,delsqry2);

delcubey0=delsqry1-delsqry0;
delcubey1=delsqry2-delsqry1;

fprintf('delcubey0=%0.4f\n delcubey1=%0.4f\n',delcubey0,delcubey1);

delfoury0=delcubey1-delcubey0;

fprintf('delfoury0=%0.4f\n',delfoury0);

fx=y(1)+u*dely0+u*(u-1)*delsqry0/factorial(2)+u*(u-1)*(u-2)*delcubey0/factorial(3)+u*(u-1)*(u-2)*(u-3)*delfoury0/factorial(4);

fprintf('The value of fx is %0.4f',fx);