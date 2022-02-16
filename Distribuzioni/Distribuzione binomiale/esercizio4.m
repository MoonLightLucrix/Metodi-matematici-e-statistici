function esercizio4
    main;
end

function main
    settings;
    p=0.3;
    n=10;
    fprintf("La probabilità che esattamente 3 acquedotti siano contaminati %s%%\n",num2str(binopdf(3,n,p)*100,3));
    b=0.0;
    for i=4:n
        b=b+(binopdf(i,n,p));
    end
    fprintf("La probabilità che più di 3 acquedotti siano contaminati %s%%\n",num2str(b*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end