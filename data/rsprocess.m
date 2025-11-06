clear
clc

nos = 10;
l=[13,14,15];
for i = 1:nos % No# of simulation
    eb = [];
    for j = 1:3 % No# BS
        ef = [];
        for k=1:3 %No# Floor 
            path = ['./sim',num2str(i),'/studyarea/cs',num2str(j),'/sim',num2str(i),'.rsumlte.r',num2str(l(k)),'.p2m'];
            if j == 1
                a = getfeatures(path);
                fl_n = ones(size(a,1),1).*k;
                a = [fl_n,a];
                ef = [ef;a];
            else
                a = getfeatures(path);
                b = a(:,5:8);
                ef = [ef;b];
            end
        end
        eb = [eb,ef];
    end
    p_n = (1:size(eb,1))';
    eb=[eb(:,1:2),p_n,eb(:,3:end)];
    eval(['features_',num2str(i),'=eb;']);
    save(['./Features/features_',num2str(i),'.mat'],['features_',num2str(i)]);
end


