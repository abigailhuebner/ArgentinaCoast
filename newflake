function newflake

clc;
clear;

global x y

a=[0;0];
b=[1;0];

f=[b(1)*cos(-pi/3)-b(2)*sin(-pi/3)
   b(1)*sin(-pi/3)+b(2)*cos(-pi/3)];

n=3;

x=[];y=[];

koch(a,b,n);
koch(b,f,n);
koch(f,a,n);

h=fill(x,y,'w');
axis equal
axis off
set(gcf,'color','w')
set(gcf,'doubleBuffer','on')
figure(gcf)


function koch(w,v,n)

global x y

if n==0
    %     plot([a(1) b(1)],[a(2) b(2)])
    x=[x w(1) v(1)];
    y=[y w(2) v(2)];
else
    c=w+(v-w)/4;
    d=w+3*(v-w)/4;
    e=[(.5*(d(1)-c(1)))*cos(.505)-(.5*(d(2)-c(2)))*sin(.505)+c(1)
        (.5*(d(1)-c(1)))*sin(.505)+(.5*(d(2)-c(2)))*cos(.505)+c(2)];
    f=[d(1)-(.5*(d(1)-c(1))*cos(.505)-.5*(d(2)-c(2))*sin(.505))
        d(2)-(.5*(d(1)-c(1))*sin(.505)+.5*(d(2)-c(2))*cos(.505))];
    koch(w,c,n-1)
    koch(c,e,n-1)
    koch(e,f,n-1)
    koch(f,d,n-1)
    koch(d,v,n-1)
end
