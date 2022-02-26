function esercizio3
    main;
end

function main
    settings;
    n=12;
    nu=n-1;
    xbar=42;
    s=11.9;
    mu=46;
    alpha=0.05;
    t_n=(xbar-mu)/(s/sqrt(n));
    t_alpha=tinv(alpha,nu);
    myPlot(t_n,nu,t_alpha);
    if(test(t_n,nu,t_alpha))
        fprintf("Questo dato suggerisce che un aspirapolvere consuma in media più o esattamente 46 chilowattora annui.\n"); %H_0
    else
        fprintf("Questo dato suggerisce che un aspirapolvere consuma in media meno di 46 chilowattora annui.\n"); %H_1
    end
end

function h=test(t_n,nu,t_alpha)
    f=@(x)tpdf(x,nu);
    p_value=integral(f,-inf,t_n);
    alpha=integral(f,-inf,t_alpha);
    h=(p_value>=alpha);
end

function myPlot(t_n,nu,t_alpha)
    x=-5:0.01:5;
    y=tpdf(x,nu);
    plot(x,y,"Color","blue");
    hold on;
    x=-5:0.01:t_alpha;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    line([t_n,t_n],[0,tpdf(t_n,nu)],"Color","red");
    text(t_n,-0.01,"T_n_-_1","Color","red","HorizontalAlignment","center");
    text(0,0.2,"1-α","Color","black","HorizontalAlignment","center");
    text(-2.2,0.02,"α","Color","white","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end