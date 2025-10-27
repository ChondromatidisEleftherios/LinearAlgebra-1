function res = Ask42874()
  adjMat = [0, 8, 0, 5, 7, 0, 0, 0, 0;
            8, 0, 3, 0, 2, 4, 0, 0, 0;
            0, 3, 0, 0, 0, 6, 0, 0, 0;
            5, 0, 0, 0, 9, 0, 4, 0, 0;
            7, 2, 0, 9, 0, 1, 0, 8, 3;
            0, 4, 6, 0, 1, 0, 0, 0, 3;
            0, 0, 0, 4, 0, 0, 0, 2, 0;
            0, 0, 0, 0, 8, 0, 2, 0, 6;
            0, 0, 0, 0, 3, 3, 0, 6, 0];

  for row=1:1:9
    tempVector=[]; %Adeiazw to dianysma
    for col=1:1:9
      tempVector(1,col) = adjMat(col,row);
      if (col==9)
        adjVector{row} = tempVector;
      endif
      endfor
    endfor
    disp("Adjacency Vector: ");
    disp(adjVector);
    %Erotima Gamma1
    node1 = adjVector{1};
    node5 = adjVector{5};
    innerProd = node1 * transpose(node5);
    disp("Inner Product of Node 1 Connections and Node 5 Connections: ");
    disp(innerProd);
    %Erotima Gamma2
    node3 = adjVector{3};
    node8 = adjVector{8};
    for row=1:1:9
      for col=1:1:9
        outerProd(row,col) = node3(row) * node8(col);
      endfor
    endfor
    disp("Outer Product of Node 3 Connections and Node 8 Connections: ");
    disp(outerProd);
    res = adjMat
  end

%Chondromatidis Eleftherios 2874
