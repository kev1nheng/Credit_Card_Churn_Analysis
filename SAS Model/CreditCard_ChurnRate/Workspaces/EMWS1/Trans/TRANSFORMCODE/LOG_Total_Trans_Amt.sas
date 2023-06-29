drop Trans_SCALEVAR_5;
label LOG_Total_Trans_Amt = 'Transformed Total_Trans_Amt';
length LOG_Total_Trans_Amt 8;
if Total_Trans_Amt eq . then LOG_Total_Trans_Amt = .;
else do;
Trans_SCALEVAR_5 = max(Total_Trans_Amt-510, 0.0)/17974;
if Trans_SCALEVAR_5 + 1 > 0 then LOG_Total_Trans_Amt = log(Trans_SCALEVAR_5 + 1);
else LOG_Total_Trans_Amt = .;
end;
