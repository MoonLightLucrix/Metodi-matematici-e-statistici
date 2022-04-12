function esercizio1
    main;
end

function main
    settings;
    lambda=(150/1000);
    sum=0.0;
    for i=0:119
        sum=sum+(poisspdf(i/800,lambda));
    end
    p=sum;
    fprintf("p=%s%%\n",num2str(p*100,4));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end