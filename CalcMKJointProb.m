% Create the function
% The function will receive the input obsData and return 
% the output jointProb
function[jointProb] = CalcMKJointProb (obsData)

% Total number of rows of the obsdata or the number of 
% samples in the obsData
numRow = size(obsData,1);

% Initialize the output of the function with the 3X3 matrix
jointProb = zeros(3,3);

% Using for loop to go through each place that the player was
% in and corresponding item that the player obtained 
for ii = 1:numRow
    % The player was in first place and obtained the blue shell
    % Update the count in row 1 and comlumn 1
    if(obsData(ii,1) == 1 && obsData(ii,2) == 1)
        jointProb(1,1) = jointProb(1,1) + 1;
    % The player was in first place and obtained the red shell
    % Update the count in row 1 and comlumn 2
    elseif(obsData(ii,1) == 1 && obsData(ii,2) == 2)
        jointProb(1,2) = jointProb(1,2) + 1;
    % The player was in first place and obtained the banana
    % Update the count in row 1 and comlumn 3
    elseif(obsData(ii,1) == 1 && obsData(ii,2) == 3)
        jointProb(1,3) = jointProb(1,3) + 1;
    % The player was in second place and obtained the blue shell
    % Update the count in row 2 and comlumn 1
    elseif(obsData(ii,1) == 2 && obsData(ii,2) == 1)
        jointProb(2,1) = jointProb(2,1) + 1;
    % The player was in second place and obtained the red shell
    % Update the count in row 2 and comlumn 2
    elseif(obsData(ii,1) == 2 && obsData(ii,2) == 2)
        jointProb(2,2) = jointProb(2,2) + 1;
    % The player was in second place and obtained the banana
    % Update the count in row 2 and comlumn 3
    elseif(obsData(ii,1) == 2 && obsData(ii,2) == 3)
        jointProb(2,3) = jointProb(2,3) + 1;
    % The player was in third place and obtained the blue shell
    % Update the count in row 3 and comlumn 1
    elseif(obsData(ii,1) == 3 && obsData(ii,2) == 1)
        jointProb(3,1) = jointProb(3,1) + 1;
    % The player was in third place and obtained the red shell
    % Update the count in row 3 and comlumn 2
    elseif(obsData(ii,1) == 3 && obsData(ii,2) == 2)
        jointProb(3,2) = jointProb(3,2) + 1;
    % The player was in third place and obtained the blue shell
    % Update the count in row 3 and comlumn 3
    elseif(obsData(ii,1) == 3 && obsData(ii,2) == 3)
        jointProb(3,3) = jointProb(3,3) + 1;
    end
end
%Turn our count into a probabibility via the relative frequency approach by
%dividing the count by the number of samples in the obsData.
jointProb = jointProb/numRow;
end

        