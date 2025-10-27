function mat = Ask12874B(n)
    n = abs(int32(n));
if (n < 6)
    mat = "The Matrix Dimensions are less than 6x6!!!";
  else
    disp("\nValid Dimensions!\n");
    tempMat = (20-0) * rand(n,n) + 0;
    counter = sum(tempMat(:) > 10.0);
  disp("Counter: ");
  disp(counter);
  disp("\n");
  disp("The randomly generated matrix is: ");
  disp(tempMat);
  disp("\n");
  if (~(mod(counter,2)==0))
    if (~(det(tempMat)==0)) %Elegxw an yparxei antistrofos elegxontas thn orizouza na MHN einai 0
    disp("The Inverse will be displayed!\n");
    tempMat = inv(tempMat);
  else
    disp("Determinant is 0, which means that the Matrix cannot be inversed");
    endif
   else
    disp("The Transpose will be displayed!\n");
    tempMat = transpose(tempMat);
  endif
  mat = tempMat
  endif
end

%Chondromatidis Eleftherios 2874
