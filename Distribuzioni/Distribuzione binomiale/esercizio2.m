function esercizio2
    main;
end

function main
    settings;
    p=0.4;
    n=15;
    fprintf("Almeno 10 sopravvivano %s%%\n",num2str(calcola(10,n,p,n)*100,3));
    fprintf("Da 3 ad 8 sopravvivano %s%%\n",num2str(calcola(3,8,p,n)*100,3));
    fprintf("Esattamente 5 sopravvivano %s%%\n",num2str(calcola(5,5,p,n)*100,3));
end

function b=calcola(s,f,p,n)
    b=0;
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