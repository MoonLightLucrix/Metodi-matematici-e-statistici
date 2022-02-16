function esercizio2
    main
end

function main
    settings;
    mu=0;
    sigma=1;
    x_1=-3;
    x_2=3;
    p1=normcdf(x_1,mu,sigma);
    p2=1-normcdf(x_2,mu,sigma);
    fprintf("%s\n",num2str(p1+p2));
end

function settings
    clear;
    %close all;
    %workspace;
    clc;
end