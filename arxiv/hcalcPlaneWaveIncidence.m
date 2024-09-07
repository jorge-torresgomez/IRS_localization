function [pw,pol,dir] = hcalcPlaneWaveIncidence(theta,phi,irs)
% Construct the planeWaveExcitation object with irs as Element. The
% Direction and polarization of the incident planewave is computed based on
% the incidence angles theta and phi. 

dir=[sind(theta)*cosd(phi);...
    sind(theta)*sind(phi);...
    -cosd(theta)];
pol=[cosd(theta)*cosd(phi);...
    cosd(theta)*sind(phi);...
    sind(theta)];
pw=planeWaveExcitation('Element',irs);
pw.Direction=dir;
pw.Polarization=pol;
end