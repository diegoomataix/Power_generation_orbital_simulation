%% **********************************************************************************
%                      MÉTODOS EXPLÍCITOS - PANELES/CÉLULAS SOLARES
%____________________________________________________________________________________
clear all; clc
%% Escoger apartado
choose = 1;

%% Puntos caracteristicos
% Orden de los datos de la matriz A:
% [ Isc, Imp, Vmp, Voc, betha, alpha, k ]

switch(choose)
    case 1  % Apartado 1
% cada variable en una fila en el orden indicado, cada columna corresponde a cada uno de las 8 células solares que se estudian
        dat = [0.760500000000000,0.523900000000000,0.462800000000000,0.520200000000000,1.03200000000000, 8.21000000000000, 0.503440000000000,7.55141000000000;
               0.689400000000000,0.496000000000000,0.438900000000000,0.504400000000000,0.925500000000000,7.61000000000000, 0.484760000000000,4.53786986400000;
               0.450700000000000,2.27000000000000, 2.41000000000000, 2.41100000000000, 12.4930000000000, 26.3000000000000, 12.0990000000000, 0.561760000000000;
               0.572700000000000,2.56500000000000, 2.72600000000000, 2.70000000000000, 16.7780000000000, 32.9000000000000, 13.5750000000000, 0.753649000000000;
               0.906508876000000,0.946745562000000,0.948357822000000,0.969627067000000,0.896802326000000,0.926918392000000,0.962895280000000,0.600930139000000;
               0.786973983000000,0.884990253000000,0.884079237000000,0.892962963000000,0.744606032000000,0.799392097000000,0.891270718000000,0.745386778000000;
               10.0367720400000, 27.6047703600000, 27.2574316300000, 30.4460176700000, 6.93744975500000, 11.0813335000000, 29.8260968800000, 9.33467154700000];
    case 2  % Apartado 2
% cada variable en una fila en el orden indicado, cada columna corresponde a cada uno de las 3 células solares que se estudian
        dat = ones(7); % tenemos que sacar los puntos críticos
end

%% Da's model
% hay una función: lambertw, q nos viene dpm
k_das = zeros(1,size(dat,2));
h = zeros(1,size(dat,2));

for i = 1:size(dat,1)
    k_das(i)=lambertw(-1,dat(2,i)/dat(1,i)*log(dat(3,i)/dat(4,i)))/log(dat(3,i)/dat(4,i));
    h(i) = (dat(4,i)/dat(3,i))*(dat(1,i)/dat(2,i)-1/k_das(i)-1);
end

%% Karmalkar & Haneefa’s model


%% PLOTS

% Da's model

% Karmalkar & Haneefa’s model
