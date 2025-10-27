%B TROPOS
function res = Ask32874B(n)
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
 anastrofosPinakasGinomenou = transpose(pinakasGinomenou);
 disp("The Transposed Matrix: ");
 disp(pinakasGinomenou);
 disp("\n");
 %Apo thewria gnwrizoume pws enas pinakas parousiazei symmetria otan einai isos me ton anastrofo
 if (isequaln(anastrofosPinakasGinomenou, pinakasGinomenou))
    res="The product Matrix is symmetric!"
 else
     res="The product Matrix is ΝΟΤ symmetric!"
 endif
end
