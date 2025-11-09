clc;
clear;
close all;


Eb = 5e-8;             
No = 1e-9;            
M  = 16;               
k  = log2(M);           
Es = k * Eb;           
Eb_No = Eb/No;         

fprintf('Given Eb/No = %.2f (linear)\n', Eb_No);

Ps_PSK = 2 * qfunc( sqrt(2*Es/No) * sin(pi/M) );
Pb_PSK = Ps_PSK / k;


Pb_QAM = (4*(1 - 1/sqrt(M)) / k) * qfunc( sqrt((3*k/(M-1)) * Eb_No) );


Ps_FSK = (M - 1) * qfunc( sqrt(Es/No) );
Pb_FSK = Ps_FSK / k;


fprintf('\n===== Probability of Error =====\n');
fprintf('16-PSK  : Bit Error Probability = %e\n', Pb_PSK);
fprintf('16-QASK : Bit Error Probability = %e\n', Pb_QAM);
fprintf('16-FSK  : Bit Error Probability = %e\n', Pb_FSK);
