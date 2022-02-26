function esercizio1
    main;
end

function main
    settings;
    nu=14;
    alpha=0.025;
    t_alpha=tinv(alpha,nu);
    myPlot(t_alpha,nu);
    fprintf("P(X≤%s)=%s\n",num2str(t_alpha),num2str(alpha));
end

function myPlot(t_alpha,nu)
    x=-5:0.01:5;
    y=tpdf(x,nu);
    plot(x,y,"Color","blue");
    hold on;
    x=-5:0.01:t_alpha;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    text(t_alpha,-0.015,"t_0_._0_2_5","Color","blue","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end
