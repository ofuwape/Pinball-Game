function [] = level4()
clear, clc;
score=0;
close all;
%static band
ang=input('Enter the angle in degrees: \n');
xdir=input('Enter the direction of launch i.e... enter 1 for right or enter -1 for left: \n');
dx=input('Enter the change in x between 0.1 and 1: \n');

hold on
x1=18:22;
y1=70;
plot(x1,y1,'bs-','markerfacecolor','r');
axis([0 60 0 100])
x2=38:42;
y2=70;
plot(x2,y2,'ks-','markerfacecolor','c');
axis([0 60 0 100])
xx=30;
yy=1;
dy=1; %change in y
ydir=1;
y4=80;
y3=50;
x3=1:5;
x4=56:60;
add1=1;
add2=-1;
lives=3;
while lives>0
    p3=plot(xx,yy,'bo-','markerfacecolor','g');
    p4=plot(x3,y3,'p-','markerfacecolor','b');
    p5=plot(x4,y4,'h-','markerfacecolor','y');
    pause(0.001);
    whitebg('black')
    axis([0 60 0 100])
    xx=xx+dx*xdir*cosd(ang);
    yy=yy+dy*ydir*sind(ang);
    x3=x3+add1;
    x4=x4+add2;
    %     plot
    if (x3(end)>=60)
        add1=-1;
    elseif (x3(1)<=0)
        add1=1;
    elseif (x4(end)>=60)
        add2=-1;
    elseif (x4(1)<=0)
        add2=1;
    end
    %     plot
    if xx>=60
        xdir=-1;
    end
    if yy>=100
        ydir=-1;
    end
    if xx<=0
        xdir=1;
    end
    if yy<=0
        ydir=1;
    end
    %     plot
    if( yy>=(y1-0.3) && yy<=y1+0.3 && (xx>=x1(1)-3 && xx<=x1(end)+3))
        ydir=ydir*-1;
        score=score+20;
        
    elseif (yy>=(y2-0.3) && yy<=y2+0.3 && (xx>=x2(1)-3 && xx<=x2(end)+3))
        ydir=ydir*-1;
        score=score+20;
        
    elseif( yy>=(y3-0.3) && yy<=y3+0.3 && (xx>=x3(1)-3 && xx<=x3(end)+3))
        ydir=ydir*-1;
        score=score+40;
        
    elseif(yy>=(y4-0.3) && yy<=y4+0.3 && (xx>=x4(1)-3 && xx<=x4(end)+3))
        ydir=ydir*-1;
        score=score+40;
    end
    
    %     plot
    set(p3, 'Visible', 'off');
    set(p4, 'Visible', 'off');
    set(p5, 'Visible', 'off');
    if(yy<=0)
        lives=lives-1;
        fprintf('You have %i lives left.....\n',lives);
    end
end


fprintf('Game Over....Your score is %i \n',score);
end