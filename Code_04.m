% % clear all
Ea=1;
f=1;
G1=0.001;
G2=0.0000001;
kT=0.05;
%%电极初始化
AgM=zeros(400,400);
for i=140:1:260
   for j=1:1:120
       if ((i-150)>=0.5*j)&&((251-i)>=0.5*j)
           AgM(i,j)=-1;
       end
   end
end

for i=140:1:260
   for j=280:1:400
       if (2*(i-150)>=401-j)&&(2*(251-i)>=(401-j))
           AgM(i,j)=-1;
       end
   end
end
for j=140:1:260
   for i=1:1:120
       if ((j-150)>=0.5*i)&&((251-j)>=0.5*i)
           AgM(i,j)=-1;
       end
   end
end

for j=140:1:260
   for i=280:1:400
       if (2*(j-150)>=401-i)&&(2*(251-j)>=(401-i))
           AgM(i,j)=-1;
       end
   end
end

%%圆电极初始化
for i=1:1:400
   for j=1:1:400
       if (((i-150)^2+(j-150)^2)<1600)||(((i-150)^2+(j-250)^2)<1600)||(((i-250)^2+(j-200)^2)<1600)
           AgM(i,j)=-1;
       end
   end
end

%%银颗粒初始化
% % for i=1:1:1000
% %    for j=1:1:2000
% %        if ((mod(i,20)^2+mod(j,20)^2)<49||((20-mod(i,20))^2+mod(j,20)^2)<49||(mod(i,20)^2+(20-mod(j,20))^2)<49||((20-mod(i,20))^2+(20-mod(j,20))^2)<49)&&(AgM(i,j)==0)
% %            AgM(i,j)=1;
% %        end
% %    end
% % end
dd=20;
aa=5;
% for i=1:1:400
%    for j=1:1:800
%        if ((mod(i,dd)^2+mod(j,dd)^2)<=aa||((dd-mod(i,dd))^2+mod(j,dd)^2)<=aa||(mod(i,dd)^2+(dd-mod(j,dd))^2)<=aa||((dd-mod(i,dd))^2+(dd-mod(j,dd))^2)<=aa)
%            if AgM(i,j)==0
%            AgM(i,j)=3;
%            end
%            if (i+(dd/2))<=200&&(j+(dd/2))<=400
%            if (AgM(i+(dd/2),j+(dd/2))==0)
%                AgM(i+(dd/2),j+(dd/2))=3;
%            end
%            end
%            if (i-(dd/2))>=1&&(j-(dd/2))>=2
%                if(AgM(i-(dd/2),j-(dd/2))==0)
%                AgM(i-(dd/2),j-(dd/2))=3;
%                end
%            end
%        end
%    end
% end
Agt=rand(400,400);
ddd=round(3^0.5/2*dd);
for i=2:1:398
   for j=2:1:398
       if (mod(j,dd)==0&&mod(i,2*ddd)==0)||(mod(j+dd/2,dd)==0&&mod(i+ddd,2*ddd)==0)
        if AgM(i,j)==0
           AgM(i,j)=6;
           end
           if AgM(i-1,j)==0
           AgM(i-1,j)=5;
           end
           if AgM(i-1,j+1)==0
            AgM(i-1,j+1)=6;
           end
           if AgM(i,j-1)==0
            AgM(i,j-1)=5;
           end
                   if AgM(i,j+1)==0
            AgM(i,j+1)=6;
                   end
                      if AgM(i,j+2)==0
            AgM(i,j+2)=5;
           end
                     if AgM(i+1,j-1)==0
            AgM(i+1,j-1)=5;
                     end
                     if AgM(i+1,j)==0
            AgM(i+1,j)=6;
                     end
                   if AgM(i+1,j+1)==0
            AgM(i+1,j+1)=5;
                   end
                      if AgM(i+1,j+2)==0
            AgM(i+1,j+2)=5;
           end

            if AgM(i+2,j)==0
            AgM(i+2,j)=5;
                     end
            if AgM(i+2,j+1)==0
            AgM(i+2,j+1)=5;
            end
       end       
            
       if Agt(i,j)<0.003
            if AgM(i,j)==0
           AgM(i,j)=6;
           end
           if AgM(i-1,j)==0
           AgM(i-1,j)=5;
           end
           if AgM(i-1,j+1)==0
            AgM(i-1,j+1)=5;
           end
           if AgM(i,j-1)==0
            AgM(i,j-1)=5;
           end
                   if AgM(i,j+1)==0
            AgM(i,j+1)=6;
                   end
                      if AgM(i,j+2)==0
            AgM(i,j+2)=5;
           end
                     if AgM(i+1,j-1)==0
            AgM(i+1,j-1)=5;
                     end
                     if AgM(i+1,j)==0
            AgM(i+1,j)=6;
                     end
                   if AgM(i+1,j+1)==0
            AgM(i+1,j+1)=6;
                   end
                      if AgM(i+1,j+2)==0
            AgM(i+1,j+2)=5;
           end

            if AgM(i+2,j)==0
            AgM(i+2,j)=5;
                     end
            if AgM(i+2,j+1)==0
            AgM(i+2,j+1)=5;
            end
       end    
   end
