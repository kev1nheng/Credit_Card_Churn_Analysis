if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'G_CONTACTS_COUNT_12_MON'
'G_CUSTOMER_AGE'
'G_MONTHS_INACTIVE_12_MON'
'G_MONTHS_ON_BOOK'
'G_TOTAL_RELATIONSHIP_COUNT'
'G_TOTAL_TRANS_CT'
'RANGE_LOG_TOTAL_TRANS_AMT'
'RANGE_SQRT_AVG_UTILIZATION_RATIO'
'RANGE_SQRT_TOTAL_AMT_CHNG_Q4_Q1'
'RANGE_SQRT_TOTAL_CT_CHNG_Q4_Q1'
'RANGE_TOTAL_REVOLVING_BAL'
) then ROLE='INPUT';
else delete;
end;
