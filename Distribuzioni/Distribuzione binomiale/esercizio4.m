function esercizio4
    main;
end

function main
    settings;
    p=0.3;
    n=10;
    p_a=calcola(3,n,p);
    p_b=calcola(4,n,n,p);
    fprintf("P_A=%s%%\n",num2str(p_a*100,4));
    fprintf("P_B=%s%%\n",num2str(p_b*100,4));
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