function PlotStyle(object,varargin)
% This is a figure template function that automatically sets your figure
% when it is called. This function has the exact same parameters as the
% MATLAB figure settings. The modifiable options and their default values
% are listed below.
%     box on;
%     set(gca, ...
%         'FontName','Times New Roman'                , ...
%         'FontSize', 16                              , ...
%         'LineWidth', 1);
%     set(object,...
%         'LineWidth', 2);
%     set(legend, ...
%         'FontName','Times New Roman'                , ...
%         'FontSize',14);

if ~isa(object, 'matlab.graphics.chart.primitive.Line')
%     disp('The function just can setup line objective')
%     axes1 = axes('Parent',gcf);
    set(object,'LineStyle','none')
    view([1,1,0.5])
    return
end

box on;
set(gca, ...
    'FontName','Times New Roman'                , ...
    'FontSize', 16                              , ...
    'LineWidth', 1);
set(object,...
	'LineWidth', 2);
set(legend, ...
    'FontName','Times New Roman'                , ...
    'FontSize',14);

if isempty(varargin)
    fprintf('Applied the default figure feature template.\n')

else
    for i = 1:2:length(varargin)
        
        option = varargin{i};
        value = varargin{i + 1};
        switch option
            case 'axis'
                
                x_min = value(1);
                x_max = value(2);
                y_min = value(3);
                y_max = value(4);
                if length(value) == 6
                    z_min = value(5);
                    z_max = value(6);
                    axis([x_min x_max y_min y_max z_min z_max]);
                    continue
                end
                axis([x_min x_max y_min y_max]);
            case 'title'
                title(value);
            case 'xlabel'
                xlabel(value);
            case 'ylabel'
                ylabel(value);
            case 'zlabel'
                zlabel(value);
            otherwise

        end
    end


end
% get search path
cellpath = regexp(path,['(.*?)\' pathsep],'tokens');
cellpath = [cellpath{:}];

% get local path
local_path = fileparts(mfilename('fullpath'));

% check wether local_path is in search path
if ~any(strcmpi(local_path,cellpath))
  disp('This directory is not in the search path list, please add it manually to call the function anywhere');
end
end
