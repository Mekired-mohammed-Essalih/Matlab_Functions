% ��������������Ŵ��㷨
% 20�����У�1����·
clear,clc
close all
load city_distance.mat
load city_location.mat
City_Number=20;         %��������
Race_Number=200;        %��Ⱥ����
Iteration=100;          %��������
P_Cross=0.8;            %�������
P_Mutation=0.2;         %�������
race=zeros(Race_Number,City_Number+2);
%��ʼ����Ⱥ
for i=1:Race_Number                         
    temp=randperm(City_Number);
    route=[City_Number+1,temp,City_Number+1];
    route=ga_hamilton(route);        %ʹ�ø���Ȧ�㷨�Ż���ʼ��Ⱥ
    race(i,:)=route;
end
for t=1:Iteration
    adaptation=ga_adaptation(race);         %������Ӧ�ȴ�С
    race=ga_choose(race,adaptation);        %����ѡ�����
    race=ga_cross(race,P_Cross);            %���н������
    race=ga_mutation(race,P_Mutation);      %���б������
    [path,val]=ga_plot(race);
    pause(0.1);
    fprintf('��%d��,���Ž�Ϊ%d\n',t,val);
end
