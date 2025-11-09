%exp9
clc;
clear all;
close all;
code_length=0;
symbols=[1:5]
p=[0.4 0.15 0.15 0.15 0.15];
[dict,avglen]=huffmandict(symbols,p)
avginfo=0;
for i=1:length(p)
 avginfo=avginfo+p(i)*log2(1/p(i));
end
Efficiency=avginfo*100/avglen
sig=randsrc(1,100,[symbols;p]);
hcode=huffmanenco(sig,dict);
decode=huffmandeco(hcode,dict);
code_length=length(hcode)
display(avginfo);
display(Efficiency);
isequal(sig,decode)



Output:
symbols =
 1 2 3 4 5
dict =
 5×2 cell array
 {[1]} {[ 1]}
 {[2]} {[0 0 1]}
 {[3]} {[0 0 0]}
 {[4]} {[0 1 1]}
 {[5]} {[0 1 0]}
avglen =
 2.2000
Efficiency =
 98.6796
code_length =
 224
avginfo =
 2.1710
Efficiency =
 98.6796
ans =
 logical
 1
