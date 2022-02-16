function esercizio7
    main;
end

function main
    settings;
    mu=3.0;
    sigma=0.005;
    f=@(x)normpdf(x,mu,sigma);
    p=integral(f,(3.00-0.01),(3.00+0.01));
    fprintf("In media, i cuscinetti scartati saranno %s%%\n",num2str((1-p)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end