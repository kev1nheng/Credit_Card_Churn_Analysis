label RANGE_SQRT_Total_Amt_Chng_Q4_Q1 = 'Transformed: Transformed Total_Amt_Chng_Q4_Q1';
length RANGE_SQRT_Total_Amt_Chng_Q4_Q1 8;
if SQRT_Total_Amt_Chng_Q4_Q1 eq . then RANGE_SQRT_Total_Amt_Chng_Q4_Q1 = .;
else RANGE_SQRT_Total_Amt_Chng_Q4_Q1 = (SQRT_Total_Amt_Chng_Q4_Q1 - 0) / (1-0);
