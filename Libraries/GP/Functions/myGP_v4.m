function [y_pred,predVar] = myGP_v4(x,xStar,y,hyp)

p = polyfit(x',y,1);                            %   Linear fit coefficients 
f = @(xx) p(1)*xx+p(2);                         %   Linear fit line
s = f(x');                                      %   Input data shift vector 
yNorm = y-s;                                    %   Normalized around zero mean
% yNorm = y-mean(y);                              %   Normalized around zero mean
% hyp = [var(yNorm),lam,.0625];                   %   Green phase start times' hyperparameters 
k = @(x,y) hyp(1)...                            %   Kernel function 
    *exp(-.5*hyp(2)^-2*(x-y)^2);

[~,K1star,K2star,invK] = buildK(k,x,xStar,hyp); %   Build covariance matrices 

yPred = K1star*invK*yNorm';                     %   Predicted mean normalized around zero mean
predVar = diag(K2star)...                       %   Predicted variance 
    -diag(K1star*invK*K1star');
s_p = f(xStar);                                 %   Output data shift vector 
y_pred = yPred+s_p;                             %   Non-normalized result
% y_pred = yPred+mean(y);                         %   Non-normalized result

end