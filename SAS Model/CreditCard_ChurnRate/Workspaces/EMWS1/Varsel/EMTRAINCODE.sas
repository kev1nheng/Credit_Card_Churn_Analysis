*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Attrition_Flag(DESC) Card_Category(ASC) Contacts_Count_12_mon(ASC)
   Customer_Age(ASC) Dependent_count(ASC) Education_Level(ASC) Gender(ASC)
   Income_Category(ASC) Marital_Status(ASC) Months_Inactive_12_mon(ASC)
   Months_on_book(ASC) Total_Relationship_Count(ASC) Total_Trans_Ct(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Avg_Open_To_Buy Avg_Utilization_Ratio Credit_Limit Total_Amt_Chng_Q4_Q1
   Total_Ct_Chng_Q4_Q1 Total_Revolving_Bal Total_Trans_Amt
%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
libname _spdslib SPDE "C:\Users\galax\AppData\Local\Temp\SAS Temporary Files\_TD12392_DESKTOP-IC1MEGN_\Prc2";
proc dmdb batch data=EMWS1.Ids_DATA
dmdbcat=WORK.EM_DMDB
maxlevel = 151
out=_spdslib.EM_DMDB
;
class %DMDBClass;
var %DMDBVar;
target
Attrition_Flag
;
run;
quit;
*------------------------------------------------------------* ;
* Varsel: Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INPUTS;
               AVG_OPEN_TO_BUY AVG_UTILIZATION_RATIO CARD_CATEGORY CONTACTS_COUNT_12_MON
              Credit_Limit CUSTOMER_AGE DEPENDENT_COUNT EDUCATION_LEVEL GENDER
              Income_Category MARITAL_STATUS MONTHS_INACTIVE_12_MON MONTHS_ON_BOOK
              Total_Amt_Chng_Q4_Q1 TOTAL_CT_CHNG_Q4_Q1 TOTAL_RELATIONSHIP_COUNT
   Total_Revolving_Bal TOTAL_TRANS_AMT TOTAL_TRANS_CT
%mend INPUTS;
proc dmine data=_spdslib.EM_DMDB dmdbcat=WORK.EM_DMDB
minr2=0.005 maxrows=3000 stopr2=0.0005 NOAOV16 NOINTER USEGROUPS OUTGROUP=EMWS1.Varsel_OUTGROUP outest=EMWS1.Varsel_OUTESTDMINE outeffect=EMWS1.Varsel_OUTEFFECT outrsquare =EMWS1.Varsel_OUTRSQUARE
NOMONITOR
PSHORT
;
var %INPUTS;
target Attrition_Flag;
code file="D:\478\project\CreditCard_ChurnRate\Workspaces\EMWS1\Varsel\EMFLOWSCORE.sas";
code file="D:\478\project\CreditCard_ChurnRate\Workspaces\EMWS1\Varsel\EMPUBLISHSCORE.sas";
run;
quit;
/*      proc print data =EMWS1.Varsel_OUTEFFECT;      proc print data =EMWS1.Varsel_OUTRSQUARE;      */
run;
