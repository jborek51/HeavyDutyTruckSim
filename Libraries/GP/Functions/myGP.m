function [y_pred,predVar] = myGP(x,xStar,y,hyp)

yNorm = y-mean(y);                              %   Normalized around zero mean
k = @(x,y) hyp(1)...                         %   Kernel function 
    *exp(-.5*hyp(2)^-2*(x-y)^2);

[~,K1star,K2star,invK] = buildK(k,x,xStar,hyp); %   Build covariance matrices 

yPred = K1star*invK*yNorm';                      %   Predicted mean normalized around zero mean
predVar = diag(K2star)...                       %   Predicted variance 
    -diag(K1star*invK*K1star');

y_pred = yPred+mean(y);                         %   Non-normalized result

end

