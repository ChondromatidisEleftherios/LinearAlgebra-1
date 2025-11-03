function a = Ask32758(n)
 for i=1:n
   for j=1:n
     if i<=j
        p1(i,j) = (10-1) * rand() + 1;
      endif
    endfor
  endfor
  for i=1:n
   for j=1:n
     if j<=i
        p2(i,j) = (10-1) * rand() + 1;
      endif
    endfor
  endfor
 p3 = p1 * p2;
 s=0;
 for i=1:n
   for j=1:n
       if p3(i,j)==p3(j,i)
       s=s+1;
     else
       s=0;
       break
       endif
   endfor
 endfor
 if (s>0)
   disp("symmetrikos");
    a=p3;
else
 disp("Asymmetros");
 a=p3;
endif
end


