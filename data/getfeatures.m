function sim1 = importfile(filename, dataLines)

if nargin < 2
    dataLines = [4, Inf];
end

opts = delimitedTextImportOptions("NumVariables", 12);

opts.DataLines = dataLines;
opts.Delimiter = " ";

opts.VariableNames = ["VarName1", "Transmitter", "Set", "All", "Var5", "Var6", "Var7", "Var8", "VarName9", "VarName10", "VarName11", "VarName12"];
opts.SelectedVariableNames = ["VarName1", "Transmitter", "Set", "All", "VarName9", "VarName10", "VarName11", "VarName12"];
opts.VariableTypes = ["double", "double", "double", "double", "string", "string", "string", "string", "double", "double", "double", "double"];

opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.ConsecutiveDelimitersRule = "join";
opts.LeadingDelimitersRule = "ignore";

opts = setvaropts(opts, ["Var5", "Var6", "Var7", "Var8"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Var5", "Var6", "Var7", "Var8"], "EmptyFieldRule", "auto");

sim1 = readtable(filename, opts);

sim1 = table2array(sim1);
end