if upcase(name) = 'AVG_OPEN_TO_BUY' then role = 'REJECTED';
else
if upcase(name) = 'CARD_CATEGORY' then role = 'REJECTED';
else
if upcase(name) = 'CONTACTS_COUNT_12_MON' then role = 'REJECTED';
else
if upcase(name) = 'CREDIT_LIMIT' then role = 'REJECTED';
else
if upcase(name) = 'CUSTOMER_AGE' then role = 'REJECTED';
else
if upcase(name) = 'DEPENDENT_COUNT' then role = 'REJECTED';
else
if upcase(name) = 'EDUCATION_LEVEL' then role = 'REJECTED';
else
if upcase(name) = 'GENDER' then role = 'REJECTED';
else
if upcase(name) = 'INCOME_CATEGORY' then role = 'REJECTED';
else
if upcase(name) = 'MARITAL_STATUS' then role = 'REJECTED';
else
if upcase(name) = 'MONTHS_INACTIVE_12_MON' then role = 'REJECTED';
else
if upcase(name) = 'MONTHS_ON_BOOK' then role = 'REJECTED';
else
if upcase(name) = 'TOTAL_RELATIONSHIP_COUNT' then role = 'REJECTED';
else
if upcase(name) = 'TOTAL_TRANS_CT' then role = 'REJECTED';
if upcase(strip(name)) = "G_TOTAL_TRANS_CT" then level = "NOMINAL";
if upcase(strip(name)) = "G_CONTACTS_COUNT_12_MON" then level = "NOMINAL";
if upcase(strip(name)) = "G_MONTHS_INACTIVE_12_MON" then level = "NOMINAL";
if upcase(strip(name)) = "G_TOTAL_RELATIONSHIP_COUNT" then level = "NOMINAL";
if upcase(strip(name)) = "G_CUSTOMER_AGE" then level = "NOMINAL";
if upcase(strip(name)) = "G_MONTHS_ON_BOOK" then level = "NOMINAL";
