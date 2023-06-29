drop Trans_SCALEVAR_3;
label SQRT_Total_Ct_Chng_Q4_Q1 = 'Transformed Total_Ct_Chng_Q4_Q1';
length SQRT_Total_Ct_Chng_Q4_Q1 8;
if Total_Ct_Chng_Q4_Q1 eq . then SQRT_Total_Ct_Chng_Q4_Q1 = .;
else do;
Trans_SCALEVAR_3 = max(Total_Ct_Chng_Q4_Q1-0, 0.0)/3.714;
if Trans_SCALEVAR_3 >= 0 then SQRT_Total_Ct_Chng_Q4_Q1 = Sqrt(Trans_SCALEVAR_3);
else SQRT_Total_Ct_Chng_Q4_Q1 = .;
end;
