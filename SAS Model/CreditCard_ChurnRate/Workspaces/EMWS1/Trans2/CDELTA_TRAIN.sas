*------------------------------------------------------------*;
* Computed Code;
*------------------------------------------------------------*;

if NAME="RANGE_LOG_Total_Trans_Amt" then do;
   COMMENT = "(LOG_Total_Trans_Amt - 0) / (0.6931471806-0) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="LOG_Total_Trans_Amt" then delete;

if NAME="RANGE_SQRT_Avg_Utilization_Ratio" then do;
   COMMENT = "(SQRT_Avg_Utilization_Ratio - 0) / (1-0) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="SQRT_Avg_Utilization_Ratio" then delete;

if NAME="RANGE_SQRT_Total_Amt_Chng_Q4_Q1" then do;
   COMMENT = "(SQRT_Total_Amt_Chng_Q4_Q1 - 0) / (1-0) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="SQRT_Total_Amt_Chng_Q4_Q1" then delete;

if NAME="RANGE_SQRT_Total_Ct_Chng_Q4_Q1" then do;
   COMMENT = "(SQRT_Total_Ct_Chng_Q4_Q1 - 0) / (1-0) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="SQRT_Total_Ct_Chng_Q4_Q1" then delete;

if NAME="RANGE_Total_Revolving_Bal" then do;
   COMMENT = "(Total_Revolving_Bal - 0) / (2517-0) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="Total_Revolving_Bal" then delete;
