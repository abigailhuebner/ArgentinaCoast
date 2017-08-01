function Argentina

close all; %clears everything in the command center before
clear; %clears stored variables

global x y %all functions use the same x and y
global x1 y1
global x2 y2
global x3 y3
global x4 y4

a=[.6;.9];
b=[1.9;7.2];
c=[3.7;13.1];
d=[5.8;19.2];
e=[11;22.8];
f=[12;29];


n=2;     % number of iterations

x=[];y=[];
x1=[];y1=[];
x2=[];y2=[];
x3=[];y3=[];
x4=[];y4=[];

koch1(a,b,n);
koch1(b,c,n);
koch2(c,d,n);
koch3(d,e,n);
koch4(e,f,n);



h=fill(x,y,'k',x1,y1,'k',x2,y2,'k',x3,y3,'k',x4,y4,'k'); %fills the 2D shape with a color
axis equal %defines axis
axis off %makes axis not show
set(gcf,'color','w') %fills background with a color
set(gcf,'doubleBuffer','on') 
figure(gcf)
hold on; 

function koch(w,v,n)

global x y 

if n==0
        plot([w(1) v(1)],[w(2) v(2)])
    x=[x w(1) v(1)];
    y=[y w(2) v(2)];
else 
    c=w+(v-w)/4;
    d=w+3*(v-w)/4;
    e=[(.5*(d(1)-c(1)))*cos(.505)-(.5*(d(2)-c(2)))*sin(.505)+c(1)
        (.5*(d(1)-c(1)))*sin(.505)+(.5*(d(2)-c(2)))*cos(.505)+c(2)];
    f=[d(1)-(.5*(d(1)-c(1))*cos(.505)-.5*(d(2)-c(2))*sin(.505))
        d(2)-(.5*(d(1)-c(1))*sin(.505)+.5*(d(2)-c(2))*cos(.505))];
    koch1(w,c,n-1)
    koch1(c,e,n-1)
    koch1(e,f,n-1)
    koch1(f,d,n-1)
    koch1(d,v,n-1)
    
end


function koch1(w,v,n)

global x1 y1

if n==0 
        plot([w(1) v(1)],[w(2) v(2)])
    x1=[x1 w(1) v(1)];
    y1=[y1 w(2) v(2)];
else 
    c=w+(v-w)/4;
    d=w+3*(v-w)/4; 
    e=[(.5*(d(1)-c(1)))*cos(.505)-(.5*(d(2)-c(2)))*sin(.505)+c(1)
        (.5*(d(1)-c(1)))*sin(.505)+(.5*(d(2)-c(2)))*cos(.505)+c(2)]; 
    f=[d(1)-(.5*(d(1)-c(1))*cos(.505)-.5*(d(2)-c(2))*sin(.505))
        d(2)-(.5*(d(1)-c(1))*sin(.505)+.5*(d(2)-c(2))*cos(.505))];
    koch1(w,c,n-1)
    koch1(c,e,n-1)
    koch1(e,f,n-1)
    koch1(f,d,n-1)
    koch1(d,v,n-1)
    
end

function koch2(w,v,n)

global x2 y2 
if n==0 
        plot([w(1) v(1)],[w(2) v(2)])
    x2=[x2 w(1) v(1)]; 
    y2=[y2 w(2) v(2)];
else ]
    c=w+(v-w)/4;
    d=w+3*(v-w)/4;
    e=[(.5*(d(1)-c(1)))*cos(.505)-(.5*(d(2)-c(2)))*sin(.505)+c(1)
        (.5*(d(1)-c(1)))*sin(.505)+(.5*(d(2)-c(2)))*cos(.505)+c(2)]; 
    f=[d(1)-(.5*(d(1)-c(1))*cos(.505)-.5*(d(2)-c(2))*sin(.505))
        d(2)-(.5*(d(1)-c(1))*sin(.505)+.5*(d(2)-c(2))*cos(.505))];
    koch2(w,c,n-1) 
    koch2(c,e,n-1)
    koch2(e,f,n-1)
    koch2(f,d,n-1)
    koch2(d,v,n-1)
    
end

function koch3(w,v,n)

global x3 y3 

if n==0 
        plot([w(1) v(1)],[w(2) v(2)]) 
    x3=[x3 w(1) v(1)]; 
    y3=[y3 w(2) v(2)];
else 
    c=w+(v-w)/4;
    d=w+3*(v-w)/4;
    e=[(.5*(d(1)-c(1)))*cos(.505)-(.5*(d(2)-c(2)))*sin(.505)+c(1)
        (.5*(d(1)-c(1)))*sin(.505)+(.5*(d(2)-c(2)))*cos(.505)+c(2)];
    f=[d(1)-(.5*(d(1)-c(1))*cos(.505)-.5*(d(2)-c(2))*sin(.505))
        d(2)-(.5*(d(1)-c(1))*sin(.505)+.5*(d(2)-c(2))*cos(.505))];
    koch3(w,c,n-1)
    koch3(c,e,n-1)
    koch3(e,f,n-1)
    koch3(f,d,n-1)
    koch3(d,v,n-1)
    
end

function koch4(w,v,n)

global x4 y4

if n==0
        plot([w(1) v(1)],[w(2) v(2)])
    x4=[x4 w(1) v(1)];
    y4=[y4 w(2) v(2)];
else %if n doesn't = zero it continues to go
    c=w+(v-w)/4;
    d=w+3*(v-w)/4;
    e=[(.5*(d(1)-c(1)))*cos(.505)-(.5*(d(2)-c(2)))*sin(.505)+c(1)
        (.5*(d(1)-c(1)))*sin(.505)+(.5*(d(2)-c(2)))*cos(.505)+c(2)];
    f=[d(1)-(.5*(d(1)-c(1))*cos(.505)-.5*(d(2)-c(2))*sin(.505))
        d(2)-(.5*(d(1)-c(1))*sin(.505)+.5*(d(2)-c(2))*cos(.505))];
    koch4(w,c,n-1)
    koch4(c,e,n-1)
    koch4(e,f,n-1)
    koch4(f,d,n-1)
    koch4(d,v,n-1)
    
end
