function dydx = bvpfunc(x,y)
dydx  = zeros(2,1);
S_e   = Se_func(y(1));
K     = K_func(S_e);

dydx(1) = -y(2)/K; % 
dydx(2) = 0;

return 