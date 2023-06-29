%macro em_hpfst_score;
 
  %if %symexist(hpfst_score_input)=0 %then %let hpfst_score_input=&em_score_output;
  %if %symexist(hpfst_score_output)=0 %then %let hpfst_score_output=&em_score_output;
  %if %symexist(hpfst_id_vars)=0 %then %let hpfst_id_vars = _ALL_;
 
  %let hpvvn= %sysfunc(getoption(VALIDVARNAME));
  options validvarname=V7;
  proc hp4score data=&hpfst_score_input;
  id &hpfst_id_vars;
  %if %symexist(EM_USER_OUTMDLFILE)=0 %then %do;
    score file="D:\478\project\CreditCard_ChurnRate\Workspaces\EMWS1\HPDMForest3\OUTMDLFILE.bin" out=&hpfst_score_output;
  %end;
  %else %do;
    score file="&EM_USER_OUTMDLFILE" out=&hpfst_score_output;
  %end;
    PERFORMANCE  DETAILS;
  run;
 
  options validvarname=&hpvvn;
 
  data &hpfst_score_output;
    set &hpfst_score_output;
%mend;
 
%em_hpfst_score;
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
