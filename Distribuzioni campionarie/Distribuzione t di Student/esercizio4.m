function esercizio4
    main;
end

function main
    settings;
    mu=500;
    xbar=518;
    s=40;
    n=25;
    nu=n-1;
    t_alphaMin=tinv(0.05,nu);
    t_alphaMax=tinv(1-0.05,nu);
    t_n=(xbar-mu)/(s/sqrt(n));
    myPlot(t_n,nu,t_alphaMin,t_alphaMax);
    if(test(t_n,nu,t_alphaMin,t_alphaMax))
        fprintf("Si ritiene soddisfatto della procedura.\n") %H_0
    else
        fprintf("Non si ritiene soddisfatto della procedura.\n") %H_1
    end
end

function h=test(t_n,nu,t_alphaMin,t_alphaMax)
    f=@(x)tpdf(x,nu);
    p_value=2*(1-tcdf(abs(t_n),nu));
    alpha=integral(f,-inf,t_alphaMin)+integral(f,t_alphaMax,inf);
    h=(p_value>=alpha);
end

function myPlot(t_n,nu,t_alphaMin,t_alphaMax)
    x=-5:0.01:5;
    y=tpdf(x,nu);
    plot(x,y,"Color","blue");
    hold on;
    x=-5:0.01:t_alphaMin;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    x=t_alphaMax:0.01:5;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    line([t_n,t_n],[0,tpdf(t_n,nu)],"Color","red");
    text(0,0.2,"1-α","Color","black","HorizontalAlignment","center");
    text(-2.2,0.02,"-α/2","Color","white","HorizontalAlignment","center");
    text(2.2,0.02,"α/2","Color","white","HorizontalAlignment","center");
    text(t_n,-0.01,"T_n_-_1","Color","red","HorizontalAlignment","center");

end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end
