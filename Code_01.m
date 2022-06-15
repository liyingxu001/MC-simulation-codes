Ea=1;
f=1000000;
G1=0.001;
G2=0.00000001;
kT=0.026;
 conv=0.00005;
 convI=2e-8;
 lamd=-1;
%%电极初始化
AgM=zeros(100,200);

for i=1:1:100
   for j=1:1:200
       if (i+16>=j)&&((117-i)>=j)
           AgM(i,j)=-1;
       end
   end
end

for i=1:1:100
   for j=1:1:200
       if (i+17>=201-j)&&((118-i)>=(201-j))
           AgM(i,j)=-1;
       end
   end
end

dd=20;
Agt=rand(100,200);
ddd=round(3^0.5/2*dd);

for i=6:1:94
   for j=2:1:198
       if (mod(j,dd)==0&&mod(i,2*ddd)==0)||(mod(j+dd/2,dd)==0&&mod(i+ddd,2*ddd)==0)
        if AgM(i,j)==0
           AgM(i,j)=3;
           end
           if AgM(i-1,j)==0
           AgM(i-1,j)=3;
           end
           if AgM(i-1,j+1)==0
            AgM(i-1,j+1)=3;
           end
           if AgM(i,j-1)==0
            AgM(i,j-1)=3;
           end
                   if AgM(i,j+1)==0
            AgM(i,j+1)=3;
                   end
                      if AgM(i,j+2)==0
            AgM(i,j+2)=3;
           end
                     if AgM(i+1,j-1)==0
            AgM(i+1,j-1)=3;
                     end
                     if AgM(i+1,j)==0
            AgM(i+1,j)=3;
                     end
                   if AgM(i+1,j+1)==0
            AgM(i+1,j+1)=3;
                   end
                      if AgM(i+1,j+2)==0
            AgM(i+1,j+2)=3;
           end

            if AgM(i+2,j)==0
            AgM(i+2,j)=3;
                     end
            if AgM(i+2,j+1)==0
            AgM(i+2,j+1)=3;
            end
       end       
            
       if Agt(i,j)<0.003
            if AgM(i,j)==0
           AgM(i,j)=2;
           end
           if AgM(i-1,j)==0
           AgM(i-1,j)=2;
           end
           if AgM(i-1,j+1)==0
            AgM(i-1,j+1)=2;
           end
           if AgM(i,j-1)==0
            AgM(i,j-1)=2;
           end
                   if AgM(i,j+1)==0
            AgM(i,j+1)=2;
                   end
                      if AgM(i,j+2)==0
            AgM(i,j+2)=2;
           end
                     if AgM(i+1,j-1)==0
            AgM(i+1,j-1)=2;
                     end
                     if AgM(i+1,j)==0
            AgM(i+1,j)=2;
                     end
                   if AgM(i+1,j+1)==0
            AgM(i+1,j+1)=2;
                   end
                      if AgM(i+1,j+2)==0
            AgM(i+1,j+2)=2;
           end

            if AgM(i+2,j)==0
            AgM(i+2,j)=2;
                     end
            if AgM(i+2,j+1)==0
            AgM(i+2,j+1)=2;
            end
       end    
   end
end

i=50;
j=80;
        if AgM(i,j)==0
           AgM(i,j)=3;
           end
           if AgM(i-1,j)==0
           AgM(i-1,j)=3;
           end
           if AgM(i-1,j+1)==0
            AgM(i-1,j+1)=3;
           end
           if AgM(i,j-1)==0
            AgM(i,j-1)=3;
           end
                   if AgM(i,j+1)==0
            AgM(i,j+1)=3;
                   end
                      if AgM(i,j+2)==0
            AgM(i,j+2)=3;
           end
                     if AgM(i+1,j-1)==0
            AgM(i+1,j-1)=3;
                     end
                     if AgM(i+1,j)==0
            AgM(i+1,j)=3;
                     end
                   if AgM(i+1,j+1)==0
            AgM(i+1,j+1)=3;
                   end
                      if AgM(i+1,j+2)==0
            AgM(i+1,j+2)=3;
           end

            if AgM(i+2,j)==0
            AgM(i+2,j)=3;
                     end
            if AgM(i+2,j+1)==0
            AgM(i+2,j+1)=3;
            end
     i=55;
