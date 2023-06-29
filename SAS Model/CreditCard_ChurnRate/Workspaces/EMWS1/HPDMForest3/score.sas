data sasep.out;
   dcl package score sc();
   dcl double "RANGE_LOG_Total_Trans_Amt" having
     label n'Transformed: Transformed Total_Trans_Amt';
   dcl double "RANGE_SQRT_Avg_Utilization_Ratio" having
     label n'Transformed: Transformed Avg_Utilization_Ratio';
   dcl double "RANGE_SQRT_Total_Amt_Chng_Q4_Q1" having
     label n'Transformed: Transformed Total_Amt_Chng_Q4_Q1';
   dcl double "RANGE_SQRT_Total_Ct_Chng_Q4_Q1" having
     label n'Transformed: Transformed Total_Ct_Chng_Q4_Q1';
   dcl double "RANGE_Total_Revolving_Bal" having
     label n'Transformed Total_Revolving_Bal';
   dcl double "G_Contacts_Count_12_mon" having
     label n'Grouped Levels for  Contacts_Count_12_mon';
   dcl double "G_Customer_Age" having label n'Grouped Levels for  Customer_Age'
   ;dcl double "G_Months_Inactive_12_mon" having
     label n'Grouped Levels for  Months_Inactive_12_mon';
   dcl double "G_Months_on_book" having
     label n'Grouped Levels for  Months_on_book';
   dcl double "G_Total_Relationship_Count" having
     label n'Grouped Levels for  Total_Relationship_Count';
   dcl double "G_Total_Trans_Ct" having
     label n'Grouped Levels for  Total_Trans_Ct';
   dcl double "P_Attrition_Flag1" having label n'Predicted: Attrition_Flag=1';
   dcl double "P_Attrition_Flag0" having label n'Predicted: Attrition_Flag=0';
   dcl nchar(32) "I_Attrition_Flag" having label n'Into: Attrition_Flag';
   dcl nchar(4) "_WARN_" having label n'Warnings';
   keep "P_Attrition_Flag1" "P_Attrition_Flag0" "I_Attrition_Flag" "_WARN_";
    
   varlist allvars [_all_];
    
   method init();
      sc.setvars(allvars);
      sc.setKey(n'A9CFF668F61B442867528B3D06926E2C6C8E63F7');
   end;
    
   method run();
      set sasep.in;
      sc.scoreRecord();
   end;
enddata;
