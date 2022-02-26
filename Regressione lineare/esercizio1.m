function esercizio1
    main;
end

function main
    settings;
    t=readtable("lavatrici.txt","VariableNamingRule","preserve");
    x=table2array(t(:,1));
    y=table2array(t(:,2));
    n=length(x);
    xbar=mean(x);
    ybar=mean(y);
    scatter(x,y);
    p=polyfit(x,y,1);
    m=p(1);
    q=p(2);
    line(x,(m*x)+q,"Color","blue"); %Retta di regressione
    sxx=0.0;
    syy=0.0;
    sxy=0.0;
    for i=1:n
        sxx=sxx+(x(i)-xbar)^2;
        syy=syy+(y(i)-ybar)^2;
        sxy=sxy+((x(i)-xbar)*(y(i)-ybar));
    end
    sxx=sxx/n; %Varianza di x
    syy=syy/n; %Varianza di y
    sxy=sxy/n; %Covarianza di x e y
    pxy=sxy/sqrt(sxx*syy); %Coefficiente di correlazione lineare o di Pearson
    r2=pxy^2; %Coefficiente di determinazione
    fprintf("Coefficiente di Pearson = %s\nCoefficiente di determinazione = %s\n\n",num2str(pxy),num2str(r2));
    fprintf("Peso(kg)\tRumorosità(dB)\n40\t\t%s\n",num2str((m*40)+q));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end