j=100;
        if AgM(i,j)==0
           AgM(i,j)=3;
           end
           if AgM(i-1,j)==0
           AgM(i-1,j)=3;
           end
           if AgM(i-1,j+1)==0
            AgM(i-1,j+1)=3;
           end
           if AgM(i,j-1)==0
            AgM(i,j-1)=3;
           end
                   if AgM(i,j+1)==0
            AgM(i,j+1)=3;
                   end
                      if AgM(i,j+2)==0
            AgM(i,j+2)=3;
           end
                     if AgM(i+1,j-1)==0
            AgM(i+1,j-1)=3;
                     end
                     if AgM(i+1,j)==0
            AgM(i+1,j)=3;
                     end
                   if AgM(i+1,j+1)==0
            AgM(i+1,j+1)=3;
                   end
                      if AgM(i+1,j+2)==0
            AgM(i+1,j+2)=3;
           end

            if AgM(i+2,j)==0
            AgM(i+2,j)=3;
                     end
            if AgM(i+2,j+1)==0
            AgM(i+2,j+1)=3;
            end   
            
            i=45;
            j=120;
        if AgM(i,j)==0
           AgM(i,j)=3;
           end
           if AgM(i-1,j)==0
           AgM(i-1,j)=3;
           end
           if AgM(i-1,j+1)==0
            AgM(i-1,j+1)=3;
           end
           if AgM(i,j-1)==0
            AgM(i,j-1)=3;
           end
                   if AgM(i,j+1)==0
            AgM(i,j+1)=3;
                   end
                      if AgM(i,j+2)==0
            AgM(i,j+2)=3;
           end
                     if AgM(i+1,j-1)==0
            AgM(i+1,j-1)=3;
                     end
                     if AgM(i+1,j)==0
            AgM(i+1,j)=3;
                     end
                   if AgM(i+1,j+1)==0
            AgM(i+1,j+1)=3;
                   end
                      if AgM(i+1,j+2)==0
            AgM(i+1,j+2)=3;
           end

            if AgM(i+2,j)==0
            AgM(i+2,j)=3;
                     end
            if AgM(i+2,j+1)==0
            AgM(i+2,j+1)=3;
            end
            
Vm=zeros(100,200);
for j=1:1:200
    %     vrrr=rand(100,1);
    Vm(:,j)=0.11*j;
end

AgMM=AgM;

for i=1:1:100
   for j=1:1:200
       if AgM(i,j)>=1
           AgM(i,j)=0.7;
       end
   end
end


p=0;
while (p<20000)
    p=0;
   
 for i=1:1:100
   for j=1:1:200
       It=0;It1=0;It2=0;It3=0;It4=0;It5=0;It6=0;It7=0;It8=0; %%%初始化电流
       GV=0;
       if i==1
           if j==1
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
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
           else
           if j==200
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It=It4+It5+It6+It7+It8;
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
       else
           if i==100
           if j==1
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
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
           else
           if j==200
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It=It1+It2+It3+It4+It5;
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
           else
           if j==1
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
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
           if j==200
          
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
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
Imatzeros=Imat;
Vmzeros=Vm;
AgMzeros=AgMM;
AgM=AgMM;


kk=1;

for k=1:5000
    tt=0;
Pul=zeros(100,200);
Pu=zeros(100,200);
Pur=zeros(100,200);
Pl=zeros(100,200);
Pr=zeros(100,200);
Pdl=zeros(100,200);
Pd=zeros(100,200);
Pdr=zeros(100,200);
for i=1:1:100
    for j=1:1:200
    if (j>1)&&(i>1)&&(AgM(i,j)>-1)&&AgM(i-1,j-1)==0
        Pul(i,j)=0.5*f*exp((-Ea+Vm(i,j)-Vm(i-1,j-1))/kT)*AgM(i,j);
    end
      if (i>1)&&(AgM(i,j)>-1)&&AgM(i-1,j)==0
        Pu(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i-1,j))/kT)*AgM(i,j); 
      end
          if (j<200)&&(i>1)&&(AgM(i,j)>-1)&&AgM(i-1,j+1)==0
        Pur(i,j)=0.5*f*exp((-Ea+Vm(i,j)-Vm(i-1,j+1))/kT)*AgM(i,j);
          end
        if (j>1)&&(AgM(i,j)>-1)&&AgM(i,j-1)==0
        Pl(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i,j-1))/kT)*AgM(i,j);
        end
        if (j<200)&&(AgM(i,j)>-1)&&AgM(i,j+1)==0
        Pr(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i,j+1))/kT)*AgM(i,j);
        end
        if (j>1)&&(i<100)&&(AgM(i,j)>-1)&&AgM(i+1,j-1)==0
        Pdl(i,j)=0.5*f*exp((-Ea+Vm(i,j)-Vm(i+1,j-1))/kT)*AgM(i,j);
        end
            if (i<100)&&(AgM(i,j)>-1)&&AgM(i+1,j)==0
        Pd(i,j)=f*exp((-Ea+Vm(i,j)-Vm(i+1,j))/kT)*AgM(i,j);
            end
            if (j<200)&&(i<100)&&(AgM(i,j)>-1)&&AgM(i+1,j+1)==0
        Pdr(i,j)=0.5*f*exp((-Ea+Vm(i,j)-Vm(i+1,j+1))/kT)*AgM(i,j);
                end
    end
