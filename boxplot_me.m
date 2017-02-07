function [ bp ] = boxplot_me( data, gr, color,figtitle, xlab, ylab, labels, lw, font)
%BOXPLOT_ME Function to plot a nice boxplot figure
%   The managing of the input variable is the same of the traditional
%   Matlab boxplot function.
%   Args:
%       data: data to be plotted
%       gr: grouping variables
%       color: the color of the boxes
%       figtitle: the title of the figure
%       xlab: x-axis label
%       ylab: y-axis label
%       labels: labels for the groups
%       lw (optional): linewidth, default 1.5
%       font (optional): font for the figure, default Arial
%
%   Author: Lorenzo Peppoloni
%   www.github.com/LorePep

if nargin < 9
    font = 'Arial';
elseif nargin < 8
    lw = 1.5;
end

bp = boxplot(data, gr, 'Labels', labels);

h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),color,'FaceAlpha',.5);
end

set(bp,'linewidth', lw);

lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'Color', 'k');

h = findobj('Tag','Box');
set(h,'Color','k');

hTitle = title(figtitle);

xLab = xlabel(xlab);
yLab = ylabel(ylab);

set( gca                       , ...
    'FontName'   , font,...
    'FontSize'   , 12, ...
    'FontWeight' , 'bold',...
    'TickDir'     , 'out'     , ...
    'LineWidth'   , 2         );

set(gcf, 'color', 'white');

set([hTitle, xLab, yLab], ...
    'FontSize'   , 12, ...
    'FontWeight' , 'bold', ...
    'FontName'   , 'Arial');
set( hTitle                    , ...
    'FontSize'   , 14          , ...
    'FontWeight' , 'bold'      );

end

