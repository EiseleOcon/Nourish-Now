% Project to Alleviate Hunger in Local Communities 

% This program collects and distributes surplus food 
% from restaurants and grocery stores to the needy. 

% Initialize variables 
  surplusFood = 0; 
  donationLocations = {}; 
  collectedFood = 0; 
  distributionTotal = 0;
 
% Loop through list of potential donation locations
for locationIdx = 1:length(donationLocations)
    % Ask if location has surplus food
    response = input(['Does ', donationLocations{locationIdx}, ...
        ' have surplus food? (Y/N) '], 's');
    
    % If location has surplus food, collect it
    if strcmp(response, 'Y')
        surplusFood = surplusFood + 1;
        collectedFood = collectedFood + 1;
    end
end
 
% Output collected food
fprintf('Total Collected %d\n', collectedFood);
 
% Calculate distribution rate 
distributionRate = collectedFood / surplusFood;
 
% Output distribution rate 
fprintf('Distribution rate: %.2f\n', distributionRate);
 
% Loop through list of collection locations
for locationIdx = 1:length(donationLocations)
    % Calculate number of units to distribute
    numUnits = ceil(distributionRate*surplusFood);
    
    % Calculate total number of units distributed
    distributionTotal = distributionTotal + numUnits;
    
    % Display amount of food to be distributed
    fprintf('Distributing %d units to %s\n', numUnits, ...
        donationLocations{locationIdx});
end

% Output total number of units distributed
fprintf('Total distributed: %d\n', distributionTotal);