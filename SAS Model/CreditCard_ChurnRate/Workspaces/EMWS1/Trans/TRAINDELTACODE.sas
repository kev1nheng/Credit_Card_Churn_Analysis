
if NAME="SQRT_Avg_Utilization_Ratio" then do;
   COMMENT = "sqrt(max(Avg_Utilization_Ratio-0, 0.0)/0.999) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="Avg_Utilization_Ratio" then delete;

if NAME="SQRT_Total_Amt_Chng_Q4_Q1" then do;
   COMMENT = "sqrt(max(Total_Amt_Chng_Q4_Q1-0, 0.0)/3.397) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="Total_Amt_Chng_Q4_Q1" then delete;

if NAME="SQRT_Total_Ct_Chng_Q4_Q1" then do;
   COMMENT = "sqrt(max(Total_Ct_Chng_Q4_Q1-0, 0.0)/3.714) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="Total_Ct_Chng_Q4_Q1" then delete;

if NAME="LOG_Total_Trans_Amt" then do;
   COMMENT = "log(max(Total_Trans_Amt-510, 0.0)/17974  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="Total_Trans_Amt" then delete;
