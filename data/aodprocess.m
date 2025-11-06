clear
clc
nos = 10;

for i = 1:nos % No# of simulation
    eb = [];
    for j = 1:3 % No# BS
        ef = [];
        for k=1:3 % No# Floor 
            path = ['./sim',num2str(i),'/studyarea/rmsaglspreaddep/a',num2str(j),'.f',num2str(k),'.csv'];
            a = getaod(path);
            ef = [ef;a];
        end
        eb = [eb,ef];
    end
    eval(['AoD_',num2str(i),'=eb;']);
    save(['./AoD/AoD_',num2str(i),'.mat'],['AoD_',num2str(i)]);
end