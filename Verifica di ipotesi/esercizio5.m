function esercizio5
    main;
end

function main
    settings;
    t=readtable("cervi.txt","VariableNamingRule","preserve");
    x=table2array(t(:,1));
    y=table2array(t(:,2));
    w=x-y;
    n=length(w);
    xbar=mean(w);
    s=std(w,0);
    alpha=0.05;
    nu=n-1;
    mu=0;
    t_n=(xbar-mu)/(s/sqrt(n));
    t_alphaMin=tinv(alpha/2,nu);
    t_alphaMax=tinv(1-(alpha/2),nu);
    myPlot(t_n,nu,t_alphaMin,t_alphaMax);
    if(test(t_n,nu,t_alphaMin,t_alphaMax))
        fprintf("Le concentrazioni di androgeni non sono alterate dopo 30 minuti.\n"); %H_0
    else
        fprintf("Le concentrazioni di androgeni sono alterate dopo 30 minuti.\n"); %H_1
    end
end

function h=test(t_n,nu,t_alphaMin,t_alphaMax)
    f=@(x)tpdf(x,nu);
    p_value=integral(f,-inf,t_n)+integral(f,-t_n,inf);
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
    text(t_n,-0.01,"T_n_-_1","Color","red","HorizontalAlignment","center");
    text(0,0.2,"1-α","Color","black","HorizontalAlignment","center");
    text(-2.5,0.01,"-α/2","Color","white","HorizontalAlignment","center");
    text(2.5,0.01,"α/2","Color","white","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end