%%
%SKAITOM OBUOLIUS
A1=imread('apple_04.jpg');
A2=imread('apple_05.jpg');
A3=imread('apple_06.jpg');
A4=imread('apple_07.jpg');
A5=imread('apple_11.jpg');
A6=imread('apple_12.jpg');
A7=imread('apple_13.jpg');
A8=imread('apple_17.jpg');
A9=imread('apple_19.jpg');

%SKAITOM KRIAUSES
P1=imread('pear_01.jpg');
P2=imread('pear_02.jpg');
P3=imread('pear_03.jpg');
P4=imread('pear_09.jpg');
%%
%APSKAICIUOJAM KIEKVIENO PAVEIKSLIUKO SPALVA IR APVALUMA
hsv_value_1=spalva_color(A1); %color
metric_1=apvalumas_roundness(A1); %roundness
%2nd apple image(A2)
hsv_value_2=spalva_color(A2); %color
metric_2=apvalumas_roundness(A2); %roundness
%3rd apple image(A3)
hsv_value_3=spalva_color(A3); %color
metric_3=apvalumas_roundness(A3); %roundness
%4th apple image(A4)
hsv_value_4=spalva_color(A4); %color
metric_4=apvalumas_roundness(A4); %roundness
%5th apple image(A5)
hsv_value_5=spalva_color(A5); %color
metric_5=apvalumas_roundness(A5); %roundness
%6th apple image(A6)
hsv_value_6=spalva_color(A6); %color
metric_6=apvalumas_roundness(A6); %roundness
%7th apple image(A7)
hsv_value_7=spalva_color(A7); %color
metric_7=apvalumas_roundness(A7); %roundness
%8th apple image(A8)
hsv_value_8=spalva_color(A8); %color
metric_8=apvalumas_roundness(A8); %roundness
%9th apple image(A9)
hsv_value_9=spalva_color(A9); %color
metric_9=apvalumas_roundness(A9); %roundness

%1st pear image(P1)
hsv_value_10=spalva_color(P1); %color
metric_10=apvalumas_roundness(P1); %roundness
%2nd pear image(P2)
hsv_value_11=spalva_color(P2); %color
metric_11=apvalumas_roundness(P2); %roundness
%3rd pear image(P3)
hsv_value_12=spalva_color(P3); %color
metric_12=apvalumas_roundness(P3); %roundness
%2nd pear image(P4)
hsv_value_13=spalva_color(P4); %color
metric_13=apvalumas_roundness(P4); %roundness

%%
% x1=[hsv_value_1 hsv_value_2 hsv_value_3 hsv_value_4 hsv_value_5 hsv_value_6 hsv_value_7 hsv_value_8 hsv_value_9 hsv_value_10 hsv_value_11 hsv_value_12 hsv_value_13];
% x2=[metric_1 metric_2 metric_3 metric_4 metric_5 metric_6 metric_7 metric_8 metric_9 metric_10 metric_11 metric_12 metric_13];
% P=[x1;x2];

%Klaidu tikrinimo vektorius
%  1: obuolys, -1: kriause
T=[1;1;1;1;1;1;1;1;1;-1;-1;-1;-1];

%% Train single perceptron with two inputs and one output

%PRADINES RANDOMINES KOEFICIENTU REIKSMES
w1 = randn(1); 
w2 = randn(1);
b = randn(1);
%PRASUKAM ATPAZINIMO ALGORITMA SU ATSITIKTINEM REIKSMEM
v1 = hsv_value_1*w1 + metric_1*w2 + b; %patikrinam paveiksliuko suma
if v1 > 0
	y = 1;
else
	y = -1;
end
e1 = T(1) - y; %Irasom ar turim klaida

v2 = hsv_value_2*w1 + metric_2*w2 + b; %patikrinam paveiksliuko suma
if v2 > 0
	y = 1;
else
	y = -1;
end
e2 = T(2) - y;

v3 = hsv_value_3*w1 + metric_3*w2 + b; %patikrinam paveiksliuko suma
if v3 > 0
	y = 1;
else
	y = -1;
end
e3 = T(3) - y;

v4 = hsv_value_4*w1 + metric_4*w2 + b; %patikrinam paveiksliuko suma
if v4 > 0
	y = 1;
else
	y = -1;
end
e4= T(4) - y;

v5 = hsv_value_5*w1 + metric_5*w2 + b; %patikrinam paveiksliuko suma
if v5 > 0
	y = 1;
else
	y = -1;
end
e5 = T(5) - y;

v6 = hsv_value_6*w1 + metric_6*w2 + b; %patikrinam paveiksliuko suma
if v6 > 0
	y = 1;
else
	y = -1;
end
e6 = T(6) - y;

v7 = hsv_value_7*w1 + metric_7*w2 + b; %patikrinam paveiksliuko suma
if v7 > 0
	y = 1;
else
	y = -1;
end
e7 = T(7) - y;

v8 = hsv_value_8*w1 + metric_8*w2 + b; %patikrinam paveiksliuko suma
if v8 > 0
	y = 1;
else
	y = -1;
end
e8 = T(8) - y;

v9 = hsv_value_9*w1 + metric_9*w2 + b; %patikrinam paveiksliuko suma
if v9 > 0
	y = 1;
else
	y = -1;
end
e9 = T(9) - y;

v10 = hsv_value_10*w1 + metric_10*w2 + b; %patikrinam paveiksliuko suma
if v10 > 0
	y = 1;
else
	y = -1;
end
e10 = T(10) - y;

v11 = hsv_value_11*w1 + metric_11*w2 + b; %patikrinam paveiksliuko suma
if v11 > 0
	y = 1;
