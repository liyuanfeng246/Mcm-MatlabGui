% conver hist to normalized hist Normalized hist makes sure the sum of PDF
% equals one
function [histFreq,histXout]=Nhist(x,numOfBins)
if nargin==1
    numOfBins=500;
end
[histFreq, histXout] = hist(x,numOfBins);
binWidth = histXout(2)-histXout(1);
figure;
bar(histXout, histFreq/(binWidth*sum(histFreq)),1);       
xlabel('x');
ylabel('PDF: f(x)');
end

