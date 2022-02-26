function esercizio2
    main;
end

function main
    settings;
    p=0.4;
    n=15;
    fprintf("P_A=%s%%\n",num2str(calcola(10,n,n,p)*100,3));
    fprintf("P_B=%s%%\n",num2str(calcola(3,8,n,p)*100,3));
    fprintf("P_C=%s%%\n",num2str(calcola(5,n,p)*100,3));
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