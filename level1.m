function [] = level1()
%%
%level 1
clear, clc;

%static band
close all;

hold on

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
    set(p3, 'Visible', 'off');
end
end