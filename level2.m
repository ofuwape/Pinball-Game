function [] = level2()
%%
%level 2
clear, clc;
score=0;
%static band
close all;

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

while yy>0
    p3=plot(xx,yy,'o-');
    axis([0 60 0 100])
    pause(0.01);
    xx=xx+dx*xdir;
    yy=yy+dy*ydir;

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
    
    end
    
    %%
    set(p3, 'Visible', 'off');
end


fprintf('Your score is %f \n',score);
end