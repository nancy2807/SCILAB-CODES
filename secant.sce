// -------------------------
// Nonlinear Equation Solver
// Using the Secant Method
// -------------------------

str=x_mdialog(['** Solve Nonlinear Equations Using Secant Method **'], ..
      ['Function y='; 'Initial Guess p(0)'; 'Initial Guess p(1)' ; 'Tolerance'], ..
      ['x**3-5*x+1'; '0'; '1'; '0.0001']);
if (str == []) then return; end//stop if press cancel


deff('y=f(x)','y='+str(1));//Function to study

//Initial Guess
p1=evstr(str(2));//Initial guess p(0)
pn=evstr(str(3));//Initial guess p(1)
tol=evstr(str(4));//Required accuracy (tolerance)

//Print some information on screen
printf('\n\n Look for a root of '+str(1)+'=0 starting with p0='+str(2)+' and p1='+str(3)+'\n')
printf("\nNote: K=|p(n)-p(n-1)|/|p(n-1)-p(n-2)|^((1+sqrt(5)/2)\n")

mprintf('\n%3s %14s %14s %14s\n','n','pn','|p(n)-p(n-1)|','K')
mprintf('%3i %14.11f %14.11f %14.11f\n',fix(0),p1,0,0)
mprintf('%3i %14.11f %14.11f %14.11f\n',fix(1),pn,0,0)

//SECANT METHOD
//-------------
n=1;Diff=abs(pn-p1);
while (Diff>=tol) //Stop when "error" smaller than tolerance 
  p2=p1;p1=pn;//Save previous iterations
  Diff1=Diff; //Save previous difference |p(n)-p(n-1)|

  n=n+1;//New iteration
  pn = p1-f(p1)*(p2-p1)/(f(p2)-f(p1)); //Secant iteration
  Diff = abs(pn-p1);//Update difference |p(n)-p(n-1)|
  K=Diff/Diff1**((1+sqrt(5))/2); 

  //Print results on screen
  mprintf('%3i %14.11f %14.11f %14.11f\n',fix(n),pn,Diff,K)  
end

mprintf('\n%3i iterations required.to guarantee solution p=%10.7f accurate to within '+str(4)+'\n',n,pn)
