function esercizio2
    main;
end

function main
    settings;
    nu=14;
    t_alphaMin=tinv(0.025,nu);
    t_alphaMax=tinv(0.05,nu);
    myPlot(t_alphaMin,t_alphaMax,nu);
    f=@(x)tpdf(x,nu);
    fprintf("P(t_0.025<T<t_0.05)=%s\n",num2str(integral(f,t_alphaMin,t_alphaMax)));
end

function myPlot(t_alphaMin,t_alphaMax,nu)
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
    text(t_alphaMin,-0.015,"t_0_._0_2_5","Color","blue","HorizontalAlignment","center");
    text(t_alphaMax,-0.015,"t_0_._0_5","Color","blue","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end
