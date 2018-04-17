% Finding the sagitta (with Newton's Method)
clear ;

r = 3/2;
d = 2*r;
N = 50;
eps = 1.0e-14;
i=1;
h(1)=0.8;
a=0.5;
b=3;
c = (b-a)/2;
f = @(h) (-3*pi*r^2/8)+(r^2*acos(1-(h/r)))-((r-h)*sqrt(-h*(h-2*r)));
df = @(h) r/(sqrt(1-(1-h/2)^2))-((r-h)*(2*r-2*h))/(2*sqrt(-h*(h-2*r)))+sqrt(-h*(h-2*r));


% Newton's Method
diff(1) = h(1);
while (i<N) && (diff(i)>eps)
    h(i+1) = h(i)-f(h(i))/df(h(i));
    diff(i+1)= abs(h(i+1)-h(i));
    i=i+1;
end
h=h'
H = h(i);
fprintf('\n\nThe gas mark should not get below %f units.\n\n',H)




    
