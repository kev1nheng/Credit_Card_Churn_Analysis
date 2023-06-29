drop _temp_;
if (P_Attrition_Flag1 ge 0.98507462686567) then do;
b_Attrition_Flag = 1;
end;
else
if (P_Attrition_Flag1 ge 0.96398891966759) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(2 + 5*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.95522388059701) then do;
b_Attrition_Flag = 7;
end;
else
if (P_Attrition_Flag1 ge 0.925) then do;
b_Attrition_Flag = 8;
end;
else
if (P_Attrition_Flag1 ge 0.89189189189189) then do;
b_Attrition_Flag = 9;
end;
else
if (P_Attrition_Flag1 ge 0.86666666666666) then do;
b_Attrition_Flag = 10;
end;
else
if (P_Attrition_Flag1 ge 0.82926829268292) then do;
b_Attrition_Flag = 11;
end;
else
if (P_Attrition_Flag1 ge 0.76470588235294) then do;
b_Attrition_Flag = 12;
end;
else
if (P_Attrition_Flag1 ge 0.73333333333333) then do;
b_Attrition_Flag = 13;
end;
else
if (P_Attrition_Flag1 ge 0.70714285714285) then do;
b_Attrition_Flag = 14;
end;
else
if (P_Attrition_Flag1 ge 0.6) then do;
b_Attrition_Flag = 15;
end;
else
if (P_Attrition_Flag1 ge 0.33333333333333) then do;
b_Attrition_Flag = 16;
end;
else
if (P_Attrition_Flag1 ge 0.1875) then do;
b_Attrition_Flag = 17;
end;
else
if (P_Attrition_Flag1 ge 0.15) then do;
b_Attrition_Flag = 18;
end;
else
if (P_Attrition_Flag1 ge 0.12307692307692) then do;
b_Attrition_Flag = 19;
end;
else
if (P_Attrition_Flag1 ge 0.0943396226415) then do;
b_Attrition_Flag = 20;
end;
else
if (P_Attrition_Flag1 ge 0.08) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(21 + 2*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.06220839813374) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(23 + 9*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.05732484076433) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(32 + 3*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.03159557661927) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(35 + 9*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.02233902759526) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(44 + 11*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.01040312093628) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(55 + 11*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.00213766566908) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(66 + 33*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(99 + 2*_temp_);
end;