end
% Vm=20*rand(1000,2000);
% for j=1:1:400
%     vrrr=rand(200,1);
%     Vm(:,j)=0.02*j*vrrr;
% end
Vm=zeros(400,400);
for j=1:1:400
    Vm(:,j)=20-0.05*j;
end
% for j=201:1:400
%     Vm(:,j)=0.05*(j-200);
% end
% for i=201:1:400
%   for  j=1:1:200
%     Vm(i,j)=20-0.05*j;
%   end
%  for j=201:1:400
%      Vm(i,j)=10;
%  end
% end
% 电场调节
AgMM=AgM;

for i=1:1:400
   for j=1:1:400
       if AgM(i,j)>=1
           AgM(i,j)=0.9;
       end
   end
end
%%%%%%%%%%%%%%%%%%%求电场
lamd=-0.95; %%下降系数
p=0;
conv=0.00001;
convI=1e-7;


while (p<160000)
    p=0;
  for i=1:1:400
   for j=1:1:400
       It=0;It1=0;It2=0;It3=0;It4=0;It5=0;It6=0;It7=0;It8=0; %%%初始化电流
       GV=0;
       if i==1
           if j==1
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It5+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
           else
           if j==400
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It=It4+It6+It7;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end     
           else
               if (j>149)&&(j<251)
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It2=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It6+It7+It8+It1+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
           end
           else
               It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It6+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
           end
           end
           end
           end
       else
           if i==400
           if j==1

           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It=It5+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
           else
           if j==400
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It=It1+It2+It4;
          if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end     
           else
            if j>149&&j<251
           It7=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It=It4+It5+It6+It7+It8+It1+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
           end
           else    
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It=It4+It5+It1+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
            end  
           end
           end 
           end
           else
           if j==1
               if (i>149)&&(i<251)
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It1+It2+It3+It6+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
               else
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It5+It2+It3+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
               end
           else
           if j==400
               if (i>149)&&(i<251)
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It=It4+It5+It1+It2+It3+It6+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end 
               else
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It=It4+It1+It2+It6+It7;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end   
               end
           else
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It1+It2+It3+It6+It7+It8;
            if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
            end  
           end
           end 
           end
       end
Imat(i,j)=abs(It1)+abs(It2)+abs(It3)+abs(It4)+abs(It5)+abs(It6)+abs(It7)+abs(It8);
   end
 end
 p
   
end

convI=2e-8;
conv=2e-5;
AgM=AgMM;
k=0;

f=1e2;
Ea=0.1;
kt=0.05;
kk=50;
AgM=AgMM;
for k=500:1:5000
    tt=0;
Pul=zeros(400,400);
Pu=zeros(400,400);
Pur=zeros(400,400);
Pl=zeros(400,400);
Pr=zeros(400,400);
Pdl=zeros(400,400);
Pd=zeros(400,400);
Pdr=zeros(400,400);
for i=1:1:400
    for j=1:1:400
    if (j>1)&&(i>1)&&(AgM(i,j)>-1)&&AgM(i-1,j-1)==0
        Pul(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i-1,j-1))/kT)*AgM(i,j);
    end
      if (i>1)&&(AgM(i,j)>-1)&&AgM(i-1,j)==0
        Pu(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i-1,j))/kT)*AgM(i,j); 
      end
          if (j<400)&&(i>1)&&(AgM(i,j)>-1)&&AgM(i-1,j+1)==0
        Pur(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i-1,j+1))/kT)*AgM(i,j)*0.001;
          end
        if (j>1)&&(AgM(i,j)>-1)&&AgM(i,j-1)==0
        Pl(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i,j-1))/kT)*AgM(i,j);
        end
        if (j<400)&&(AgM(i,j)>-1)&&AgM(i,j+1)==0
        Pr(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i,j+1))/kT)*AgM(i,j);
        end
        if (j>1)&&(i<400)&&(AgM(i,j)>-1)&&AgM(i+1,j-1)==0
        Pdl(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i+1,j-1))/kT)*AgM(i,j);
        end
            if (i<400)&&(AgM(i,j)>-1)&&AgM(i+1,j)==0
        Pd(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i+1,j))/kT)*AgM(i,j);
            end
                if (j<400)&&(i<400)&&(AgM(i,j)>-1)&&AgM(i+1,j+1)==0
        Pdr(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i+1,j+1))/kT)*AgM(i,j);
                end
    end
