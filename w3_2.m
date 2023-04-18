N = -5:0.001:5;

tri_n2 = (abs(N+2) < 1) .* (1 - abs(N+2));
%2Δ(n+2)-Δ(n-4)
tri_n4 = (abs(N-4) < 1) .* (1 - abs(N-4)) ;

tri_n =  2*tri_n2 - tri_n4;

MarkerIndices = 1:1000:length(N);

plot(N,tri_n,'-o',"MarkerIndices",MarkerIndices)
