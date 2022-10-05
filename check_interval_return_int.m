function[x]=check_interval_return_int(values)
sz=size(values);

%this function returns to the number which corresponds to a specific
%class (assigned according to the alphabet order)

for i=1:sz
   if values(i,1)>=1 && values(i,1)<=100
        x(i,1)=1;
   elseif values(i,1)>=101 && values(i,1)<=198
        x(i,1)=2;
   
   elseif values(i,1)>=199 && values(i,1)<=244
        x(i,1)=3;
   elseif values(i,1)>=245 && values(i,1)<=312
        x(i,1)=4;
   elseif values(i,1)>=313 && values(i,1)<=412
        x(i,1)=5;
   elseif values(i,1)>=413 && values(i,1)<=463
        x(i,1)=6;
   elseif values(i,1)>=464 && values(i,1)<=520
        x(i,1)=7;
   elseif values(i,1)>=521 && values(i,1)<=620
        x(i,1)=8;
   elseif values(i,1)>=621 && values(i,1)<=720
        x(i,1)=9;
   elseif values (i,1)>=721 && values(i,1)<=787 
        x(i,1)=10;
   elseif values (i,1)>=788 && values (i,1)<=887
       x(i,1)=1;

   elseif values (i,1)>=888 && values (i,1)<=985
       x(i,1)=2;

   elseif values (i,1)>=986 && values (i,1)<=1031
       x(i,1)=3;


   elseif values (i,1)>=1032 && values (i,1)<=1099
       x(i,1)=4;

   elseif values (i,1)>=1100 && values (i,1)<=1199
       x(i,1)=5;

   elseif values (i,1)>=1200 && values (i,1)<=1250
       x(i,1)=6;

   elseif values (i,1)>=1251 && values (i,1)<=1307
       x(i,1)=7;

   elseif values (i,1)>=1308 && values (i,1)<=1407
       x(i,1)=8;

   elseif values (i,1)>=1408 && values (i,1)<=1507
       x(i,1)=9;

   elseif values (i,1)>=1508 && values (i,1)<=1574
       x(i,1)=10;
   end
end


end
