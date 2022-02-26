function esercizio1
    main;
end

function main
    settings;
    n=100;
    xbar=71.8;
    sigma=8.9;
    mu=70;
    alpha=0.05;
    z=(xbar-mu)/(sigma/sqrt(n));
    z_alpha=norminv(1-alpha);
    myPlot(z,z_alpha);
    if(test(z,z_alpha))
        fprintf("Si può concludere che la vita media è minore o uguale di 70 anni.\n"); %H_0
    else
        fprintf("Si può concludere che la vita media è maggiore di 70 anni.\n"); %H_1
    end
end

function h=test(z,z_alpha)
    f=@(x)normpdf(x);
    p_value=integral(f,z,inf);
    alpha=integral(f,z_alpha,inf);
    h=(p_value>=alpha);
end

function myPlot(z,z_alpha)
    normspec([z_alpha,inf],0,1,"inside");
    line([z,z],[0,normpdf(z)],"Color","red");
    text(z,-0.01,"Z","Color","red","HorizontalAlignment","center");
    text(0,0.2,"1-α","Color","black","HorizontalAlignment","center");
    text(2.2,0.02,"α","Color","white","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end