***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4
      F_Attrition_Flag  $ 17
      I_Attrition_Flag  $ 17
      U_Attrition_Flag  $ 17
;
      label S_RANGE_LOG_Total_Trans_Amt =
'Standard: RANGE_LOG_Total_Trans_Amt' ;

      label S_RANGE_SQRT_Avg_Utilization_Rat =
'Standard: RANGE_SQRT_Avg_Utilization_Ratio' ;

      label S_RANGE_SQRT_Total_Amt_Chng_Q4_Q =
'Standard: RANGE_SQRT_Total_Amt_Chng_Q4_Q1' ;

      label S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1 =
'Standard: RANGE_SQRT_Total_Ct_Chng_Q4_Q1' ;

      label S_RANGE_Total_Revolving_Bal =
'Standard: RANGE_Total_Revolving_Bal' ;

      label G_Contacts_Count_12_mon0 = 'Dummy: G_Contacts_Count_12_mon=0' ;

      label G_Contacts_Count_12_mon1 = 'Dummy: G_Contacts_Count_12_mon=1' ;

      label G_Contacts_Count_12_mon2 = 'Dummy: G_Contacts_Count_12_mon=2' ;

      label G_Contacts_Count_12_mon3 = 'Dummy: G_Contacts_Count_12_mon=3' ;

      label G_Customer_Age0 = 'Dummy: G_Customer_Age=0' ;

      label G_Customer_Age1 = 'Dummy: G_Customer_Age=1' ;

      label G_Customer_Age2 = 'Dummy: G_Customer_Age=2' ;

      label G_Customer_Age3 = 'Dummy: G_Customer_Age=3' ;

      label G_Customer_Age4 = 'Dummy: G_Customer_Age=4' ;

      label G_Customer_Age5 = 'Dummy: G_Customer_Age=5' ;

      label G_Customer_Age6 = 'Dummy: G_Customer_Age=6' ;

      label G_Customer_Age7 = 'Dummy: G_Customer_Age=7' ;

      label G_Customer_Age8 = 'Dummy: G_Customer_Age=8' ;

      label G_Customer_Age9 = 'Dummy: G_Customer_Age=9' ;

      label G_Months_Inactive_12_mon0 = 'Dummy: G_Months_Inactive_12_mon=0' ;

      label G_Months_Inactive_12_mon1 = 'Dummy: G_Months_Inactive_12_mon=1' ;

      label G_Months_Inactive_12_mon2 = 'Dummy: G_Months_Inactive_12_mon=2' ;

      label G_Months_Inactive_12_mon3 = 'Dummy: G_Months_Inactive_12_mon=3' ;

      label G_Months_on_book0 = 'Dummy: G_Months_on_book=0' ;

      label G_Months_on_book1 = 'Dummy: G_Months_on_book=1' ;

      label G_Months_on_book2 = 'Dummy: G_Months_on_book=2' ;

      label G_Months_on_book3 = 'Dummy: G_Months_on_book=3' ;

      label G_Months_on_book4 = 'Dummy: G_Months_on_book=4' ;

      label G_Months_on_book5 = 'Dummy: G_Months_on_book=5' ;

      label G_Months_on_book6 = 'Dummy: G_Months_on_book=6' ;

      label G_Months_on_book7 = 'Dummy: G_Months_on_book=7' ;

      label G_Total_Relationship_Count0 =
'Dummy: G_Total_Relationship_Count=0' ;

      label G_Total_Relationship_Count1 =
