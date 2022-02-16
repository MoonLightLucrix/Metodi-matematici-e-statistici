function esercizio5
    main;
end

function main
    settings;
    p=0.7;
    n=10;
    fprintf("Su 10 pazienti con tumore al polmone, meno della metà siano forti fumatori %s%%\n",num2str(calcola(1,(n/2)-1,n,p)*100,3));
    n=20;
    fprintf("Su 20 pazienti con tumore al polmone, meno della metà siano forti fumatori %s%%\n",num2str(calcola(1,(n/2)-1,n,p)*100,3));
end

function b=calcola(s,f,n,p)
    b=0.0;
    for i=s:f
        b=b+(binopdf(i,n,p));
    end
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end