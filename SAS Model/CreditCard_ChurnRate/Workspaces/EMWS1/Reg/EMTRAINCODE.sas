*------------------------------------------------------------*;
* Reg: Create decision matrix;
*------------------------------------------------------------*;
data WORK.Attrition_Flag;
  length   Attrition_Flag                   $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="1"
           DECISION2="0"
           ;
  format   COUNT 10.
           ;
Attrition_Flag="1"; COUNT=1627; DATAPRIOR=0.16065962279055; TRAINPRIOR=0.16065962279055; DECPRIOR=.; DECISION1=1; DECISION2=0;
output;
Attrition_Flag="0"; COUNT=8500; DATAPRIOR=0.83934037720944; TRAINPRIOR=0.83934037720944; DECPRIOR=.; DECISION1=0; DECISION2=1;
output;
;
run;
proc datasets lib=work nolist;
modify Attrition_Flag(type=PROFIT label=Attrition_Flag);
label DECISION1= '1';
label DECISION2= '0';
run;
quit;
data EM_DMREG / view=EM_DMREG;
set EMWS1.Part_TRAIN(keep=
Attrition_Flag G_Contacts_Count_12_mon G_Customer_Age G_Months_Inactive_12_mon
G_Months_on_book G_Total_Relationship_Count G_Total_Trans_Ct
RANGE_LOG_Total_Trans_Amt RANGE_SQRT_Avg_Utilization_Ratio
RANGE_SQRT_Total_Amt_Chng_Q4_Q1 RANGE_SQRT_Total_Ct_Chng_Q4_Q1
RANGE_Total_Revolving_Bal );
run;
*------------------------------------------------------------* ;
* Reg: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Attrition_Flag(DESC) G_Contacts_Count_12_mon(ASC) G_Customer_Age(ASC)
   G_Months_Inactive_12_mon(ASC) G_Months_on_book(ASC)
   G_Total_Relationship_Count(ASC) G_Total_Trans_Ct(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    RANGE_LOG_Total_Trans_Amt RANGE_SQRT_Avg_Utilization_Ratio
   RANGE_SQRT_Total_Amt_Chng_Q4_Q1 RANGE_SQRT_Total_Ct_Chng_Q4_Q1
   RANGE_Total_Revolving_Bal
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
Attrition_Flag
;
run;
quit;
*------------------------------------------------------------*;
* Reg: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg_DMDB
validata = EMWS1.Part_VALIDATE
outest = EMWS1.Reg_EMESTIMATE
outterms = EMWS1.Reg_OUTTERMS
outmap= EMWS1.Reg_MAPDS namelen=200
;
class
Attrition_Flag
G_Contacts_Count_12_mon
G_Customer_Age
G_Months_Inactive_12_mon
G_Months_on_book
G_Total_Relationship_Count
G_Total_Trans_Ct
;
model Attrition_Flag =
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
/error=binomial link=LOGIT
coding=DEVIATION
nodesignprint
;
;
code file="D:\478\project\CreditCard_ChurnRate\Workspaces\EMWS1\Reg\EMPUBLISHSCORE.sas"
group=Reg
;
code file="D:\478\project\CreditCard_ChurnRate\Workspaces\EMWS1\Reg\EMFLOWSCORE.sas"
group=Reg
residual
;
run;
quit;
