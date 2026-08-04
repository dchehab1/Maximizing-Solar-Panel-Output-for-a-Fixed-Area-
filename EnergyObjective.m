function [E] = EnergyObjective(theta, r)

% EnergyObjective will calculate the total energy output of a solar panel

% E = EnergyObjective(theta,r) returns the total energy output (E) based on
% the panel's tilt angle (theta) in degrees and aspect ratio (r). Uses the 
% area of the panel, efficiency function, sun intensity, and shape
% effeciency to calculate the energy output 

% Inputs:
% theta - Tilt angle of the solar panel
% r - Aspect ratio of the solar panel

% Outputs:
% E - Total energy output (in Watts or arbitrary energy units)

% Step 1: Define A (Panel area in m^2) 
% The total surface area of the panel is fixed at 2 square meters
A = 2; 

%Step 2: Define nu (efficiency function based on tilt angle)
nu = cosd(theta - 30); 

%Step 3: Define sunIntensity (Sunlight variation with tilt)
sunIntensity = 1000*cosd(theta - 45); 

%Step 4: Define fr (Shape efficiency based on aspect ratio)
fr = exp(-0.1*((r-1).^2)); 

%Step 5: Define energy output function 
E = A .* nu .* sunIntensity .* fr; 

end