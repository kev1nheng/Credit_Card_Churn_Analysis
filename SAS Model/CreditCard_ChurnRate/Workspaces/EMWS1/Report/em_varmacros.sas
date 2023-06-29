*------------------------------------------------------------*;
* Variable Macros;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* General Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_VARS = 25;
   %macro EM_VARS;
    Attrition_Flag F_Attrition_Flag G_Customer_Age G_Months_Inactive_12_mon
   G_Total_Relationship_Count G_Total_Trans_Ct I_Attrition_Flag P_Attrition_Flag0
   P_Attrition_Flag1 Q_Attrition_Flag0 Q_Attrition_Flag1 RANGE_LOG_Total_Trans_Amt
   RANGE_SQRT_Avg_Utilization_Ratio RANGE_SQRT_Total_Amt_Chng_Q4_Q1
   RANGE_SQRT_Total_Ct_Chng_Q4_Q1 RANGE_Total_Revolving_Bal R_Attrition_Flag0
   R_Attrition_Flag1 U_Attrition_Flag V_Attrition_Flag0 V_Attrition_Flag1 _NODE_
   _WARN_ _dataobs_ b_Attrition_Flag
   %mend EM_VARS;
%let EM_NUM_CLASS = 11;
   %macro EM_CLASS;
    Attrition_Flag F_Attrition_Flag G_Customer_Age G_Months_Inactive_12_mon
   G_Total_Relationship_Count G_Total_Trans_Ct I_Attrition_Flag U_Attrition_Flag
   _NODE_ _WARN_ b_Attrition_Flag
   %mend EM_CLASS;
%let EM_NUM_INTERVAL = 14;
   %macro EM_INTERVAL;
    P_Attrition_Flag0 P_Attrition_Flag1 Q_Attrition_Flag0 Q_Attrition_Flag1
   RANGE_LOG_Total_Trans_Amt RANGE_SQRT_Avg_Utilization_Ratio
   RANGE_SQRT_Total_Amt_Chng_Q4_Q1 RANGE_SQRT_Total_Ct_Chng_Q4_Q1
   RANGE_Total_Revolving_Bal R_Attrition_Flag0 R_Attrition_Flag1 V_Attrition_Flag0
   V_Attrition_Flag1 _dataobs_
   %mend EM_INTERVAL;
%let EM_NUM_REPORT_VARS = 0;
   %macro  EM_REPORT_VARS; %mend;
%let EM_NUM_CLASS_REPORT = 0;
   %macro  EM_CLASS_REPORT; %mend;
%let EM_NUM_INTERVAL_REPORT = 0;
   %macro  EM_INTERVAL_REPORT; %mend;
*------------------------------------------------------------*;
* Target Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_TARGET = 1;
   %macro EM_TARGET;
    Attrition_Flag
   %mend EM_TARGET;
%let EM_NUM_TARGET_LEVEL = 1;
   %macro EM_TARGET_LEVEL;
    BINARY
   %mend EM_TARGET_LEVEL;
%let EM_NUM_BINARY_TARGET = 1;
   %macro EM_BINARY_TARGET;
    Attrition_Flag
   %mend EM_BINARY_TARGET;
%let EM_NUM_ORDINAL_TARGET = 0;
   %macro  EM_ORDINAL_TARGET; %mend;
%let EM_NUM_NOMINAL_TARGET = 0;
   %macro  EM_NOMINAL_TARGET; %mend;
%let EM_NUM_INTERVAL_TARGET = 0;
   %macro  EM_INTERVAL_TARGET; %mend;
*------------------------------------------------------------*;
* Input Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_INPUT = 9;
   %macro EM_INPUT;
    G_Customer_Age G_Months_Inactive_12_mon G_Total_Relationship_Count
   G_Total_Trans_Ct RANGE_LOG_Total_Trans_Amt RANGE_SQRT_Avg_Utilization_Ratio
   RANGE_SQRT_Total_Amt_Chng_Q4_Q1 RANGE_SQRT_Total_Ct_Chng_Q4_Q1
   RANGE_Total_Revolving_Bal
   %mend EM_INPUT;
%let EM_NUM_BINARY_INPUT = 0;
   %macro  EM_BINARY_INPUT; %mend;
%let EM_NUM_ORDINAL_INPUT = 0;
   %macro  EM_ORDINAL_INPUT; %mend;
