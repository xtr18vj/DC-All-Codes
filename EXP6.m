#exp 6 
clc;
clear all;
close all;
choice=input('enter 1:BPSK,2:QPSK,3:MSK,4:16-QAM,5:MPSK;6:MFSK');
M=16;
N=4;
SNR=25;
if choice<4,
 pe=0.5*erfc(sqrt(SNR));
end
if choice==4,
 pe=2*erfc(sqrt(0.4*SNR));
end
if choice==5,
 pe=0.5*erfc(sqrt(pi*pi*SNR/16));
end
if choice==6,
 N=log2(M);
 pe=erfc(sqrt(N*SNR)*sin(pi/M));
end
if choice==7,
 N=log2(M);
 pe=((M-1)/2)*erfc(sqrt(N*SNR/2));
end
Error_Probability=pe


OUTPUT:
enter 1:BPSK,2:QPSK,3:MSK,4:16-QAM,5:MPSK;6:MFSK 1
Error_Probability =7.6873e-13
enter 1:BPSK,2:QPSK,3:MSK,4:16-QAM,5:MPSK;6:MFSK 2
Error_Probability = 7.6873e-13
enter 1:BPSK,2:QPSK,3:MSK,4:16-QAM,5:MPSK;6:MFSK 3
Error_Probability = 7.6873e-13
enter 1:BPSK,2:QPSK,3:MSK,4:16-QAM,5:MPSK;6:MFSK 4
Error_Probability = 1.5488e-05
enter 1:BPSK,2:QPSK,3:MSK,4:16-QAM,5:MPSK;6:MFSK 5
Error_Probability = 1.3992e-08
enter 1:BPSK,2:QPSK,3:MSK,4:16-QAM,5:MPSK;6:MFSK 6
Error_Probability =1.1430e-22
