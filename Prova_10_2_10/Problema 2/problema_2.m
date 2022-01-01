function problema_2
    main;
end

function main
    cleanScreen;
    a=Automobile("potenza_e_velocita.txt");
    fprintf("%s\n",a.toString);
    %a.toPlot;
    fprintf("Coefficiente di correlazione: %s\n\n",num2str(a.coefficienteCorrelazione));
    fprintf("Retta di regressione: %s\n",num2str(a.rettaRegressione));
end

function cleanScreen
    clear;
    clc;
end