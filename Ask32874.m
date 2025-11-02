%A TROPOS
function res = Ask32874(n)
 isSymmetric = 1; %Tha tis xrhsimopoihsw san Booleans (1==true kai 0==false)
 checked = 0;

 %Erwtimata A kai B
 for row=1:1:n
   for col=1:1:n
     if (row<col)
        upperTriangular(row,col) = (10-1) * rand() + 1;
     lowerTriangular(row,col) = 0;
   elseif (row>col)
     lowerTriangular(row,col) = (10-1) * rand() + 1;
     upperTriangular(row,col) = 0;
   elseif (row==col)
     lowerTriangular(row,col) = (10-1) * rand() + 1;
     upperTriangular(row,col) = (10-1) * rand() + 1;
   endif
   endfor
 endfor
 disp("The lower triangular matrix: ");
 disp(lowerTriangular);
 disp("\n");
 disp("The upper triangular matrix: ");
 disp(upperTriangular);
 disp("\n");

 %Erwtima Gamma
 productMatrix = (lowerTriangular * upperTriangular);
 disp("The Product Matrix: ");
 disp(productMatrix);
 disp("\n");
 for row=1:1:n
   for col=1:1:n
     checked=0;
     while isSymmetric==1 && checked==0
       if (~(productMatrix(col,row)==productMatrix(row,col)))
          isSymmetric=0;
       endif
       checked=1;
     endwhile
   endfor
 endfor
 if (isSymmetric==0)
 res="The product Matrix is NOT symmetric!"
else
 res="The product Matrix is symmetric!"
endif
end

%Chondromatidis Eleftherios 2874

