function esercizio1
    main;
end

function main
    settings;
    p=0.25;
    n=15;
    fprintf("P_1=%s%%\nP_2=%s%%\nP_3=%s%%\n",num2str(calcola(3,6,n,p)*100,4),num2str(calcola(0,3,n,p)*100,4),num2str(calcola(6,n,n,p)*100,4));
end

function sum=calcola(s,f,n,p)
    if(nargin==3)
        p=n;
        n=f;
        f=s;
    end
    sum=0.0;
    for i=s:f
        sum=sum+(binopdf(i,n,p));
    end
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end