end
Ps=Pul+Pu+Pur+Pl+Pr+Pdl+Pd+Pdr;
dt=0.9/(max(max(Ps)));
Mo=0; 
hopp=rand(400,400);
for i=1:1:400
    for j=1:1:400
        Mo=Mo+1;
           if hopp(i,j)<(Pul(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i-1,j-1)=1;
        else
            if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i-1,j)=1;
            else
             if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i-1,j+1)=1;
             else
               if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i,j-1)=1;
               else
              if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i,j+1)=1;
              else
              if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt+Pdl(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i+1,j-1)=1;
              else
            if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt+Pdl(i,j)*dt+Pd(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i+1,j)=1;
            else
            if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt+Pdl(i,j)*dt+Pd(i,j)*dt+Pdr(i,j)*dt)&&AgM(i,j)>0
            AgM(i,j)=AgM(i,j)-1;
            AgM(i+1,j+1)=1;
            else
                Mo=Mo-1;
            end
            end
              end
              end
               end
             end
            end
        end
    end
end

AgMM=AgM;
for i=1:1:400
   for j=1:1:400
       if AgM(i,j)>=1
           AgM(i,j)=0.9;
       end
   end
end

p=0;
while (p<160000)
    p=0;
  for i=1:1:400
   for j=1:1:400
         It=0;It1=0;It2=0;It3=0;It4=0;It5=0;It6=0;It7=0;It8=0; %%%初始化电流
       GV=0;
       if i==1
           if j==1
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It5+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
           else
           if j==400
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It=It4+It6+It7;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end     
           else
               if (j>149)&&(j<251)
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It2=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It6+It7+It8+It1+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
           end
           else
               It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It6+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
           end
           end
           end
           end
       else
           if i==400
           if j==1

           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It=It5+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
           else
           if j==400
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It=It1+It2+It4;
          if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end     
           else
            if j>149&&j<251
           It7=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-10);
           GV=GV+G1*abs(AgM(i,j))+G2; 
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It=It4+It5+It6+It7+It8+It1+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
           end
           else    
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It=It4+It5+It1+It2+It3;
           if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
            end  
           end
           end 
           end
           else
           if j==1
               if (i>149)&&(i<251)
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It1+It2+It3+It6+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
               else
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It5+It2+It3+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end
               end
           else
           if j==400
               if (i>149)&&(i<251)
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It=It4+It5+It1+It2+It3+It6+It7+It8;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end 
               else
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It=It4+It1+It2+It6+It7;
           if abs(It/GV)>conv||abs(It)>convI
           Vm(i,j)=Vm(i,j)+lamd*It/GV;
           else
           p=p+1;    
           end   
               end
           else
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;    
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It8=(G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2)*(Vm(i,j)-Vm(i+1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j+1))+G2;
           It=It4+It5+It1+It2+It3+It6+It7+It8;
            if abs(It/GV)>conv||abs(It)>convI
            Vm(i,j)=Vm(i,j)+lamd*It/GV;
            else
            p=p+1;    
            end  
           end
           end 
           end
       end
Imat(i,j)=abs(It1)+abs(It2)+abs(It3)+abs(It4)+abs(It5)+abs(It6)+abs(It7)+abs(It8);
   end
 end
 
 
 
   
end

AgM=AgMM;
if mod(k,10)==0
Vmrecord(:,:,kk)=Vm;
AgMrecord(:,:,kk)=AgM;
Imatrecord(:,:,kk)=Imat;
kk=kk+1;
end
t(k)=tt+dt;
Morecord(k)=Mo;
k
end


           
