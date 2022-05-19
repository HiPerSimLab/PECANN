function Se = Se_func(h)
global m a_0
n = 1/(1-m);
Se = 1./(1 + (abs(a_0.*h)).^n).^m;
return 