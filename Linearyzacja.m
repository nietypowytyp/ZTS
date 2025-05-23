Tw = 6;
Cd = 180;
Csh = 30;
K = 3.1616;
TAUf = 5;
Tf = 8;
Pd_const = 1.025;
Pt_const = 1;
CV = 0.5;
SIG = 0.5;

% A1 = [-1/Tf 0 0 0; 
%        1/Tw -1/Tw 0 0;
%         0 0 K/(Csh*2*sqrt(Pd_const-Pt_const))-CV/Csh K/(Csh*2*sqrt(Pd_const-Pt_const));
%         0 1/Cd -K/(Cd*2*sqrt(Pd_const-Pt_const)) -K/(Cd*2*sqrt(Pd_const-Pt_const))];
% B1 = [1/Tf 0;
%       0 0;
%       0 Pt_const/Csh;
%       0 0];
% C1 = [0 0 CV 0;
%       0 0 0 1];
% D1 = [0 1; 
%      0 0];

alpha = K/(2*sqrt(Pd_const-Pt_const));
% 
% A1 = [-1/Tf 0 0 0; 
%        1/Tw -1/Tw 0 0;
%         0 1/Csh (-alpha)/Csh alpha/Csh;
%         0 1/Cd -alpha/Cd alpha/Cd];
% B1 = [(1)/Tf 0;
%       0 Pt_const;
%       0 CV/Csh;
%       0 CV/Cd];


A1 = [-1/Tf 0 0 0; 
       1/Tw -1/Tw 0 0;
        0 0 (-alpha/Csh)-(CV/Csh) alpha/Csh;
        0 1/Cd +alpha/Cd -alpha/Cd];
B1 = [1/Tf 0;
      0 0;
      0 -(Pt_const/Csh);
      0 0];
C1 = [0 0 CV 0;
      0 0 0 1];
D1 = [0 Pt_const; 
     0 0];

