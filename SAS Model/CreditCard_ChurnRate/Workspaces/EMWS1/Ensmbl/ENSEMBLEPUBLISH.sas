*------------------------------------------------------------*;
* Ensmbl: Average Posteriors of 4 models;
*------------------------------------------------------------*;
P_Attrition_Flag1 = (
Reg_P_Attrition_Flag1 +
AutoNeural2_P_Attrition_Flag1 +
Boost2_P_Attrition_Flag1 +
Tree4_P_Attrition_Flag1
)/4;
P_Attrition_Flag0 = (
Reg_P_Attrition_Flag0 +
AutoNeural2_P_Attrition_Flag0 +
Boost2_P_Attrition_Flag0 +
Tree4_P_Attrition_Flag0
)/4;
*------------------------------------------------------------*;
* Ensmbl: Computing Classification Vars;
*------------------------------------------------------------*;
length I_Attrition_Flag $17;
label I_Attrition_Flag = 'Into: Attrition_Flag';
length _format $200;
drop _format;
_format= ' ';
_p_= 0;
drop _p_;
if P_Attrition_Flag1 > _p_ then do;
_p_= P_Attrition_Flag1;
_format= '1';
end;
if P_Attrition_Flag0 > _p_ then do;
_p_= P_Attrition_Flag0;
_format= '0';
end;
%DMNORMCP(_format,I_Attrition_Flag);
*------------------------------------------------------------*;
* Ensmbl: Producing Unformatted variable;
*------------------------------------------------------------*;
label U_Attrition = "Unnormalized Into: Attrition_Flag";
length U_Attrition $17;
if I_Attrition_Flag = '1' then U_Attrition = '1';
else
if I_Attrition_Flag = '0' then U_Attrition = '0';
*------------------------------------------------------------*;
* Ensmbl: Computing _WARN_ Variable;
*------------------------------------------------------------*;
length _WARN_ $4;
label _WARN_ = 'Warnings';
_WARN_ = '';
if index(REG_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(REG_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(REG_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(REG_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
if index(AUTONEURAL2_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(AUTONEURAL2_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(AUTONEURAL2_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(AUTONEURAL2_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
if index(BOOST2_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(BOOST2_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(BOOST2_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(BOOST2_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
if index(TREE4_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(TREE4_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(TREE4_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(TREE4_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