%let EM_NUM_NOMINAL_INPUT = 4;
   %macro EM_NOMINAL_INPUT;
    G_Customer_Age G_Months_Inactive_12_mon G_Total_Relationship_Count
   G_Total_Trans_Ct
   %mend EM_NOMINAL_INPUT;
%let EM_NUM_INTERVAL_INPUT = 5;
   %macro EM_INTERVAL_INPUT;
    RANGE_LOG_Total_Trans_Amt RANGE_SQRT_Avg_Utilization_Ratio
   RANGE_SQRT_Total_Amt_Chng_Q4_Q1 RANGE_SQRT_Total_Ct_Chng_Q4_Q1
   RANGE_Total_Revolving_Bal
   %mend EM_INTERVAL_INPUT;
*------------------------------------------------------------*;
* Rejected Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_REJECTED = 0;
   %macro  EM_REJECTED; %mend;
%let EM_NUM_BINARY_REJECTED = 0;
   %macro  EM_BINARY_REJECTED; %mend;
%let EM_NUM_ORDINAL_REJECTED = 0;
   %macro  EM_ORDINAL_REJECTED; %mend;
%let EM_NUM_NOMINAL_REJECTED = 0;
   %macro  EM_NOMINAL_REJECTED; %mend;
%let EM_NUM_INTERVAL_REJECTED = 0;
   %macro  EM_INTERVAL_REJECTED; %mend;
*------------------------------------------------------------*;
* Misc Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_ASSESS = 3;
   %macro EM_ASSESS;
    Q_Attrition_Flag0 Q_Attrition_Flag1 _WARN_
   %mend EM_ASSESS;
%let EM_NUM_INTERVAL_ASSESS = 2;
   %macro EM_INTERVAL_ASSESS;
    Q_Attrition_Flag0 Q_Attrition_Flag1
   %mend EM_INTERVAL_ASSESS;
%let EM_NUM_CLASS_ASSESS = 1;
   %macro EM_CLASS_ASSESS;
    _WARN_
   %mend EM_CLASS_ASSESS;
%let EM_NUM_CENSOR = 0;
   %macro  EM_CENSOR; %mend;
%let EM_NUM_CLASSIFICATION = 3;
   %macro EM_CLASSIFICATION;
    F_Attrition_Flag I_Attrition_Flag U_Attrition_Flag
   %mend EM_CLASSIFICATION;
%let EM_NUM_COST = 0;
   %macro  EM_COST; %mend;
%let EM_NUM_CROSSID = 0;
   %macro  EM_CROSSID; %mend;
%let EM_NUM_DECISION = 0;
   %macro  EM_DECISION; %mend;
%let EM_NUM_FREQ = 0;
   %macro  EM_FREQ; %mend;
%let EM_NUM_ID = 1;
   %macro EM_ID;
    _dataobs_
   %mend EM_ID;
%let EM_NUM_LABEL = 0;
   %macro  EM_LABEL; %mend;
%let EM_NUM_PREDICT = 4;
   %macro EM_PREDICT;
    P_Attrition_Flag0 P_Attrition_Flag1 V_Attrition_Flag0 V_Attrition_Flag1
   %mend EM_PREDICT;
%let EM_NUM_REFERRER = 0;
   %macro  EM_REFERRER; %mend;
%let EM_NUM_REJECTS = 2;
   %macro EM_REJECTS;
    G_Contacts_Count_12_mon G_Months_on_book
   %mend EM_REJECTS;
%let EM_NUM_RESIDUAL = 2;
   %macro EM_RESIDUAL;
    R_Attrition_Flag0 R_Attrition_Flag1
   %mend EM_RESIDUAL;
%let EM_NUM_SEGMENT = 2;
   %macro EM_SEGMENT;
    _NODE_ b_Attrition_Flag
   %mend EM_SEGMENT;
%let EM_NUM_SEQUENCE = 0;
   %macro  EM_SEQUENCE; %mend;
%let EM_NUM_TEXT = 0;
   %macro  EM_TEXT; %mend;
%let EM_NUM_TIMEID = 0;
   %macro  EM_TIMEID; %mend;
%let EM_NUM_TREATMENT = 0;
   %macro  EM_TREATMENT; %mend;
%let EM_NUM_KEY = 0;
   %macro  EM_KEY; %mend;
*------------------------------------------------------------*;
* End Create EM Macro Variables and Macros;
*------------------------------------------------------------*;
