%macro em_hpfst_score;
 
  %if %sysfunc(exist(work._score_temp)) %then %do;
     proc delete data=work._score_temp;
     run;
  %end;
 
  %if %symexist(hpfst_score_input)=0 %then %let hpfst_score_input=&em_score_output;
  %if %symexist(hpfst_score_output)=0 %then %let hpfst_score_output=&em_score_output;
 
%let hpvvn= %sysfunc(getoption(VALIDVARNAME));
options validvarname=V7;
  proc hp4score data=&hpfst_score_input(keep=
G_Contacts_Count_12_mon
G_Customer_Age
G_Months_Inactive_12_mon
G_Months_on_book
G_Total_Relationship_Count
G_Total_Trans_Ct
RANGE_LOG_Total_Trans_Amt
RANGE_SQRT_Avg_Utilization_Ratio
RANGE_SQRT_Total_Amt_Chng_Q4_Q1
RANGE_SQRT_Total_Ct_Chng_Q4_Q1
RANGE_Total_Revolving_Bal
  ); 
  %if %symexist(EM_USER_OUTMDLFILE)=0 %then %do;
    score file="D:\478\project\CreditCard_ChurnRate\Workspaces\EMWS1\HPDMForest2\OUTMDLFILE.bin" out=work._outtemp;
  %end;
  %else %do;
    score file="&EM_USER_OUTMDLFILE" out=work._outtemp;
  %end;
    PERFORMANCE  DETAILS nthreads=1;
  run;
 
options validvarname=&hpvvn;
  data work._score_temp;
     merge &hpfst_score_input work._outtemp;
  run;
 
  proc delete data=work._outtemp;
  run;
 
  data &hpfst_score_output;
    set work._score_temp;
%mend;
 
%em_hpfst_score;
*------------------------------------------------------------*;
*Computing Classification Vars: Attrition_Flag;
*------------------------------------------------------------*;
length _format200 $200;
drop _format200;
length F_Attrition_Flag $17;
label  F_Attrition_Flag = 'From: Attrition_Flag';
_format200= PUT( Attrition_Flag, $CHAR17. );
F_Attrition_Flag=dmnorm(_format200,32); ;
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
*------------------------------------------------------------*;
*Computing Residual Vars: Attrition_Flag;
*------------------------------------------------------------*;
Length R_Attrition_Flag1 8;
Label R_Attrition_Flag1='Residual: Attrition_Flag=1';
Length R_Attrition_Flag0 8;
Label R_Attrition_Flag0='Residual: Attrition_Flag=0';
if 
 F_Attrition_Flag ne '1'
and F_Attrition_Flag ne '0'
 then do;
R_Attrition_Flag1=.;
R_Attrition_Flag0=.;
end;
else do;
R_Attrition_Flag1= - P_Attrition_Flag1;
R_Attrition_Flag0= - P_Attrition_Flag0;
select(F_Attrition_Flag);
when('1')R_Attrition_Flag1= R_Attrition_Flag1+1;
when('0')R_Attrition_Flag0= R_Attrition_Flag0+1;
otherwise;
end;
end;
