//Runge Kutta 4rth order

deff('g=f(x,y)','g=2*y+x')
xo=input("Enter initial value of xo: ")
yo=input("Enter the value of yo: ")
h=input("Enter value of h: ")
xn=input("Enter Final value of xn: ")
n=(xn-xo)/h
for i=1:n
    k1=h*f(xo,yo)
    k2=h*f(xo+(h/2),yo+(k1/2))
    k3=h*f(xo+(h/2),yo+(k2/2))
    k4=h*f(xo+h,yo+k3)
    y1=yo+(1/6)*(k1+2*k2+2*k3+k4)
    xo=xo+h
    disp([xo y1])
    yo=y1
end
