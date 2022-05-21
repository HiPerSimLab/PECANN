function res = bcfunc(ya,yb)
% bcfunc Boundary conditions
% returns a column vector RES of the
% residual in the boundary conditions resulting from the
% approximations YA and YB to the solution at the ends of 
% the interval [a b]. The BVP is solved when RES = 0. 
% The components of y correspond to the original variables
% as  y(1) = h, y(2) = q


res = [ ya(1) +  3 
        yb(1) + 10];

return 