else
	y = -1;
end
e11 = T(11) - y;

v12 = hsv_value_12*w1 + metric_12*w2 + b; %patikrinam paveiksliuko suma
if v12 > 0
	y = 1;
else
	y = -1;
end
e12 = T(12) - y;

v13 = hsv_value_13*w1 + metric_13*w2 + b; %patikrinam paveiksliuko suma
if v13 > 0
	y = 1;
else
	y = -1;
end
e13 = T(13) - y;

%TURIM VISU PAVEIKSLIUKU ATPAZINIMO REZULTATA - KLAIDAS. PASIDAROM DVI
%KLAIDU SUMAS: VIENA BE ZENKLO, KITA SU.
eabs = abs(e1) + abs(e2) + abs(e3) + abs(e4) + abs(e5) + abs(e6) + abs(e7) + abs(e8) + abs(e9) + abs(e10) + abs(e11) + abs(e12) + abs(e13);
eneabs = e1 + e2 + e3 + e4 + e5 + e6 + e7 + e8 + e9 + e10 + e11 + e12 + e13;

while eabs ~= 0 
   
   %KOEFICIENTUS KEICIAM ATSIZVELGDAMI I VISASPOZYMIU PORAS
   w1= w1 + 0.05 * e1 * hsv_value_1 + 0.05 * e2 * hsv_value_2 + 0.05 * e3 * hsv_value_3 + 0.05 * e4 * hsv_value_4 + 0.05 * e5 * hsv_value_5 + 0.05 * e6 * hsv_value_6 + 0.05 * e7 * hsv_value_7 + 0.05 * e8 * hsv_value_8 + 0.05 * e9 * hsv_value_9 + 0.05 * e10 * hsv_value_10 + 0.05 * e11 * hsv_value_11 + 0.05 * e12 * hsv_value_12 + 0.05 * e13 * hsv_value_13;
   w2 = w2 + 0.05 * e1 * metric_1 + 0.05 * e2 * metric_2 + 0.05 * e3 * metric_3 + 0.05 * e4 * metric_4 + 0.05 * e5 * metric_5 + 0.05 * e6 * metric_6 + 0.05 * e7 * metric_7 + 0.05 * e8 * metric_8 + 0.05 * e9 * metric_9 + 0.05 * e10 * metric_10 + 0.05 * e11 * metric_11 + 0.05 * e12 * metric_12 + 0.05 * e13 * metric_13;
   b = b + 0.05 * eneabs; %naudojam klaidu suma be modulio, kad atskiriancioji tiese galetu judet ir aukstyn, ir zemyn
    
%Prasukam algoritma su atnaujintom reiksmem
v1 = hsv_value_1*w1 + metric_1*w2 + b;
if v1 > 0
	y = 1;
else
	y = -1;
end
e1 = T(1) - y;

v2 = hsv_value_2*w1 + metric_2*w2 + b; %patikrinam paveiksliuko suma
if v2 > 0
	y = 1;
else
	y = -1;
end
e2 = T(2) - y;

v3 = hsv_value_3*w1 + metric_3*w2 + b; %patikrinam paveiksliuko suma
if v3 > 0
	y = 1;
else
	y = -1;
end
e3 = T(3) - y;

v4 = hsv_value_4*w1 + metric_4*w2 + b; %patikrinam paveiksliuko suma
if v4 > 0
	y = 1;
else
	y = -1;
end
e4= T(4) - y;

v5 = hsv_value_5*w1 + metric_5*w2 + b; %patikrinam paveiksliuko suma
if v5 > 0
	y = 1;
else
	y = -1;
end
e5 = T(5) - y;

v6 = hsv_value_6*w1 + metric_6*w2 + b; %patikrinam paveiksliuko suma
if v6 > 0
	y = 1;
else
	y = -1;
end
e6 = T(6) - y;

v7 = hsv_value_7*w1 + metric_7*w2 + b; %patikrinam paveiksliuko suma
if v7 > 0
	y = 1;
else
	y = -1;
end
e7 = T(7) - y;

v8 = hsv_value_8*w1 + metric_8*w2 + b; %patikrinam paveiksliuko suma
if v8 > 0
	y = 1;
else
	y = -1;
end
e8 = T(8) - y;

v9 = hsv_value_9*w1 + metric_9*w2 + b; %patikrinam paveiksliuko suma
if v9 > 0
	y = 1;
else
	y = -1;
end
e9 = T(9) - y;

v10 = hsv_value_10*w1 + metric_10*w2 + b; %patikrinam paveiksliuko suma
if v10 > 0
	y = 1;
else
	y = -1;
end
e10 = T(10) - y;

v11 = hsv_value_11*w1 + metric_11*w2 + b; %patikrinam paveiksliuko suma
if v11 > 0
	y = 1;
else
	y = -1;
end
e11 = T(11) - y;

v12 = hsv_value_12*w1 + metric_12*w2 + b; %patikrinam paveiksliuko suma
if v12 > 0
	y = 1;
else
	y = -1;
end
e12 = T(12) - y;

v13 = hsv_value_13*w1 + metric_13*w2 + b; %patikrinam paveiksliuko suma
if v13 > 0
	y = 1;
else
	y = -1;
end
e13 = T(13) - y;

eabs = abs(e1) + abs(e2) + abs(e3) + abs(e4) + abs(e5) + abs(e6) + abs(e7) + abs(e8) + abs(e9) + abs(e10) + abs(e11) + abs(e12) + abs(e13);
eneabs = e1 + e2 + e3 + e4 + e5 + e6 + e7 + e8 + e9 + e10 + e11 + e12 + e13;
end

