function g=f(x,y)
    g=y-x^2
endfunction

x=0
y=1
h=0.1
n=input("Enter the number of iterations: ")

for i=1:3
    k1=h*f(x,y(i));
    k2=h*f(x+h/2,y(i)+k1/2)
    k3=h*f(x+h/2,y(i)+k2/2)
    k4=h*f(x+h,y(i)+k3)
    y(i+1)=y(i)+(1/6)*(k1+2*k2+2*k3+k4);
    x=x+h;
end

disp("using Adams-Bashforth-Moulton predictor-corrector method : ")

yp=y(4)+(h/24)*(55*f(x,y(4))-59*f((x-h),y(3))+37*f((x-2*h),y(2))-9*f((x-3*h),y(1)))
disp(yp,"Predicted value is ")

for i=1:n
    yc=y(4)+(h/24)*(9*f((x+h),yp)+19*f(x,y(4))-5*f((x-h),y(3))+f((x-2*h),y(2)))
   
    if abs(yc-yp)<0.000001 then
        disp(yc,"Corrected value is ")
        disp("This solution is corrected upto five decimal places.")
        break
    end;
    
    yp=yc;

    
end

