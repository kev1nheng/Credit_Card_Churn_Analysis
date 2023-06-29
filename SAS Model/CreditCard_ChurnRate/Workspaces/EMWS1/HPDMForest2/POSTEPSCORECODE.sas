*------------------------------------------------------------*;
*Computing Classification Vars: Attrition_Flag;
*------------------------------------------------------------*;
length _format200 $200;
drop _format200;
_format200= ' ' ;
length _p_ 8;
_p_= 0 ;
drop _p_ ;
if P_Attrition_Flag1 - _p_ > 1e-8 then do ;
   _p_= P_Attrition_Flag1 ;
   _format200='1';
end;
if P_Attrition_Flag0 - _p_ > 1e-8 then do ;
   _p_= P_Attrition_Flag0 ;
   _format200='0';
end;
I_Attrition_Flag=dmnorm(_format200,32); ;
length U_Attrition_Flag $17;
label U_Attrition_Flag = 'Unnormalized Into: Attrition_Flag';
format U_Attrition_Flag $CHAR17.;
if I_Attrition_Flag='1' then
U_Attrition_Flag='1';
if I_Attrition_Flag='0' then
U_Attrition_Flag='0';
