%B TROPOS
function res = Ask32874B(n)
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
 transposedProductMatrix = transpose(productMatrix);
 disp("The Transposed Product Matrix: ");
 disp(transposedProductMatrix);
 disp("\n");
 %Apo thewria gnwrizoume pws enas pinakas parousiazei symmetria otan einai isos me ton anastrofo
 if (isequaln(transposedProductMatrix, productMatrix))
    res="The product Matrix is symmetric!"
 else
     res="The product Matrix is ΝΟΤ symmetric!"
 endif
end

%Chondromatidis Eleftherios 2874

