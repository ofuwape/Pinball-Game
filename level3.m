function [] = level3()
%%
%level 3
clear, clc;
score=0;
close all;
%static band


hold on
x1=18:22;
y1=70;
p1=plot(x1,y1,'o-');
axis([0 60 0 100])
x2=38:42;
y2=70;
p2=plot(x2,y2,'o-');
axis([0 60 0 100])
xx=30;
yy=1;
dy=1; %change in y
dx=1;
xdir=input('Enter the direction of launch i.e... enter 1 for right or enter -1 for left: \n');
ydir=1;
y4=80;
y3=50;
x3=1:5;
x4=56:60;
add1=1;
add2=-1;
while yy>0
    p3=plot(xx,yy,'o-');
    p4=plot(x3,y3,'*-');
    p5=plot(x4,y4,'*-');
    axis([0 60 0 100])
    pause(0.01);
    xx=xx+dx*xdir;
    yy=yy+dy*ydir;
    x3=x3+add1;
    x4=x4+add2;
    %%
    if (x3(end)>=60)
        add1=-1;
    elseif (x3(1)<=0)
        add1=1;
    elseif (x4(end)>=60)
        add2=-1;
    elseif (x4(1)<=0)
        add2=1;
    end
    %%
    if xx>=60
        xdir=-1;
    end
    if yy>=100
        ydir=-1;
    end
    if xx<=0
        xdir=1;
    end
    %%
    if( yy==y1 && (xx>=x1(1) && xx<=x1(end)))
        ydir=ydir*-1;
        score=score+20;
   
    elseif( yy==y2 && (xx>=x2(1) && xx<=x2(end)))
        ydir=ydir*-1;
        score=score+20;
    
    elseif( yy==y3 && (xx>=x3(1) && xx<=x3(end)))
        ydir=ydir*-1;
        score=score+40;
    
    elseif( yy==y4 && (xx>=x4(1) && xx<=x4(end)))
        ydir=ydir*-1;
        score=score+40;
    end
    
    %%
    set(p3, 'Visible', 'off');
    set(p4, 'Visible', 'off');
    set(p5, 'Visible', 'off');
end


fprintf('Your score is %f \n',score);
end