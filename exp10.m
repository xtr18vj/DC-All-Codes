clc; clear;

H = [1 1 1 0 1 0 0;
     0 1 1 1 0 1 0;
     1 1 0 1 0 0 1];

k = 4;
n = 7;

P = H';
L = P;
L((5:7), : ) = [];

I = eye(k);
G = [I L]

no = 2 ^ k;

for i = 1 : 2^k
   for j = k : -1 : 1
       if rem(i - 1, 2 ^ (-j + k + 1)) >= 2 ^ (-j + k)
           u(i, j) = 1;
       else
           u(i, j) = 0;
       end
   end
end

u
c = rem(u * G, 2)

w_min = min(sum((c(2 : 2^k, :))'))

r = [0 0 0 1 0 0 0];
r
p = [G(:, n - k + 2 : n)];

ht = transpose(H)
s = rem(r * ht, 2)

error_found = false;
error_bit = 0;

for i = 1 : size(ht, 1)
   if isequal(ht(i, 1:3), s)
       r(i) = 1-r(i);
       error_found = true;
       error_bit = i;
       break;
   end
end

if error_found
   disp('The Error is in bit:')
   disp(error_bit)
   disp('The Corrected Codeword is :')
   disp(r)
else
   disp('No correctable (single-bit) error detected.')
   disp('The Codeword is :')
   disp(r)
end
