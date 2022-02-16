function esercizio1Xpow2
    main;
end

function main
    settings;
    x=[1.9,2.4,3.0,3.5,4.2];
    mu=3;
    nu=length(x)-1;
    sigma=1;
    chipow2=chiPow2(x,sigma);
    fprintf("χ^2=%s\n",num2str(chipow2));
    %p=normcdf(chipow2,mu,sigma);
    %fprintf("%s\n",num2str(p));

end

function chipow2=chiPow2(x,sigma)
    n=length(x);
    xbar=mean(x);
    chipow2=0.0;
    for i=1:n
        chipow2=chipow2+(((x(i)-xbar)^2)/(sigma^2));
    end
end

function settings
    clear;
    close all;
    workspace;
    clc;
end