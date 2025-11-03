function a = Ask12758(n)
  if n>=6
    p = (20) * rand(n);
    s=0;
    for i=1:n
      for j=1:n
        if p(i,j) > 10
          s=s+1;
        endif
      endfor
    endfor
  if mod(s,2)>0
    if det(p)>0 || det(p) < 0
      disp("pinakas");
      disp(p);
       disp("Antistrofos");
      p2 = inv(p);
  else
    disp("Sfalma");
    endif
   else
      disp("pinakas");
      disp(p);
    disp("Anastrofos");
    p2 = p.';
  endif
  a = p2;
  endif
end

