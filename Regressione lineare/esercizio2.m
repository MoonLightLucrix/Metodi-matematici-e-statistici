function esercizio2
    main;
end

function main
    settings;
    x=[1:9];
    y=[0.8,0.9,0.95,1,1.18,1.2,1.22,1.33,1.35];
    scatter(x,y);
    p=polyfit(x,y,1);
    m=p(1);
    q=p(2);
    line(x,(m*x)+q,"Color","blue"); %Retta di regressione
    fprintf("Dicembre\n%s\n",num2str((m*12)+q));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end