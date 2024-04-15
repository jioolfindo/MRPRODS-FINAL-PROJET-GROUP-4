x1 = optimvar('x1','LowerBound',0,'UpperBound',Inf);
x2 = optimvar('x2','LowerBound',0,'UpperBound',Inf);
x3 = optimvar('x3','LowerBound',0,'UpperBound',Inf);
x4 = optimvar('x4','LowerBound',0,'UpperBound',Inf);
x5 = optimvar('x5','LowerBound',0,'UpperBound',Inf);

%objective function
prob = optimproblem('Objective',6071.47*x1 + 10320*x2 + 3860*x3 + 3042.49*x4 + 2460*x5, 'ObjectiveSense','max');

%Storage capacity (in terms of tire units)
prob.Constraints.c1 = x1 + x2 + x3 + x4 + x5  <= 3000;

%Budget contraint  (in terms of tire units)
prob.Constraints.c2 = 15*x1 + 10*x2 + 8*x3 + 6*x4 + 8*x5 <= 2500;

%Demand Constraint  (in terms of tire units)
prob.Constraints.c3 = x1 >= 55;
prob.Constraints.c4 = x2 >= 25;
prob.Constraints.c5 = x3 >= 45;
prob.Constraints.c6 = x4 >= 40;
prob.Constraints.c7 = x5 >= 70;

[sol,fval,exitflag,output] = solve(prob);

disp('Optimal solution:');
disp(sol);
disp(['Objective function value at the solution (fval) (Z): ', num2str(fval)]);
disp(['Exit flag (Reason lineprog stopped): ', num2str(exitflag)]);
disp('Output (information about the optimization process:');
disp(output);



