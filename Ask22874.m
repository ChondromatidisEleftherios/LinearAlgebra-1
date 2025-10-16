%A TROPOS
function res = Ask22874(n)
 isSymmetric = 1; %Tha tis xrhsimopoihsw san Booleans (1==true kai 0==false)
 checked = 0;
 %Erwtimata A kai B
 for row=1:1:n
   for col=1:1:n
     if (row<col)
     anwTrigwnikos(row,col) = (10-1) * rand() + 1;
     katwTrigwnikos(row,col) = 0;
   elseif (row>col)
     katwTrigwnikos(row,col) = (10-1) * rand() + 1;
     anwTrigwnikos(row,col) = 0;
   elseif (row==col)
     katwTrigwnikos(row,col) = (10-1) * rand() + 1;
     anwTrigwnikos(row,col) = (10-1) * rand() + 1;
   endif
   endfor
 endfor
 disp("The lower triangular matrix: ");
 disp(katwTrigwnikos);
 disp("\n");
 disp("The upper triangular matrix: ");
 disp(anwTrigwnikos);
 disp("\n");

 %Erwtima Gamma
 pinakasGinomenou = (katwTrigwnikos * anwTrigwnikos);
 disp("The Product Matrix: ");
 disp(pinakasGinomenou);
 disp("\n");
 for row=1:1:n
   for col=1:1:n
     checked=0;
     while isSymmetric==1 && checked==0
       if (pinakasGinomenou(col,row)~=pinakasGinomenou(row,col))
          isSymmetric=0;
       endif
       checked=1;
     endwhile
   endfor
 endfor
 if(isSymmetric==0)
 res="The product Matrix is NOT symmetric!"
else
 res="The product Matrix is symmetric!"
endif
end

