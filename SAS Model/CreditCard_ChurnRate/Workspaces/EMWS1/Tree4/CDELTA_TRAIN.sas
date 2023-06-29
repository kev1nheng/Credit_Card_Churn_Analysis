if upcase(NAME) = "G_CONTACTS_COUNT_12_MON" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "G_MONTHS_ON_BOOK" then do;
ROLE = "REJECTED";
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
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
