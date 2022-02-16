function esercizio1
    main;
end

function main
    settings;
    n=100;
    mu=71.8;
    sigma=8.9;
    zbar=70;
    alpha=0.05;
    if(test((abs(zbar-mu))/(sigma/sqrt(n)),alpha))
        fprintf("Si può concludere che la vita media è maggiore di 70 anni.\n") %H_0
    else
        fprintf("Si può concludere che la vita media è minore o uguale di 70 anni.\n") %H_1
    end
end

function h=test(z,alpha)
    h=false;
    z_alpha=norminv(1-alpha);
    if(z>z_alpha)
        h=true;
    end
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end