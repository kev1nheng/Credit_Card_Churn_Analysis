label RANGE_Total_Revolving_Bal = 'Transformed Total_Revolving_Bal';
length RANGE_Total_Revolving_Bal 8;
if Total_Revolving_Bal eq . then RANGE_Total_Revolving_Bal = .;
else RANGE_Total_Revolving_Bal = (Total_Revolving_Bal - 0) / (2517-0);
