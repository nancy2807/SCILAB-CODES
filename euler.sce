//Euler's Formula

deff('g=f(x,y)','g=3*x+2*y')
xo=input("Enter initial value of xo: ")
yo=input("Enter the value of yo: ")
h=input("Enter value of h: ")
xn=input("Enter Final value of xn: ")
n=(xn-xo)/h
for i=1:n
    y1=yo+h*f(xo,yo)
    xo=xo+h
    disp([xo y1])
    yo=y1
end
