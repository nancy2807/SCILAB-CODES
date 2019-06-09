
function[P]=lagrange(X,Y) //X nodes,Y values;P is the numerical Lagrange
//polynomial interpolation
n=length(X); // n is the number of nodes. (n-1) is the degree
x=poly(0,"x");P=0;
for i=1:n, L=1;
 for j=[1:i-1,i+1:n] L=L*(x-X(j))/(X(i)-X(j));end
 P=P+L*Y(i);
end
endfunction

X=[30;34;38;42]; Y=[-30;-13;3;18]; 
//X=[2;2.5]; Y=[4;4.5];
P=lagrange(X,Y)
