function esercizio2
    main;
end

function main
    settings;
    n=4;
    x=[642,669,829,1217];
    alpha=0.05;
    xbar=mean(x);
    nu=n-1;
    s=std(x,0);
    mu=900;
    t_n=(xbar-mu)/(s/sqrt(n));
    t_alphaMin=tinv((alpha/2),nu);
    t_alphaMax=tinv(1-(alpha/2),nu);
    myPlot(t_n,nu,t_alphaMin,t_alphaMax);
    if(test(t_n,nu,t_alphaMin,t_alphaMax))
        fprintf("H_0 si accetta: Non si rigetta l'ipotesi che la popolazione da cui è stato estratto il campione abbia media pari a 900.\n");
    else
        fprintf("H_0 si rifiuta: Si rigetta l'ipotesi che la popolazione da cui è stato estratto il campione abbia media pari a 900.\n");
    end
end

function h=test(t_n,nu,t_alphaMin,t_alphaMax)
    p_value=2*(1-tcdf(abs(t_n),nu));
    alpha=tcdf(t_alphaMin,nu)+(1-tcdf(t_alphaMax,nu));
    h=(p_value>=alpha);
end

function myPlot(t_n,nu,t_alphaMin,t_alphaMax)
    x=-5:0.01:5;
    y=tpdf(x,nu);
    figure;
    plot(x,y,"Color","blue");
    hold on;
    x=-5:0.01:t_alphaMin;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    x=t_alphaMax:0.01:5;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    line([t_n,t_n],[0,tpdf(t_n,nu)],"Color","red");
    text(t_n,-0.01,"T_n_-_1","Color","red","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end