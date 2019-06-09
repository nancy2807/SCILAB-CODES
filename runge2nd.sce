deff('g=f(x,y)','g=2*y+x')
xo=input("Enter initial value of xo: ")
yo=input("Enter the value of yo: ")
h=input("Enter value of h: ")
xn=input("Enter Final value of xn: ")
n=(xn-xo)/h
for i=1:n
    k1=h*f(xo,yo)
    k2=h*f(xo+h,yo+k1)
    y1=yo+(1/2)*(k1+k2)
    xo=xo+h
    disp([xo y1])
    yo=y1
end
