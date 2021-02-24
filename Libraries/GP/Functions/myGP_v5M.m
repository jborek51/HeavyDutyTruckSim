function [y_pred,predVar] = myGP_v5M(x,xStar,y,hyp)

yNorm = y-s;                                    %   Normalized around zero mean

gprMdl = fitrgp(x,yNorm);                      %   Create GP model
[yPred,ysd] = predict(gprMdl,xStar);     %   Get predicted values 

predVar = ysd.^2;
y_pred = yPred+mean(y);                         %   Non-normalized result

end