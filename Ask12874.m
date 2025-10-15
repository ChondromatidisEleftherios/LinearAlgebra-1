function mat = Ask12874(n)
  counter = 0;
  if (n < 6)
    mat = "The Matrix Dimensions are less than 5x5!!!";
  else
    disp("\nValid Dimensions!\n");
    for row=1:1:n
      for col=1:1:n
      tempMat(row,col) = (20-0) * rand() + 0;
      if(tempMat(row, col) > 10.0)
      counter = counter + 1;
      endif
    endfor
  endfor
  disp("Counter: ");
  disp(counter);
  disp("\n");
  disp('The randomly generated matrix is: ');
  disp(tempMat);
  disp("\n");
  %disp(valueToDisplay);
  if (~(mod(counter,2)==0))
    display("The Inverse will be displayed!\n");
    tempMat = inv(tempMat);
   else
    display("The Transpose will be displayed!\n");
    tempMat = transpose(tempMat);
  endif
  mat = tempMat;
  endif
  end
