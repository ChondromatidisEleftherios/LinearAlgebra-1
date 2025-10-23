function res = Ask22874(n)
  thetikaOrismenos = 0;
  while thetikaOrismenos == 0
      counter = 0;
  for row=1:1:n
    for col=1:1:n
      if (row >= col)
       symmetrikosPinakas (row, col) = rand();
       endif
    endfor
  endfor
  for row=1:1:n
    for col=1:1:n
      if (row < col)
        symmetrikosPinakas(row,col) = symmetrikosPinakas(col,row);
      endif
    endfor
  endfor
    for rc=1:1:n
    if (symmetrikosPinakas(rc,rc) > 0)
      counter=counter+1;
    endif
    if (counter==n)
     thetikaOrismenos = 1;
    endif
  endfor
  disp("Currect Matrixʼ:");
  disp(symmetrikosPinakas);
  endwhile
  res = symmetrikosPinakas
  end
