%% The pinball Game
clear;
clc;
close all;
disp('Welcome!!!');
play='y';
while play=='y' || play=='Y'
    level=input('What level do you want to play?...enter 1,2,3 or 4: \n');
    if level==1
        level1();
    elseif level==2
        level2();
    elseif level==3
        level3();
    else
        level4();
    end
    play=input('Do you want to play?...enter y for yes and n for no: \n','s');
end