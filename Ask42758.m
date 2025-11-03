function Ask42758()

    p = [0, 8, 0, 5, 7, 0, 0, 0, 0;
              8, 0, 3, 0, 2, 4, 0, 0, 0;
              0, 3, 0, 0, 0, 6, 0, 0, 0;
              5, 0, 0, 0, 9, 0, 4, 0, 0;
              7, 2, 0, 9, 0, 1, 0, 8, 3;
              0, 4, 6, 0, 1, 0, 0, 0, 3;
              0, 0, 0, 4, 0, 0, 0, 2, 0;
              0, 0, 0, 0, 8, 0, 2, 0, 6;
              0, 0, 0, 0, 3, 3, 0, 6, 0];

    v = p.';

    k1 = v(1, :);
    k5 = v(5, :);
    esg = 0;
    for i = 1:9
        esg = esg + k1(i) * k5(i);
    end
    disp("Eswteriko ginomeno");
    disp(esg);

    k3 = v(3, :);
    k8 = v(8, :);
    ejg = zeros(length(k3), length(k8));
    for i=1:9
        for j=1:9
            ejg(i, j) = k3(i) * k8(j);
        end
    end
    disp("ejwteriko ginomeno");
    disp( ejg );
end
