% This is a neural netowrk model to classify the type of vegetation based
% on satellite image data 


data = readtable("dataset.csv", 'PreserveVariableNames', true);
X = data(:,2:end); % get the features
X = table2array(X); 
X = X.';

fieldnames(data);
Y = data(:,1);   % get the target value 
Y = table2array(Y);
Y = categorical(Y);
Y = Y.';

Q = zeros(4 ,size(Y,2));
for i = 1:numel(Y)
   if Y(i) == "water"
       Z = [1; 0; 0; 0];
       Q(:,i) = Z; 
    
   elseif Y(i) == "forest"
       Z = [0; 1; 0; 0];
       Q(:,i) = Z; 
   
   elseif Y(i) == "farm"
       Z = [0; 0; 1; 0];
       Q(:,i) = Z; 
    
   elseif Y(i) == "impervious"
       Z = [0; 0; 0; 1];
       Q(:,i) = Z;
       
   else
       Z = [0; 0; 0; 0];
       Q(:,i) = Z; 
    end    
end

% building the neural network 
net = patternnet(20);
% training the neural network 
net = train(net,X,Q);
YPred = net(X);
plotconfusion(Q,YPred, "Model A");

% TRAINING THE NEW NEURAL NETWORK 
%netDeeper = patternnet([20,20]);
%[netDeeper,tr] = train(netDeeper,X,Q);
%YPred2 = netDeeper(X);
%plotconfusion(Q,YPred2, "Model B");
 
