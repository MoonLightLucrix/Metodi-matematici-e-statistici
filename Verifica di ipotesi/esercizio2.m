function esercizio2
    main;
end

function main
    settings;
    zbar=7.8;
    sigma=0.5;
    n=50;
    mu=8;
    alpha=0.01;
    if(test((zbar-mu)/(sigma/sqrt(n)),alpha))
        fprintf("µ=8\n") %H_0
    else
        fprintf("µ≠8\n") %H_1
    end
end

function h=test(z,alpha)
    h=false;
    z_alpha=norminv(1-alpha);
    if((norminv(alpha)<=z) && (z<=z_alpha))
        h=true;
    end
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end