'Dummy: G_Total_Relationship_Count=1' ;

      label G_Total_Trans_Ct0 = 'Dummy: G_Total_Trans_Ct=0' ;

      label G_Total_Trans_Ct1 = 'Dummy: G_Total_Trans_Ct=1' ;

      label G_Total_Trans_Ct2 = 'Dummy: G_Total_Trans_Ct=2' ;

      label G_Total_Trans_Ct3 = 'Dummy: G_Total_Trans_Ct=3' ;

      label G_Total_Trans_Ct4 = 'Dummy: G_Total_Trans_Ct=4' ;

      label G_Total_Trans_Ct5 = 'Dummy: G_Total_Trans_Ct=5' ;

      label G_Total_Trans_Ct6 = 'Dummy: G_Total_Trans_Ct=6' ;

      label H1x1_1 = 'Hidden: H1x1_=1' ;

      label H1x1_2 = 'Hidden: H1x1_=2' ;

      label H1x2_1 = 'Hidden: H1x2_=1' ;

      label H1x2_2 = 'Hidden: H1x2_=2' ;

      label I_Attrition_Flag = 'Into: Attrition_Flag' ;

      label F_Attrition_Flag = 'From: Attrition_Flag' ;

      label U_Attrition_Flag = 'Unnormalized Into: Attrition_Flag' ;

      label P_Attrition_Flag1 = 'Predicted: Attrition_Flag=1' ;

      label R_Attrition_Flag1 = 'Residual: Attrition_Flag=1' ;

      label P_Attrition_Flag0 = 'Predicted: Attrition_Flag=0' ;

      label R_Attrition_Flag0 = 'Residual: Attrition_Flag=0' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for G_Contacts_Count_12_mon ;
drop G_Contacts_Count_12_mon0 G_Contacts_Count_12_mon1
        G_Contacts_Count_12_mon2 G_Contacts_Count_12_mon3 ;
