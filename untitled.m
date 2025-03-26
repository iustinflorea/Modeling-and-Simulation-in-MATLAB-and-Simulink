%% Tema 3:
%% Subpunctul a):
global K1;
global K2;
global R1;
global R2;
global Ki1;
global Ki2;
global Kb1;
global Kb2;
global I1;
global I2;
global B1;
global B2;
global C1;
global C2;
global Bp1;
global Bp2;
global Dp1;
global Dp2;
global Kw1;
global Kw2;
global I_elevatie;
global I_azimut;
global m;
global l;
global g;
global K_gyro;
global B_elevatie;
global B_azimut;
global C_elevatie;
global C_azimut;
global u1;
global u2;
global w1;
global w2;

K1 = 0.53;
K2 = 0.21;
R1 = 1000;
R2 = 1000;
Ki1 = 1000;
Ki2 = 1000;
Kb1 = 1;
Kb2 = 1;
I1 = 1.25;
I2 = 2;
B1 = 0.001;
B2 = 0.001;
C1 = 0.001;
C2 = 0.001;
Bp1 = 1;
Bp2 = 1;
Dp1 = 1;
Dp2 = 1;
Kw1 = 1;
Kw2 = 1;
I_elevatie = 0.00437;
I_azimut = 0.00414;
m = 0.0117;
l = 0.33;
g = 10;
K_gyro = 0.015;
B_elevatie = 0.001 * 1.8;
B_azimut = 0.001 * 8.69;
C_elevatie = 0;
C_azimut = 0;
%% Subpunctele b) si c):
u1 = 0.1:0.1:1.2;
u2 = 0.1:0.1:1.2;

w1 = [ 2.550e-2 5.089e-2 7.571e-2 9.998e-2 1.237e-1 1.470e-1 1.699e-1 1.923e-1 2.143e-1 2.359e-1 2.571e-1 2.780e-1];
w2 = [ 9.945e-3 2.028e-2 3.052e-2 4.065e-2 5.069e-2 6.063e-2 7.047e-2 8.024e-2 8.991e-2 9.950e-2 1.090e-1 1.184e-1];

figure;
plot(u1, w2,'r', 'LineWidth',2);
hold on;
plot(u2, w1,'b', 'LineWidth',2);
grid on;
hold off;
%% Subpunctul d):
[x,u1,y] = trim('diagrama2',[],0.1,[],[],[1],[])
[A,B,C,D] = linmod('diagrama2', x,u1,y)
 
[x,u1,y] = trim('diagrama2',[],0.2,[],[],[1],[])
[A1,B1,C1,D1] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],0.3,[],[],[1],[])
[A2,B2,C2,D2] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],0.4,[],[],[1],[])
[A3,B3,C3,D3] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],0.5,[],[],[1],[])
[A4,B4,C4,D4] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],0.6,[],[],[1],[])
[A5,B5,C5,D5] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],0.7,[],[],[1],[])
[A6,B6,C6,D6] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],0.8,[],[],[1],[])
[A7,B7,C7,D7] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],0.9,[],[],[1],[])
[A8,B8,C8,D8] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],1,[],[],[1],[])
[A9,B9,C9,D9] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],1.1,[],[],[1],[])
[A10,B10,C10,D10] = linmod('diagrama2', x,u1,y)

[x,u1,y] = trim('diagrama2',[],1.2,[],[],[1],[])
[A11,B11,C11,D11] = linmod('diagrama2', x,u1,y)
%% Subpunctul e):
ul=0.1:0.1:1.2;
vector=[5.196e-04 1.039e-03 1.559e-03 2.078e-03 2.598e-03 3.118e-03 3.637e-03 4.158e-03 4.676e-03 5.196e-03 5.716e-03 6.235e-03];

for i = 1 : 12
    epsilon(i) = (norm(vector(i)-w1(i))/w1(i)); 
end
figure;
plot(ul,epsilon)
%% Subpunctele f), g) si h):

