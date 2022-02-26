function esercizio4
    main;
end

function main
    settings;
    n_1=12;
    n_2=10;
    xbar_1=85;
    s_1=4;
    var_1=s_1^2;
    xbar_2=81;
    s_2=5;
    var_2=s_2^2;
    alpha=0.05;
    mu=2;
    nuN=(((var_1)/(n_1))+((var_2)/(n_2)))^2;
    nuD=(((((var_1)/(n_1))^2)/(n_1-1))+((((var_2)/(n_2))^2)/(n_2-1)));
    nu=fix(nuN/nuD);
    t_n=(((xbar_1-xbar_2)-(mu))/(sqrt(((var_1)/(n_1))+((var_2)/(n_2)))));
    t_alpha=tinv(1-alpha,nu);
    myPlot(t_n,nu,t_alpha);
    if(test(t_n,nu,t_alpha))
        fprintf("Si può concludere che l'usura del materiale 1 non supera l'usura del materiale 2 di più di 2 unità.\n"); %H_0
    else
        fprintf("Si può concludere che l'usura del materiale 1 supera l'usura del materiale 2 di più di 2 unità.\n"); %H_1
    end
end

function h=test(t_n,nu,t_alpha)
    f=@(x)tpdf(x,nu);
    p_value=integral(f,t_n,inf);
    alpha=integral(f,t_alpha,inf);
    h=(p_value>=alpha);
end

function myPlot(t_n,nu,t_alpha)
    x=-5:0.01:5;
    y=tpdf(x,nu);
    plot(x,y,"Color","blue");
    hold on;
    x=t_alpha:0.01:5;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    line([t_n,t_n],[0,tpdf(t_n,nu)],"Color","red");
    text(t_n,-0.01,"T_n_-_1","Color","red","HorizontalAlignment","center");
    text(0,0.2,"1-α","Color","black","HorizontalAlignment","center");
    text(2.2,0.02,"α","Color","white","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end