clc;clear all;close all;
% parameters are set inside bvpfunc
% a : (0.015, 0.15)
% m : (0.057, 0.40) 
% 
global a_0 m K_s
a_0   = 0.015 ; 
m     = 0.31  ;
K_s   = 1.04  ;



xmesh   = linspace(0,200,26);
solinit = bvpinit(xmesh,@guess);
sol = bvp5c(@bvpfunc,@bcfunc,solinit);

x = sol.x;
y = sol.y;

h  = y(1,:);
q  = y(2,:);

figure()
plot(x,h,'bo--','LineWidth',2);
xlabel('x')
ylabel('h(x)')

S_e   = Se_func(h);
K     = K_func(S_e);

figure()
plot(h,K,'bo--','MarkerFaceColor','blue','LineWidth',1);
xlabel('h')
ylabel('K(h)')

save('LF_data.mat','x','h','K')
