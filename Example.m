clc
clear
x = linspace(-pi,pi,100);
hold on;
line1 = plot(x,sin(x));
PlotStyle(line1);
PlotStyle(plot(x,cos(x)),   'title','Title',...
                            'xlabel','X',...
                            'ylabel','Y',...
                            'zlabel','Z',...
                            'axis',[-pi,pi,-pi,pi,-2,2]);
% »æÖÆÇúÃæ
[X, Y] = meshgrid(linspace(-pi, pi, 100));
Z = sin(sqrt(X.^2 + Y.^2));
surf1 = surf(X, Y, Z);
PlotStyle(surf1)