*** encoding is sparse, initialize to zero;
G_Contacts_Count_12_mon0 = 0;
G_Contacts_Count_12_mon1 = 0;
G_Contacts_Count_12_mon2 = 0;
G_Contacts_Count_12_mon3 = 0;
if missing( G_Contacts_Count_12_mon ) then do;
   G_Contacts_Count_12_mon0 = .;
   G_Contacts_Count_12_mon1 = .;
   G_Contacts_Count_12_mon2 = .;
   G_Contacts_Count_12_mon3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( G_Contacts_Count_12_mon , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '2'  then do;
      if _dm12 <= '1'  then do;
         if _dm12 = '0'  then do;
            G_Contacts_Count_12_mon0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '1'  then do;
               G_Contacts_Count_12_mon1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '2'  then do;
            G_Contacts_Count_12_mon2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '3'  then do;
         G_Contacts_Count_12_mon3 = 1;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '4'  then do;
            G_Contacts_Count_12_mon0 = -1;
            G_Contacts_Count_12_mon1 = -1;
            G_Contacts_Count_12_mon2 = -1;
            G_Contacts_Count_12_mon3 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      G_Contacts_Count_12_mon0 = .;
      G_Contacts_Count_12_mon1 = .;
      G_Contacts_Count_12_mon2 = .;
      G_Contacts_Count_12_mon3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Customer_Age ;
drop G_Customer_Age0 G_Customer_Age1 G_Customer_Age2 G_Customer_Age3
        G_Customer_Age4 G_Customer_Age5 G_Customer_Age6 G_Customer_Age7
        G_Customer_Age8 G_Customer_Age9 ;
*** encoding is sparse, initialize to zero;
G_Customer_Age0 = 0;
G_Customer_Age1 = 0;
G_Customer_Age2 = 0;
G_Customer_Age3 = 0;
G_Customer_Age4 = 0;
G_Customer_Age5 = 0;
G_Customer_Age6 = 0;
G_Customer_Age7 = 0;
G_Customer_Age8 = 0;
G_Customer_Age9 = 0;
if missing( G_Customer_Age ) then do;
   G_Customer_Age0 = .;
   G_Customer_Age1 = .;
   G_Customer_Age2 = .;
   G_Customer_Age3 = .;
   G_Customer_Age4 = .;
   G_Customer_Age5 = .;
   G_Customer_Age6 = .;
   G_Customer_Age7 = .;
   G_Customer_Age8 = .;
   G_Customer_Age9 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( G_Customer_Age , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '4'  then do;
      if _dm12 <= '10'  then do;
         if _dm12 <= '1'  then do;
            if _dm12 = '0'  then do;
               G_Customer_Age0 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '1'  then do;
                  G_Customer_Age1 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '10'  then do;
               G_Customer_Age0 = -1;
               G_Customer_Age1 = -1;
               G_Customer_Age2 = -1;
               G_Customer_Age3 = -1;
               G_Customer_Age4 = -1;
               G_Customer_Age5 = -1;
               G_Customer_Age6 = -1;
               G_Customer_Age7 = -1;
               G_Customer_Age8 = -1;
               G_Customer_Age9 = -1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 <= '3'  then do;
            if _dm12 = '2'  then do;
               G_Customer_Age2 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '3'  then do;
                  G_Customer_Age3 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '4'  then do;
               G_Customer_Age4 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '7'  then do;
         if _dm12 <= '6'  then do;
            if _dm12 = '5'  then do;
               G_Customer_Age5 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '6'  then do;
                  G_Customer_Age6 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '7'  then do;
               G_Customer_Age7 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '8'  then do;
            G_Customer_Age8 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '9'  then do;
               G_Customer_Age9 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      G_Customer_Age0 = .;
      G_Customer_Age1 = .;
      G_Customer_Age2 = .;
      G_Customer_Age3 = .;
      G_Customer_Age4 = .;
      G_Customer_Age5 = .;
      G_Customer_Age6 = .;
      G_Customer_Age7 = .;
      G_Customer_Age8 = .;
      G_Customer_Age9 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Months_Inactive_12_mon ;
drop G_Months_Inactive_12_mon0 G_Months_Inactive_12_mon1
        G_Months_Inactive_12_mon2 G_Months_Inactive_12_mon3 ;
*** encoding is sparse, initialize to zero;
G_Months_Inactive_12_mon0 = 0;
G_Months_Inactive_12_mon1 = 0;
G_Months_Inactive_12_mon2 = 0;
G_Months_Inactive_12_mon3 = 0;
if missing( G_Months_Inactive_12_mon ) then do;
   G_Months_Inactive_12_mon0 = .;
   G_Months_Inactive_12_mon1 = .;
   G_Months_Inactive_12_mon2 = .;
   G_Months_Inactive_12_mon3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( G_Months_Inactive_12_mon , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '2'  then do;
      if _dm12 <= '1'  then do;
         if _dm12 = '0'  then do;
            G_Months_Inactive_12_mon0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '1'  then do;
               G_Months_Inactive_12_mon1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '2'  then do;
            G_Months_Inactive_12_mon2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '3'  then do;
         G_Months_Inactive_12_mon3 = 1;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '4'  then do;
            G_Months_Inactive_12_mon0 = -1;
            G_Months_Inactive_12_mon1 = -1;
            G_Months_Inactive_12_mon2 = -1;
            G_Months_Inactive_12_mon3 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      G_Months_Inactive_12_mon0 = .;
      G_Months_Inactive_12_mon1 = .;
      G_Months_Inactive_12_mon2 = .;
      G_Months_Inactive_12_mon3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Months_on_book ;
drop G_Months_on_book0 G_Months_on_book1 G_Months_on_book2 G_Months_on_book3
        G_Months_on_book4 G_Months_on_book5 G_Months_on_book6
        G_Months_on_book7 ;
*** encoding is sparse, initialize to zero;
G_Months_on_book0 = 0;
G_Months_on_book1 = 0;
G_Months_on_book2 = 0;
G_Months_on_book3 = 0;
G_Months_on_book4 = 0;
G_Months_on_book5 = 0;
G_Months_on_book6 = 0;
G_Months_on_book7 = 0;
if missing( G_Months_on_book ) then do;
   G_Months_on_book0 = .;
   G_Months_on_book1 = .;
   G_Months_on_book2 = .;
   G_Months_on_book3 = .;
   G_Months_on_book4 = .;
   G_Months_on_book5 = .;
   G_Months_on_book6 = .;
   G_Months_on_book7 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( G_Months_on_book , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '4'  then do;
      if _dm12 <= '2'  then do;
         if _dm12 <= '1'  then do;
            if _dm12 = '0'  then do;
               G_Months_on_book0 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '1'  then do;
                  G_Months_on_book1 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '2'  then do;
               G_Months_on_book2 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            G_Months_on_book3 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '4'  then do;
               G_Months_on_book4 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '6'  then do;
         if _dm12 = '5'  then do;
            G_Months_on_book5 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '6'  then do;
               G_Months_on_book6 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '7'  then do;
            G_Months_on_book7 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '8'  then do;
               G_Months_on_book0 = -1;
               G_Months_on_book1 = -1;
               G_Months_on_book2 = -1;
               G_Months_on_book3 = -1;
               G_Months_on_book4 = -1;
               G_Months_on_book5 = -1;
               G_Months_on_book6 = -1;
               G_Months_on_book7 = -1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      G_Months_on_book0 = .;
      G_Months_on_book1 = .;
      G_Months_on_book2 = .;
      G_Months_on_book3 = .;
      G_Months_on_book4 = .;
      G_Months_on_book5 = .;
      G_Months_on_book6 = .;
      G_Months_on_book7 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Total_Relationship_Count ;
drop G_Total_Relationship_Count0 G_Total_Relationship_Count1 ;
if missing( G_Total_Relationship_Count ) then do;
   G_Total_Relationship_Count0 = .;
   G_Total_Relationship_Count1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( G_Total_Relationship_Count , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      G_Total_Relationship_Count0 = -1;
      G_Total_Relationship_Count1 = -1;
   end;
   else if _dm12 = '1'  then do;
      G_Total_Relationship_Count0 = 0;
      G_Total_Relationship_Count1 = 1;
   end;
   else if _dm12 = '0'  then do;
      G_Total_Relationship_Count0 = 1;
      G_Total_Relationship_Count1 = 0;
   end;
   else do;
      G_Total_Relationship_Count0 = .;
      G_Total_Relationship_Count1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Total_Trans_Ct ;
drop G_Total_Trans_Ct0 G_Total_Trans_Ct1 G_Total_Trans_Ct2 G_Total_Trans_Ct3
        G_Total_Trans_Ct4 G_Total_Trans_Ct5 G_Total_Trans_Ct6 ;
*** encoding is sparse, initialize to zero;
G_Total_Trans_Ct0 = 0;
G_Total_Trans_Ct1 = 0;
G_Total_Trans_Ct2 = 0;
G_Total_Trans_Ct3 = 0;
G_Total_Trans_Ct4 = 0;
G_Total_Trans_Ct5 = 0;
G_Total_Trans_Ct6 = 0;
if missing( G_Total_Trans_Ct ) then do;
   G_Total_Trans_Ct0 = .;
   G_Total_Trans_Ct1 = .;
   G_Total_Trans_Ct2 = .;
   G_Total_Trans_Ct3 = .;
   G_Total_Trans_Ct4 = .;
   G_Total_Trans_Ct5 = .;
   G_Total_Trans_Ct6 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( G_Total_Trans_Ct , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '3'  then do;
      if _dm12 <= '1'  then do;
         if _dm12 = '0'  then do;
            G_Total_Trans_Ct0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '1'  then do;
               G_Total_Trans_Ct1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '2'  then do;
            G_Total_Trans_Ct2 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '3'  then do;
               G_Total_Trans_Ct3 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '5'  then do;
         if _dm12 = '4'  then do;
            G_Total_Trans_Ct4 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '5'  then do;
               G_Total_Trans_Ct5 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '6'  then do;
            G_Total_Trans_Ct6 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '7'  then do;
               G_Total_Trans_Ct0 = -1;
               G_Total_Trans_Ct1 = -1;
               G_Total_Trans_Ct2 = -1;
               G_Total_Trans_Ct3 = -1;
               G_Total_Trans_Ct4 = -1;
               G_Total_Trans_Ct5 = -1;
               G_Total_Trans_Ct6 = -1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      G_Total_Trans_Ct0 = .;
      G_Total_Trans_Ct1 = .;
      G_Total_Trans_Ct2 = .;
      G_Total_Trans_Ct3 = .;
      G_Total_Trans_Ct4 = .;
      G_Total_Trans_Ct5 = .;
      G_Total_Trans_Ct6 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   RANGE_LOG_Total_Trans_Amt ,
   RANGE_SQRT_Avg_Utilization_Ratio ,
   RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ,
   RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ,
   RANGE_Total_Revolving_Bal   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node interval ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_RANGE_LOG_Total_Trans_Amt
          =    -1.34747068578628 +      5.0128535511494 *
        RANGE_LOG_Total_Trans_Amt ;
   S_RANGE_SQRT_Avg_Utilization_Rat
          =    -1.34502734827526 +     3.19469433649726 *
        RANGE_SQRT_Avg_Utilization_Ratio ;
   S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          =    -7.21426643857002 +     15.4166020949803 *
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ;
   S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          =    -6.16155815683527 +     14.2791680762335 *
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ;
   S_RANGE_Total_Revolving_Bal
          =    -1.43123481780808 +     3.09032113107013 *
        RANGE_Total_Revolving_Bal ;
END;
ELSE DO;
   IF MISSING( RANGE_LOG_Total_Trans_Amt ) THEN S_RANGE_LOG_Total_Trans_Amt
          = . ;
   ELSE S_RANGE_LOG_Total_Trans_Amt
          =    -1.34747068578628 +      5.0128535511494 *
        RANGE_LOG_Total_Trans_Amt ;
   IF MISSING( RANGE_SQRT_Avg_Utilization_Ratio ) THEN
        S_RANGE_SQRT_Avg_Utilization_Rat  = . ;
   ELSE S_RANGE_SQRT_Avg_Utilization_Rat
          =    -1.34502734827526 +     3.19469433649726 *
        RANGE_SQRT_Avg_Utilization_Ratio ;
   IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) THEN
        S_RANGE_SQRT_Total_Amt_Chng_Q4_Q  = . ;
   ELSE S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          =    -7.21426643857002 +     15.4166020949803 *
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ;
   IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) THEN
        S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1  = . ;
   ELSE S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          =    -6.16155815683527 +     14.2791680762335 *
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ;
   IF MISSING( RANGE_Total_Revolving_Bal ) THEN S_RANGE_Total_Revolving_Bal
          = . ;
   ELSE S_RANGE_Total_Revolving_Bal
          =    -1.43123481780808 +     3.09032113107013 *
        RANGE_Total_Revolving_Bal ;
END;
*** *************************;
*** Writing the Node nominal ;
*** *************************;
*** *************************;
*** Writing the Node H1x1_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H1x1_1  =     1.02501964860994 * S_RANGE_LOG_Total_Trans_Amt
          +     0.30125997647147 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.23244197886313 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     -0.1186861071534 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -2.97931719831362 * S_RANGE_Total_Revolving_Bal ;
   H1x1_2  =    -0.95198389903237 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.16356667531156 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.11682877242643 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.20373298002789 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.02861216680365 * S_RANGE_Total_Revolving_Bal ;
   H1x1_1  = H1x1_1  +     2.40671499395249 * G_Contacts_Count_12_mon0
          +    -0.28604333391551 * G_Contacts_Count_12_mon1
          +    -0.65633348542709 * G_Contacts_Count_12_mon2
          +    -1.01395328713868 * G_Contacts_Count_12_mon3
          +     0.85960465205093 * G_Customer_Age0  +     0.05121480560908 *
        G_Customer_Age1  +     0.07410310179315 * G_Customer_Age2
          +     0.34166223952007 * G_Customer_Age3  +     0.06870447056678 *
        G_Customer_Age4  +    -0.11676539026414 * G_Customer_Age5
          +     0.28927492204781 * G_Customer_Age6  +     0.23499226142499 *
        G_Customer_Age7  +    -0.11493422026684 * G_Customer_Age8
          +      -1.747811086948 * G_Customer_Age9  +    -1.75331030145069 *
        G_Months_Inactive_12_mon0  +     0.71391443696804 *
        G_Months_Inactive_12_mon1  +      0.3345243422843 *
        G_Months_Inactive_12_mon2  +      0.4696045512812 *
        G_Months_Inactive_12_mon3  +     0.45485139833883 * G_Months_on_book0
          +     0.39911195244105 * G_Months_on_book1
          +    -0.44963865252838 * G_Months_on_book2
          +     0.10698249012831 * G_Months_on_book3
          +     0.22008108873992 * G_Months_on_book4
          +     0.28392109419284 * G_Months_on_book5
          +     -0.3013014569746 * G_Months_on_book6
          +     0.15608132241029 * G_Months_on_book7
          +     0.31679963195245 * G_Total_Relationship_Count0
          +    -0.17244128327697 * G_Total_Relationship_Count1
          +     0.64194280071474 * G_Total_Trans_Ct0
          +     1.13181256946841 * G_Total_Trans_Ct1
          +     0.97686269686271 * G_Total_Trans_Ct2
          +     0.98717016810806 * G_Total_Trans_Ct3
          +     0.16424164762715 * G_Total_Trans_Ct4
          +     0.72187096755953 * G_Total_Trans_Ct5
          +    -1.97148427169564 * G_Total_Trans_Ct6 ;
   H1x1_2  = H1x1_2  +       -3.11569913609 * G_Contacts_Count_12_mon0
          +     0.55463007561471 * G_Contacts_Count_12_mon1
          +     0.86789725339798 * G_Contacts_Count_12_mon2
          +     0.83343929891411 * G_Contacts_Count_12_mon3
          +    -0.95250865316681 * G_Customer_Age0  +    -0.20153360153754 *
        G_Customer_Age1  +    -0.13395945037511 * G_Customer_Age2
          +    -0.16566544227004 * G_Customer_Age3  +     -0.0620673520045 *
        G_Customer_Age4  +    -0.17864972110492 * G_Customer_Age5
          +    -0.03983418838966 * G_Customer_Age6  +    -0.03191322178204 *
        G_Customer_Age7  +     0.11505624722812 * G_Customer_Age8
          +     0.57109255297529 * G_Customer_Age9  +    -0.87036174573518 *
        G_Months_Inactive_12_mon0  +     0.07164716186277 *
        G_Months_Inactive_12_mon1  +     0.17818319570595 *
        G_Months_Inactive_12_mon2  +     0.21942633339221 *
        G_Months_Inactive_12_mon3  +     0.03310063502739 * G_Months_on_book0
          +    -0.46458200938733 * G_Months_on_book1
          +    -0.04269630807226 * G_Months_on_book2
          +     0.01759018538732 * G_Months_on_book3
          +     0.11272864233309 * G_Months_on_book4
          +     0.05384941545576 * G_Months_on_book5
          +     0.02571962139521 * G_Months_on_book6
          +     0.20452595693382 * G_Months_on_book7
          +    -0.19840105547444 * G_Total_Relationship_Count0
          +     0.14283649235279 * G_Total_Relationship_Count1
          +    -2.38920084655518 * G_Total_Trans_Ct0
          +    -0.75544993192888 * G_Total_Trans_Ct1
          +    -0.72964558743549 * G_Total_Trans_Ct2
          +    -0.61944349469073 * G_Total_Trans_Ct3
          +    -0.41739064945083 * G_Total_Trans_Ct4
          +    -0.03013125081655 * G_Total_Trans_Ct5
          +     0.41065071348614 * G_Total_Trans_Ct6 ;
   H1x1_1  =    -1.40436708245126 + H1x1_1 ;
   H1x1_2  =    -0.62244542562102 + H1x1_2 ;
   H1x1_1  = TANH(H1x1_1 );
   H1x1_2  = TANH(H1x1_2 );
END;
ELSE DO;
   H1x1_1  = .;
   H1x1_2  = .;
END;
*** *************************;
*** Writing the Node H1x2_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H1x2_1  =     0.34659311824578 * S_RANGE_LOG_Total_Trans_Amt
          +      -2.853271161796 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -2.57518066438565 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.81279997821052 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.61085756295407 * S_RANGE_Total_Revolving_Bal ;
   H1x2_2  =    -0.93866568010483 * S_RANGE_LOG_Total_Trans_Amt
          +      0.0621508860157 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.81058548555497 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.44824766946914 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.47053902310597 * S_RANGE_Total_Revolving_Bal ;
   H1x2_1  = H1x2_1  +     0.71400513216767 * G_Contacts_Count_12_mon0
          +     0.92110780972835 * G_Contacts_Count_12_mon1
          +      0.3629668816764 * G_Contacts_Count_12_mon2
          +    -0.76435790327487 * G_Contacts_Count_12_mon3
          +     0.54626705501872 * G_Customer_Age0  +    -0.38925455254039 *
        G_Customer_Age1  +    -0.33241651106823 * G_Customer_Age2
          +    -1.15895365580622 * G_Customer_Age3  +     1.03208806982955 *
        G_Customer_Age4  +     0.56450431682696 * G_Customer_Age5
          +    -0.46180185966695 * G_Customer_Age6  +     2.06449433187004 *
        G_Customer_Age7  +     1.34602734238407 * G_Customer_Age8
          +    -0.12998191802167 * G_Customer_Age9  +     0.90239304334566 *
        G_Months_Inactive_12_mon0  +    -0.57705712485771 *
        G_Months_Inactive_12_mon1  +     0.20537489416112 *
        G_Months_Inactive_12_mon2  +    -0.49514361515621 *
        G_Months_Inactive_12_mon3  +    -0.32788082970898 * G_Months_on_book0
          +     0.39208442279716 * G_Months_on_book1
          +     0.32578211410595 * G_Months_on_book2
          +     0.51936552147334 * G_Months_on_book3
          +    -1.21996861431241 * G_Months_on_book4
          +    -0.79511599891093 * G_Months_on_book5
          +    -0.34474328383204 * G_Months_on_book6
          +    -2.57829235432067 * G_Months_on_book7
          +    -0.22957069127939 * G_Total_Relationship_Count0
          +     0.48708741281952 * G_Total_Relationship_Count1
          +    -0.20439350866799 * G_Total_Trans_Ct0
          +    -1.53642603362521 * G_Total_Trans_Ct1
          +    -0.25605051972162 * G_Total_Trans_Ct2
          +    -0.09346705616277 * G_Total_Trans_Ct3
          +     0.29244537978438 * G_Total_Trans_Ct4
          +     1.10332787181309 * G_Total_Trans_Ct5
          +     1.05459273095253 * G_Total_Trans_Ct6 ;
   H1x2_2  = H1x2_2  +    -0.74054226776565 * G_Contacts_Count_12_mon0
          +     0.25988400090888 * G_Contacts_Count_12_mon1
          +     0.36052880436315 * G_Contacts_Count_12_mon2
          +      1.2433826357089 * G_Contacts_Count_12_mon3
          +    -0.27615383177284 * G_Customer_Age0  +     0.53383540020492 *
        G_Customer_Age1  +    -1.54528759740368 * G_Customer_Age2
          +     0.16347425548076 * G_Customer_Age3  +    -1.83494882792742 *
        G_Customer_Age4  +     0.07542541730265 * G_Customer_Age5
          +      1.3274294957122 * G_Customer_Age6  +    -0.19652227566702 *
        G_Customer_Age7  +     1.17416887757193 * G_Customer_Age8
          +    -0.67757642607906 * G_Customer_Age9  +    -0.23841243791319 *
        G_Months_Inactive_12_mon0  +     0.17419249230621 *
        G_Months_Inactive_12_mon1  +    -1.32654545796903 *
        G_Months_Inactive_12_mon2  +    -0.17840288252074 *
        G_Months_Inactive_12_mon3  +     -1.3435001500078 * G_Months_on_book0
          +    -1.71551288230779 * G_Months_on_book1
          +    -0.45437716209274 * G_Months_on_book2
          +     0.20533045705777 * G_Months_on_book3
          +     0.35509066616616 * G_Months_on_book4
          +    -0.57998503526656 * G_Months_on_book5
          +     1.05551310369074 * G_Months_on_book6
          +    -1.65575396359379 * G_Months_on_book7
          +     0.39647475519458 * G_Total_Relationship_Count0
          +     0.73363930002586 * G_Total_Relationship_Count1
          +     0.93243970501905 * G_Total_Trans_Ct0
          +    -0.05888635699865 * G_Total_Trans_Ct1
          +     0.76141941519989 * G_Total_Trans_Ct2
          +     0.27602418707378 * G_Total_Trans_Ct3
          +       0.313462073547 * G_Total_Trans_Ct4
          +     1.64625003255342 * G_Total_Trans_Ct5
          +     2.07977868728295 * G_Total_Trans_Ct6 ;
   H1x2_1  =     0.44894143904256 + H1x2_1 ;
   H1x2_2  =    -1.17791753007224 + H1x2_2 ;
   H1x2_1  = SIN(H1x2_1 );
   H1x2_2  = SIN(H1x2_2 );
END;
ELSE DO;
   H1x2_1  = .;
   H1x2_2  = .;
END;
*** *************************;
*** Writing the Node Attrition_Flag ;
*** *************************;

*** Generate dummy variables for Attrition_Flag ;
drop Attrition_Flag1 Attrition_Flag0 ;
label F_Attrition_Flag = 'From: Attrition_Flag' ;
length F_Attrition_Flag $ 17;
F_Attrition_Flag = put( Attrition_Flag , $CHAR17. );
%DMNORMIP( F_Attrition_Flag )
if missing( Attrition_Flag ) then do;
   Attrition_Flag1 = .;
   Attrition_Flag0 = .;
end;
else do;
   if F_Attrition_Flag = '0'  then do;
      Attrition_Flag1 = 0;
      Attrition_Flag0 = 1;
   end;
   else if F_Attrition_Flag = '1'  then do;
      Attrition_Flag1 = 1;
      Attrition_Flag0 = 0;
   end;
   else do;
      Attrition_Flag1 = .;
      Attrition_Flag0 = .;
   end;
end;
IF _DM_BAD EQ 0 THEN DO;
   P_Attrition_Flag1  =     2.66059139553414 * H1x1_1
          +    -4.72406220462279 * H1x1_2 ;
   P_Attrition_Flag1  = P_Attrition_Flag1  +     0.01783303872814 * H1x2_1
          +     -0.0072448325809 * H1x2_2 ;
   P_Attrition_Flag1  =     1.65896234349997 + P_Attrition_Flag1 ;
   P_Attrition_Flag0  = 0;
   _MAX_ = MAX (P_Attrition_Flag1 , P_Attrition_Flag0 );
   _SUM_ = 0.;
   P_Attrition_Flag1  = EXP(P_Attrition_Flag1  - _MAX_);
   _SUM_ = _SUM_ + P_Attrition_Flag1 ;
   P_Attrition_Flag0  = EXP(P_Attrition_Flag0  - _MAX_);
   _SUM_ = _SUM_ + P_Attrition_Flag0 ;
   P_Attrition_Flag1  = P_Attrition_Flag1  / _SUM_;
   P_Attrition_Flag0  = P_Attrition_Flag0  / _SUM_;
END;
ELSE DO;
   P_Attrition_Flag1  = .;
   P_Attrition_Flag0  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_Attrition_Flag1  =      0.1606941309255;
   P_Attrition_Flag0  =     0.83930586907449;
END;
*** *****************************;
*** Writing the Residuals  of the Node Attrition_Flag ;
*** ******************************;
IF MISSING( Attrition_Flag1 ) THEN R_Attrition_Flag1  = . ;
ELSE R_Attrition_Flag1  = Attrition_Flag1  - P_Attrition_Flag1 ;
IF MISSING( Attrition_Flag0 ) THEN R_Attrition_Flag0  = . ;
ELSE R_Attrition_Flag0  = Attrition_Flag0  - P_Attrition_Flag0 ;
*** *************************;
*** Writing the I_Attrition_Flag  AND U_Attrition_Flag ;
*** *************************;
_MAXP_ = P_Attrition_Flag1 ;
I_Attrition_Flag  = "1                " ;
U_Attrition_Flag  = "1                " ;
IF( _MAXP_ LT P_Attrition_Flag0  ) THEN DO;
   _MAXP_ = P_Attrition_Flag0 ;
   I_Attrition_Flag  = "0                " ;
   U_Attrition_Flag  = "0                " ;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
drop
S_RANGE_LOG_Total_Trans_Amt
S_RANGE_SQRT_Avg_Utilization_Rat
S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
S_RANGE_Total_Revolving_Bal
H1x1_1
H1x1_2
H1x2_1
H1x2_2
;
