function esercizio1
    main;
end

function main
    settings;
    mu=3;
    sigma=1;
    var=sigma^2;
    x=[1.9,2.4,3.0,3.5,4.2];
    n=length(x);
    xbar=mean(x);
    chiPow2=0.0;
    for i=1:n
        chiPow2=chiPow2+(((x(i)-xbar)^2)/(var));
    end
    alpha=0.05;
    nu=n;
    chiPow2_alphaMin=chi2inv(alpha/2,nu);
    chiPow2_alphaMax=chi2inv(1-(alpha/2),nu);
    myPlot(chiPow2,nu,chiPow2_alphaMin,chiPow2_alphaMax);
    if(test(chiPow2,nu,chiPow2_alphaMin,chiPow2_alphaMax))
        fprintf("Il produttore dovrebbe essere ancora convinto che le batterie hanno una deviazione standard di 1 anno.\n") %H_0
    else
        fprintf("Il produttore dovrebbe essere convinto che le batterie hanno una deviazione standard diversa da 1 anno.\n") %H_1
    end
end

function h=test(chiPow2,nu,chiPow2_alphaMin,chiPow2_alphaMax)
    f=@(x)chi2pdf(x,nu);
    p_value=2*(1-chi2cdf(abs(chiPow2),nu));
    alpha=integral(f,-inf,chiPow2_alphaMin)+integral(f,chiPow2_alphaMax,inf);
    h=(p_value>=alpha);
end

function myPlot(chiPow2,nu,chiPow2_alphaMin,chiPow2_alphaMax)
    x=-2:0.01:20;
    y=chi2pdf(x,nu);
    plot(x,y,"Color","blue");
    hold on;
    x=-2:0.01:chiPow2_alphaMin;
    y=chi2pdf(x,nu);
    area(x,y,"FaceColor","blue");
    x=chiPow2_alphaMax:0.01:20;
    y=chi2pdf(x,nu);
    area(x,y,"FaceColor","blue");
    line([chiPow2,chiPow2],[0,chi2pdf(chiPow2,nu)],"Color","red");
    text(4,0.09,"1-α","Color","black","HorizontalAlignment","center");
    text(-2,0.02,"-α/2","Color","black","HorizontalAlignment","center");
    text(15,0.02,"α/2","Color","black","HorizontalAlignment","center");
    text(chiPow2,-0.005,"χ^2","Color","red","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end