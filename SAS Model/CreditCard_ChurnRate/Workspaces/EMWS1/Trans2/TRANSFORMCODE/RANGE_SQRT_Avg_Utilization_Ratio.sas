label RANGE_SQRT_Avg_Utilization_Ratio = 'Transformed: Transformed Avg_Utilization_Ratio';
length RANGE_SQRT_Avg_Utilization_Ratio 8;
if SQRT_Avg_Utilization_Ratio eq . then RANGE_SQRT_Avg_Utilization_Ratio = .;
else RANGE_SQRT_Avg_Utilization_Ratio = (SQRT_Avg_Utilization_Ratio - 0) / (1-0);
