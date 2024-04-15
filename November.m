x1 = optimvar('x1','LowerBound',1,'UpperBound',102);
x2 = optimvar('x2','LowerBound',1,'UpperBound',19);
x3 = optimvar('x3','LowerBound',1,'UpperBound',5);
x4 = optimvar('x4','LowerBound',1,'UpperBound',4);
x5 = optimvar('x5','LowerBound',1,'UpperBound',11);

prob = optimproblem('Objective',x1 + x2 + x3 + x4 + x5, 'ObjectiveSense','max');

% Adjusted storage capacity constraint 
prob.Constraints.c1 = 200*x1 + 170*x2 + 200*x3 + 130*x4 + 130*x5 <= 830;

% Adjusted budget constraint  
prob.Constraints.c2 = 4116*x1 + 8076.6*x2 + 3791.2*x3 + 6300*x4 + 7047.9*x5 <= 6570000;

%Demand Constraint  


%Value Constraint

[sol,fval,exitflag,output] = solve(prob);

disp('Optimal solution:');
disp(sol);
disp(['Objective function value at the solution (fval) (Z): ', num2str(fval)]);
disp(['Exit flag (Reason lineprog stopped): ', num2str(exitflag)]);
disp('Output (information about the optimization process:');
disp(output);