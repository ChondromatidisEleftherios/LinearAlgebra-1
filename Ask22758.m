function a = Ask22758(n)
  while 1
  for i=1:n
    for j=1:n
      if i <= j
       p(i,j) = rand();
       endif
    endfor
  endfor
  for i=1:n
    for j=1:n
      if j < i
        p(i,j) = p(j,i);
      endif
    endfor
  endfor
  s=0;
    for i=1:n
      for j=1:n
    if p(i,i) == 0
      s=0;
      disp("oxi thetika orismeno");
      break;
    else
      s=s+1;
    endif
  endfor
  endfor
  if s > 0
    break;
  endif
endwhile
  a = p;
end

