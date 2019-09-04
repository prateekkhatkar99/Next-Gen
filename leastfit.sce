clear

Xi=0
Yi=0
XiYi=0
Xi2=0
disp("Enter the no of coordinates=")

n=input("Enter the no of coordinates=")
for i=1:n
    x(i)=input("Enter the x coordinates=")
    y(i)=input("Enter the y coordinates=")
end

for i=1:n
    Xi=Xi+x(i)
    Yi=Yi+y(i)
    XiYi=XiYi+x(i)*y(i)
    Xi2=Xi2+x(i)*x(i)
end
disp(Xi)
disp(Yi)
disp(Xi2)
disp(XiYi)
m=((n*XiYi)-(Xi*Yi))/((n*Xi2)-(Xi*Xi))
c=((Yi*Xi2)-(Xi*XiYi))/((n*Xi2)-(Xi*Xi))
disp(m)
disp(c)
clf()
plot(y=m*x+c,"b")
plot(x,y,"+")
function z=f(r)
    z=m*r+c
endfunction

r=x(1):x(n)
plot(r,f(r),"r")



