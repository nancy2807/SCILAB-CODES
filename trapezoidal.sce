//Trapezoidal Rule

deff('y=f(x)','y=x^4')
a=input("Enter Lower Limit: ")
b=input("Enter Upper Limit: ")
n=input("Enter number of sum intervals: ")
h=(b-a)/n
add1=0
add2=0
for i=0:n
    x=a+i*h
    y=f(x)
    disp([x y])
    if(i==0)|(i==n)
        add1=add1+y
    else
        add2=add2+y
    end
end
I=(h/2)*(add1+2*add2)
disp(I,"Integration by Trapezoidal Rule is:")
