x1 = optimvar('x1','LowerBound',0,'UpperBound',Inf);
x2 = optimvar('x2','LowerBound',0,'UpperBound',Inf);
x3 = optimvar('x3','LowerBound',0,'UpperBound',Inf);
x4 = optimvar('x4','LowerBound',0,'UpperBound',Inf);
x5 = optimvar('x5','LowerBound',0,'UpperBound',Inf);
prob = optimproblem('Objective',6360*x1 + 15288*x2 + 7220*x3 + 8480.58*x4 + 2950*x5, 'ObjectiveSense','max');
%Storage capacity (in terms of tire units)
prob.Constraints.c1 = x1 + x2 + x3 + x4 + x5  <= 4000;
%Budget contraint  (in terms of tire units)
prob.Constraints.c2 = 8*x1 + 4*x2 + x3 + 2*x4 + 5*x5 <= 2750;
%Demand Constraint  (in terms of tire units)
prob.Constraints.c3 = x1 >= 117;
prob.Constraints.c4 = x2 >= 45;
prob.Constraints.c5 = x3 >= 150;
prob.Constraints.c6 = x4 >= 179;
prob.Constraints.c7 = x5 >= 203;
[sol,fval,exitflag,output] = solve(prob);
disp('Optimal solution:');
disp(sol);
disp(['Objective function value at the solution (fval) (Z): ', num2str(fval)]);
disp(['Exit flag (Reason lineprog stopped): ', num2str(exitflag)]);
disp('Output (information about the optimization process:');
disp(output);

