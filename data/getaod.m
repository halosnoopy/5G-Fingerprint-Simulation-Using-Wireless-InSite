function a1 = importfile(filename, dataLines)

if nargin < 2
    dataLines = [4, Inf];
end

opts = delimitedTextImportOptions("NumVariables", 7);

opts.DataLines = dataLines;
opts.Delimiter = ",";

opts.VariableNames = ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "VarName7"];
opts.SelectedVariableNames = "VarName7";
opts.VariableTypes = ["string", "string", "string", "string", "string", "string", "double"];

opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6"], "EmptyFieldRule", "auto");

a1 = readtable(filename, opts);

a1 = table2array(a1);
end