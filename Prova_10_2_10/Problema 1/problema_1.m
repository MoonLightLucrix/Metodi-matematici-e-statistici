function problema_1
    main;
end

function main
    cleanScreen;
    a=ViteInfo("campione.txt");
    fprintf("%s\n",a.toString);
    fprintf("Media: %scm\nMediana: %scm\nModa: %scm\n\n",num2str(a.media),num2str(a.mediana),num2str(a.moda));
    fprintf("Deviazione standard: %s\n\n",num2str(a.deviazioneStandard));
    fprintf("Intervallo di confidenza per la media di livello 95%%: %s\n",num2str(a.intervalloDiConfidenza(0.95)));
    fprintf("Intervallo di confidenza per la media di livello 90%%: %s\n",num2str(a.intervalloDiConfidenza(0.90)));
end

function cleanScreen
    clear;
    clc;
end