function esercizio3
    main;
end

function main
    settings;
    p=0.03;
    n=20;
    b=1-binopdf(0,n,p);
    fprintf("La probabilità che tra di essi ci sia almeno un apparecchio difettoso %s%%\n",num2str(b*100,3));
    n=10;
    b=binopdf(3,n,b);
    fprintf("La probabilità che ci siano 3 ordini ciascuno contenente almeno un apparecchio difettoso %s%%\n",num2str(b*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end