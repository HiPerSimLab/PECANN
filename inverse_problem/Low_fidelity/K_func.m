function K = K_func(S_e)
global K_s m
K    = K_s*S_e.^(1/2).*(1 - (1 - S_e.^(1/m)).^m).^2;
return 