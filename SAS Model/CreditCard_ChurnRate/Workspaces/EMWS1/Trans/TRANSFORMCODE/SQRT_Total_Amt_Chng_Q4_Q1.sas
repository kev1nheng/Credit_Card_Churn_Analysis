drop Trans_SCALEVAR_2;
label SQRT_Total_Amt_Chng_Q4_Q1 = 'Transformed Total_Amt_Chng_Q4_Q1';
length SQRT_Total_Amt_Chng_Q4_Q1 8;
if Total_Amt_Chng_Q4_Q1 eq . then SQRT_Total_Amt_Chng_Q4_Q1 = .;
else do;
Trans_SCALEVAR_2 = max(Total_Amt_Chng_Q4_Q1-0, 0.0)/3.397;
if Trans_SCALEVAR_2 >= 0 then SQRT_Total_Amt_Chng_Q4_Q1 = Sqrt(Trans_SCALEVAR_2);
else SQRT_Total_Amt_Chng_Q4_Q1 = .;
end;
