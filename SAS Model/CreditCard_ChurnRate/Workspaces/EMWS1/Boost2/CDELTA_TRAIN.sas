if upcase(NAME) = "G_CONTACTS_COUNT_12_MON" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "G_CUSTOMER_AGE" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "G_MONTHS_INACTIVE_12_MON" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "G_MONTHS_ON_BOOK" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "G_TOTAL_RELATIONSHIP_COUNT" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "G_TOTAL_TRANS_CT" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "Q_ATTRITION_FLAG0" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_ATTRITION_FLAG1" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "RANGE_LOG_TOTAL_TRANS_AMT" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "RANGE_SQRT_AVG_UTILIZATION_RATIO" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "RANGE_SQRT_TOTAL_AMT_CHNG_Q4_Q1" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "RANGE_SQRT_TOTAL_CT_CHNG_Q4_Q1" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "RANGE_TOTAL_REVOLVING_BAL" then do;
ROLE = "INPUT";
end;
