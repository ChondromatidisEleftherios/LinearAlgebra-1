function mat = Ask22874(n)
  thetikaOrismenos = 0; %Tha th xrhsimopoihsw san Boolean (1==true kai 0==false)
  while thetikaOrismenos == 0
      counter = 0;
  for row=1:1:n
    for col=1:1:n
      if (row <= col)
       symmetricMatrix (row, col) = rand();
       endif
    endfor
  endfor
  for row=1:1:n
    for col=1:1:n
      if (row > col)
        symmetricMatrix(row,col) = symmetricMatrix(col,row);
      endif
    endfor
  endfor
    for rc=1:1:n
    if (symmetricMatrix(rc,rc) > 0.0)
      counter=counter+1;
    endif
    if (counter==n)
     thetikaOrismenos = 1;
    endif
  endfor
  disp("Current Matrix:");
  disp(symmetricMatrix);
  disp("\n");
  endwhile
  mat = symmetricMatrix
end

%Chondromatidis Eleftherios 2874
