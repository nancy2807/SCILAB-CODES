//Backward Difference
x=input("Enter the value of x as row natrix:")
y=input("Enter the value of y as row matrix:")
xg=input("Enter xg at which we want to Interpolate:")
n=length(x)
h=x(2)-x(1)
u=(xg-x(n))/h
disp("Backward difference table is:")
for i=1:n-1
    disp(diff(y,i))
end
yg=y(n)
p=u
for i=1:n-1
    d=diff(y,i)
    yg=yg+p*d(n-i)
    p=p*((u+i)/(i+1))
end
disp(yg,"Interpolation by Backward difference table is :")
