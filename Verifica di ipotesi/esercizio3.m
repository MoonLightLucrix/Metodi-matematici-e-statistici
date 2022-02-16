function esercizio3
    main;
end

function main
    settings;
    xbar=46;
    n=12;
    mu=42;
    sigma=11.9;
    alpha=0.05;
    if(test((xbar-mu)/(sigma/sqrt(n)),n-1,alpha))
        fprintf("Un aspirapolvere consuma in media meno di 46 chilowattora annui.\n") %H_0
    else
        fprintf("Un aspirapolvere consuma in media più o esattamente 46 chilowattora annui.\n") %H_1
    end
end

function h=test(t,nu,alpha)
    h=false;
    disp(t);
    %t=tcdf(t,nu);
    %disp(t);
    t_alpha=tinv(1-alpha,nu);
    disp(t_alpha);
    if(t<t_alpha)
        h=true;
    end
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end