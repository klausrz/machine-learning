X = [ones(5,1) reshape(-5:4,5,2)];
y = [-2:2]';
Xval=[X;X]/10;
yval=[y;y]/10;
[et ev] = learningCurve(X,y,Xval,yval,1)

%{
expected results
et =

   0.000000
   0.031250
   0.013333
   0.005165
   0.002268

ev =

  3.0000e-002
  5.3125e-003
  6.0000e-004
  9.2975e-005
  2.2676e-005
}%