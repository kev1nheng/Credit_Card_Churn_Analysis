label RANGE_LOG_Total_Trans_Amt = 'Transformed: Transformed Total_Trans_Amt';
length RANGE_LOG_Total_Trans_Amt 8;
if LOG_Total_Trans_Amt eq . then RANGE_LOG_Total_Trans_Amt = .;
else RANGE_LOG_Total_Trans_Amt = (LOG_Total_Trans_Amt - 0) / (0.6931471806-0);