end

Ps=Pul+Pu+Pur+Pl+Pr+Pdl+Pd+Pdr;
dt=1/(max(max(Ps)));
hopp=rand(100,200);
Mo=0;
for i=1:1:100
    for j=1:1:200
        Mo=Mo+1;
%         hopp=rand;
        if hopp(i,j)<(Pl(i,j)*dt)
            AgM(i,j)=AgM(i,j)-1;
            AgM(i,j-1)=1;
        else
            if hopp(i,j)<(Pl(i,j)*dt+Pr(i,j)*dt)
            AgM(i,j)=AgM(i,j)-1;
            AgM(i,j+1)=1;
            else
             if hopp(i,j)<(Pl(i,j)*dt+Pr(i,j)*dt+Pur(i,j)*dt)
            AgM(i,j)=AgM(i,j)-1;
            AgM(i-1,j+1)=1;
             else
               if hopp(i,j)<(Pul(i,j)*dt+Pr(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt)
            AgM(i,j)=AgM(i,j)-1;
            AgM(i-1,j-1)=1;
               else
              if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt)
            AgM(i,j)=AgM(i,j)-1;
            AgM(i-1,j)=1;
              else
              if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt+Pdl(i,j)*dt)
            AgM(i,j)=AgM(i,j)-1;
            AgM(i+1,j-1)=1;
              else
            if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt+Pdl(i,j)*dt+Pd(i,j)*dt)
            AgM(i,j)=AgM(i,j)-1;
            AgM(i+1,j)=1;
            else
            if hopp(i,j)<(Pul(i,j)*dt+Pu(i,j)*dt+Pur(i,j)*dt+Pl(i,j)*dt+Pr(i,j)*dt+Pdl(i,j)*dt+Pd(i,j)*dt+Pdr(i,j)*dt)
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
for i=1:1:100
   for j=1:1:200
       if AgM(i,j)>=1
           AgM(i,j)=0.7;
       end
   end
end

p=0;
while (p<20000)
    p=0;
   
 for i=1:1:100
   for j=1:1:200
       It=0;It1=0;It2=0;It3=0;It4=0;It5=0;It6=0;It7=0;It8=0; %%%初始化电流
       GV=0;
       if i==1
           if j==1
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
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
           else
           if j==200
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It7=(G1*abs(AgM(i,j)*AgM(i+1,j))+G2)*(Vm(i,j)-Vm(i+1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j))+G2;
           It6=(G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2)*(Vm(i,j)-Vm(i+1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i+1,j-1))+G2;
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It=It4+It5+It6+It7+It8;
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
       else
           if i==100
           if j==1
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
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
           else
           if j==200
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It=It1+It2+It3+It4+It5;
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
           else
           if j==1
           It4=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It5=(G1*abs(AgM(i,j)*AgM(i,j+1))+G2)*(Vm(i,j)-Vm(i,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j+1))+G2;
           It1=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It3=(G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2)*(Vm(i,j)-Vm(i-1,j+1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j+1))+G2;
           It6=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-0);
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
           if j==200
          
           It4=(G1*abs(AgM(i,j)*AgM(i,j-1))+G2)*(Vm(i,j)-Vm(i,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i,j-1))+G2;
           It5=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It3=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
           GV=GV+G1*abs(AgM(i,j))+G2;
           It2=(G1*abs(AgM(i,j)*AgM(i-1,j))+G2)*(Vm(i,j)-Vm(i-1,j));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j))+G2;
           It1=(G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2)*(Vm(i,j)-Vm(i-1,j-1));
           GV=GV+G1*abs(AgM(i,j)*AgM(i-1,j-1))+G2;
           It8=(G1*abs(AgM(i,j))+G2)*(Vm(i,j)-20);
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


