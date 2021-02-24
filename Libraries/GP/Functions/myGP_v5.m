function [y_pred,predVar,predCoVar] = myGP_v5(x,xStar,y,hyp)

yNorm = y-mean(y);                              %   Normalized around zero mean
% hyp = [var(yNorm),lam,.0625];                   %   Green phase start times' hyperparameters 
k = @(x,y) hyp(1)...                            %   Kernel function 
    *exp(-.5*hyp(2)^-2*(x-y)^2);

[~,K1star,K2star,invK] = buildK(k,x,xStar,hyp); %   Build covariance matrices 

yPred = K1star*invK*yNorm';                     %   Predicted mean normalized around zero mean
predVar = diag(K2star)...                       %   Predicted variance 
    -diag(K1star*invK*K1star');
predCoVar = K2star-K1star*invK*K1star';         %   Predicted variance 
y_pred = yPred+mean(y);                         %   Non-normalized result

end