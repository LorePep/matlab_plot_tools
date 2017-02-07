function [ h ] = plot_me( x, y, figtitle, xlab, ylab, ls, lw, font, h)
%PLOT_ME Function to plot higher quality figures
%   This function plots figures with aesthetics fixes, for 
%   a more pleasant graphical look
%   Args:
%       x: data along the x-axis
%       y: data along the y-axis
%       figtitle: figure title
%       xlab: x-axis label, use '' for no label
%       ylab: y-axis label, use '' for no label
%       ls: line style
%       lw (optional): plot line-width, default is 1.5
%       font (optional): font for the text in the figure, default is Arial
%
%       Author: Lorenzo Peppoloni
%       www.github.com/LorePep

if nargin < 9
    h = figure;
if nargin < 8
    font = 'Arial';
end
if nargin < 7
    lw = 1.5;
end
        

plot(x,y, ls, 'LineWidth', lw);

hTitle = title(figtitle);

xLab = xlabel(xlab);
yLab = ylabel(ylab);

set( gca                       , ...
        'FontName'   , font,...
        'FontSize'   , 12, ...
        'FontWeight' , 'bold',...
        'Box'         , 'off'     , ...
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

