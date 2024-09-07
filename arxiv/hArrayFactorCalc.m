function [AF] = hArrayFactorCalc(irs,f)
Nia=50;
% Create finiteArray for array factor computation of the infinite array
element=irs.Element;
ifa=rectangularArray('Element',element,'Size',[2*Nia+1 2*Nia+1],...
    'ColumnSpacing',element.GroundPlaneLength,'RowSpacing',...
    element.GroundPlaneWidth);
AFdB=arrayFactor(ifa,f,irs.ScanAzimuth, irs.ScanElevation); % in dB
AF=10^(0.1*AFdB);
end