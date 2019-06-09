//Simpson's (3/8)th Rule

deff('y=f(x)','y=x^4')
a=input("Enter Lower Limit: ")
b=input("Enter Upper Limit: ")
n=input("Enter number of sum intervals: ")
h=(b-a)/n
add1=0
add2=0
add3=0
for i=0:n
    x=a+i*h
    y=f(x)
    disp([x y])
    if (i==0)|(i==n) then
        add1=add1+y
        else if (modulo(i,3)==0) then
        add2=add2+y
    else
        add3=add3+y
    end
end
end
I=((3*h)/8)*(add1+2*add2+3*add3)
disp(I,"Integration by Simpsons (3/8)th Rule is:")
