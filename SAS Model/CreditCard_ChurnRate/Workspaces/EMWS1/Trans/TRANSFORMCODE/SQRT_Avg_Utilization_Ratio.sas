drop Trans_SCALEVAR_1;
label SQRT_Avg_Utilization_Ratio = 'Transformed Avg_Utilization_Ratio';
length SQRT_Avg_Utilization_Ratio 8;
if Avg_Utilization_Ratio eq . then SQRT_Avg_Utilization_Ratio = .;
else do;
Trans_SCALEVAR_1 = max(Avg_Utilization_Ratio-0, 0.0)/0.999;
if Trans_SCALEVAR_1 >= 0 then SQRT_Avg_Utilization_Ratio = Sqrt(Trans_SCALEVAR_1);
else SQRT_Avg_Utilization_Ratio = .;
end;
