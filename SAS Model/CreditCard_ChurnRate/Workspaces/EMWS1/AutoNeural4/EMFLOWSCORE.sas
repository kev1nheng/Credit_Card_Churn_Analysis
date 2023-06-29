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

      label H1x1_3 = 'Hidden: H1x1_=3' ;

      label H1x1_4 = 'Hidden: H1x1_=4' ;

      label H1x2_1 = 'Hidden: H1x2_=1' ;

      label H1x2_2 = 'Hidden: H1x2_=2' ;

      label H1x2_3 = 'Hidden: H1x2_=3' ;

      label H1x2_4 = 'Hidden: H1x2_=4' ;

      label H1x3_1 = 'Hidden: H1x3_=1' ;

      label H1x3_2 = 'Hidden: H1x3_=2' ;

      label H1x3_3 = 'Hidden: H1x3_=3' ;

      label H1x3_4 = 'Hidden: H1x3_=4' ;

      label H1x4_1 = 'Hidden: H1x4_=1' ;

      label H1x4_2 = 'Hidden: H1x4_=2' ;

      label H1x4_3 = 'Hidden: H1x4_=3' ;

      label H1x4_4 = 'Hidden: H1x4_=4' ;

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
   H1x1_1  =     1.98406250371696 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.04599354670865 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.09545227761869 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.34366980683967 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.14170621942349 * S_RANGE_Total_Revolving_Bal ;
   H1x1_2  =     0.94671331843992 * S_RANGE_LOG_Total_Trans_Amt
          +     0.32923434548086 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.24614955854188 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.10063479801715 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.24819271831785 * S_RANGE_Total_Revolving_Bal ;
   H1x1_3  =     0.96000016501361 * S_RANGE_LOG_Total_Trans_Amt
          +     0.16490997899721 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.18156712032585 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.25770677259783 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.15162023643859 * S_RANGE_Total_Revolving_Bal ;
   H1x1_4  =    -0.11948539356884 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.00354917350482 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.01117083207191 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.05107175723836 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -1.23630441971104 * S_RANGE_Total_Revolving_Bal ;
   H1x1_1  = H1x1_1  +     0.16472351125122 * G_Contacts_Count_12_mon0
          +    -0.13469838962431 * G_Contacts_Count_12_mon1
          +    -0.07642529127065 * G_Contacts_Count_12_mon2
          +    -0.14555490383041 * G_Contacts_Count_12_mon3
          +     0.33257422609842 * G_Customer_Age0  +     0.13172938923565 *
        G_Customer_Age1  +    -0.16567339885553 * G_Customer_Age2
          +    -0.21047237751088 * G_Customer_Age3  +     0.14870489087972 *
        G_Customer_Age4  +     0.03451216606421 * G_Customer_Age5
          +     0.05516325584032 * G_Customer_Age6  +     0.12372975295418 *
        G_Customer_Age7  +    -0.20589336192322 * G_Customer_Age8
          +     0.27287767902345 * G_Customer_Age9  +    -0.03931037097103 *
        G_Months_Inactive_12_mon0  +     0.06514918044019 *
        G_Months_Inactive_12_mon1  +    -0.03962343819891 *
        G_Months_Inactive_12_mon2  +    -0.09149361784904 *
        G_Months_Inactive_12_mon3  +    -0.01051562953367 * G_Months_on_book0
          +     0.17993592089338 * G_Months_on_book1
          +    -0.12945205917348 * G_Months_on_book2
          +    -0.00056688400425 * G_Months_on_book3
          +     0.43316899571113 * G_Months_on_book4
          +      0.0677421677073 * G_Months_on_book5
          +    -0.11606787935574 * G_Months_on_book6
          +    -0.22521770192769 * G_Months_on_book7
          +    -0.05652443326464 * G_Total_Relationship_Count0
          +     0.01842219567611 * G_Total_Relationship_Count1
          +     1.29396967337014 * G_Total_Trans_Ct0
          +     0.70711093658436 * G_Total_Trans_Ct1
          +    -0.01735335869811 * G_Total_Trans_Ct2
          +     0.58436179605411 * G_Total_Trans_Ct3
          +     1.28837126934714 * G_Total_Trans_Ct4
          +      2.4270963279955 * G_Total_Trans_Ct5
          +    -2.95691563451595 * G_Total_Trans_Ct6 ;
   H1x1_2  = H1x1_2  +    -0.04911319846541 * G_Contacts_Count_12_mon0
          +    -0.11781620429029 * G_Contacts_Count_12_mon1
          +    -0.11697386360184 * G_Contacts_Count_12_mon2
          +    -0.15530629050067 * G_Contacts_Count_12_mon3
          +    -0.04262306911513 * G_Customer_Age0  +    -0.16388454204166 *
        G_Customer_Age1  +     0.28098946820055 * G_Customer_Age2
          +    -0.35202483338507 * G_Customer_Age3  +     0.13107180531717 *
        G_Customer_Age4  +     0.09115542239828 * G_Customer_Age5
          +     0.14146925917303 * G_Customer_Age6  +     0.04143566700643 *
        G_Customer_Age7  +    -0.25226636429488 * G_Customer_Age8
          +    -0.18556522090415 * G_Customer_Age9  +     0.33867716472231 *
        G_Months_Inactive_12_mon0  +    -0.04297776816895 *
        G_Months_Inactive_12_mon1  +    -0.23853217479528 *
        G_Months_Inactive_12_mon2  +    -0.00512086073717 *
        G_Months_Inactive_12_mon3  +     0.00730993673364 * G_Months_on_book0
          +    -0.30394682718623 * G_Months_on_book1
          +    -0.10415789748889 * G_Months_on_book2
          +     0.23662276250562 * G_Months_on_book3
          +    -0.01551147691712 * G_Months_on_book4
          +     0.17379127908018 * G_Months_on_book5
          +     0.68028435031056 * G_Months_on_book6
          +    -0.08879049823017 * G_Months_on_book7
          +      0.8611119503251 * G_Total_Relationship_Count0
          +     0.11701932079536 * G_Total_Relationship_Count1
          +     0.51700685952381 * G_Total_Trans_Ct0
          +    -0.35538581159894 * G_Total_Trans_Ct1
          +     0.02031567844134 * G_Total_Trans_Ct2
          +    -0.11485344302847 * G_Total_Trans_Ct3
          +     0.08719327695343 * G_Total_Trans_Ct4
          +     0.08328851435654 * G_Total_Trans_Ct5
          +    -0.13945730414903 * G_Total_Trans_Ct6 ;
   H1x1_3  = H1x1_3  +     0.76098202465376 * G_Contacts_Count_12_mon0
          +     0.11528262414204 * G_Contacts_Count_12_mon1
          +    -0.28330743214229 * G_Contacts_Count_12_mon2
          +    -0.17933103695526 * G_Contacts_Count_12_mon3
          +     0.35133437545716 * G_Customer_Age0  +     0.33250282987592 *
        G_Customer_Age1  +     0.18971196892744 * G_Customer_Age2
          +     0.38290315113208 * G_Customer_Age3  +     0.01282596226921 *
        G_Customer_Age4  +     0.22892616982051 * G_Customer_Age5
          +     0.09211969070161 * G_Customer_Age6  +    -0.03559177592818 *
        G_Customer_Age7  +     0.10916114557193 * G_Customer_Age8
          +    -1.12807680690307 * G_Customer_Age9  +     0.37312510346291 *
        G_Months_Inactive_12_mon0  +    -0.05461320689912 *
        G_Months_Inactive_12_mon1  +     0.04151151962365 *
        G_Months_Inactive_12_mon2  +    -0.08850284463307 *
        G_Months_Inactive_12_mon3  +     0.03698439235982 * G_Months_on_book0
          +     0.47919222878935 * G_Months_on_book1
          +      0.0669801991514 * G_Months_on_book2
          +    -0.10340192220633 * G_Months_on_book3
          +     -0.1671002634259 * G_Months_on_book4
          +    -0.16111081950598 * G_Months_on_book5
          +    -0.19915134685597 * G_Months_on_book6
          +    -0.13513605578263 * G_Months_on_book7
          +      0.1893477541475 * G_Total_Relationship_Count0
          +    -0.13998626106127 * G_Total_Relationship_Count1
          +     2.26637920618537 * G_Total_Trans_Ct0
          +     0.99138744086433 * G_Total_Trans_Ct1
          +     1.04615326930485 * G_Total_Trans_Ct2
          +     0.73864740934238 * G_Total_Trans_Ct3
          +    -0.07031112904429 * G_Total_Trans_Ct4
          +    -0.33138000658603 * G_Total_Trans_Ct5
          +    -0.15771003922152 * G_Total_Trans_Ct6 ;
   H1x1_4  = H1x1_4  +     0.00753425528095 * G_Contacts_Count_12_mon0
          +     0.66297369759007 * G_Contacts_Count_12_mon1
          +    -0.18030553871415 * G_Contacts_Count_12_mon2
          +    -0.26924014634294 * G_Contacts_Count_12_mon3
          +     0.16081105045882 * G_Customer_Age0  +    -0.11922708542787 *
        G_Customer_Age1  +     0.18051426462955 * G_Customer_Age2
          +     0.33933082581486 * G_Customer_Age3  +     0.00824341951432 *
        G_Customer_Age4  +    -0.07651261963569 * G_Customer_Age5
          +     0.11405350389852 * G_Customer_Age6  +     0.11570384522999 *
        G_Customer_Age7  +     0.14554263294103 * G_Customer_Age8
          +    -0.80473002622658 * G_Customer_Age9  +    -0.36283747180234 *
        G_Months_Inactive_12_mon0  +    -0.14361351110867 *
        G_Months_Inactive_12_mon1  +     0.01719600278014 *
        G_Months_Inactive_12_mon2  +     0.13811334631155 *
        G_Months_Inactive_12_mon3  +     0.03891169041198 * G_Months_on_book0
          +      0.2243250930591 * G_Months_on_book1
          +    -0.11056308897977 * G_Months_on_book2
          +    -0.15048506159816 * G_Months_on_book3
          +     0.13551602695166 * G_Months_on_book4
          +    -0.03634861697084 * G_Months_on_book5
          +    -0.10115085137455 * G_Months_on_book6
          +     0.01186110278156 * G_Months_on_book7
          +     0.24274817241644 * G_Total_Relationship_Count0
          +    -0.13938587638671 * G_Total_Relationship_Count1
          +     -0.4568012163637 * G_Total_Trans_Ct0
          +     0.11453756249162 * G_Total_Trans_Ct1
          +    -0.18705242199211 * G_Total_Trans_Ct2
          +     0.06306346961671 * G_Total_Trans_Ct3
          +     0.03156607460756 * G_Total_Trans_Ct4
          +     0.18426538636433 * G_Total_Trans_Ct5
          +     0.08517404892059 * G_Total_Trans_Ct6 ;
   H1x1_1  =     3.11084627114856 + H1x1_1 ;
   H1x1_2  =    -0.13786360627228 + H1x1_2 ;
   H1x1_3  =    -1.30741877178117 + H1x1_3 ;
   H1x1_4  =     0.60615486532781 + H1x1_4 ;
   DROP _EXP_BAR;
   _EXP_BAR=50;
   H1x1_1  = EXP(MIN(-0.5 * H1x1_1 **2, _EXP_BAR));
   H1x1_2  = EXP(MIN(-0.5 * H1x1_2 **2, _EXP_BAR));
   H1x1_3  = EXP(MIN(-0.5 * H1x1_3 **2, _EXP_BAR));
   H1x1_4  = EXP(MIN(-0.5 * H1x1_4 **2, _EXP_BAR));
END;
ELSE DO;
   H1x1_1  = .;
   H1x1_2  = .;
   H1x1_3  = .;
   H1x1_4  = .;
END;
*** *************************;
*** Writing the Node H1x2_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H1x2_1  =     -0.2581006263001 * S_RANGE_LOG_Total_Trans_Amt
          +     0.12006876356471 * S_RANGE_SQRT_Avg_Utilization_Rat
          +      1.1404790175611 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.96133469780586 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.91640508312451 * S_RANGE_Total_Revolving_Bal ;
   H1x2_2  =     0.32760112393036 * S_RANGE_LOG_Total_Trans_Amt
          +     0.46824281578809 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     1.43310723142642 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.40958179570395 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +      1.3164000777224 * S_RANGE_Total_Revolving_Bal ;
   H1x2_3  =    -1.00536605528806 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.10342494786674 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     1.44340900361892 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     1.38542873266926 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.44697246284211 * S_RANGE_Total_Revolving_Bal ;
   H1x2_4  =    -0.90072474214915 * S_RANGE_LOG_Total_Trans_Amt
          +     0.03011652041958 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.58315757382061 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.03907722815198 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.64603914998753 * S_RANGE_Total_Revolving_Bal ;
   H1x2_1  = H1x2_1  +     -0.3537873805225 * G_Contacts_Count_12_mon0
          +     0.07477792511467 * G_Contacts_Count_12_mon1
          +    -0.28167905042549 * G_Contacts_Count_12_mon2
          +    -0.19693115915662 * G_Contacts_Count_12_mon3
          +    -0.34304761656973 * G_Customer_Age0  +    -0.46725152840757 *
        G_Customer_Age1  +     2.24198071722413 * G_Customer_Age2
          +    -0.87681404628575 * G_Customer_Age3  +     0.42725301924125 *
        G_Customer_Age4  +     2.13471139838899 * G_Customer_Age5
          +    -0.05005788220812 * G_Customer_Age6  +    -2.12385155321087 *
        G_Customer_Age7  +    -0.75330226644794 * G_Customer_Age8
          +    -1.05782705827461 * G_Customer_Age9  +    -0.98636186533426 *
        G_Months_Inactive_12_mon0  +     0.12040656192743 *
        G_Months_Inactive_12_mon1  +     1.52727338373081 *
        G_Months_Inactive_12_mon2  +     -0.1855958224522 *
        G_Months_Inactive_12_mon3  +     0.28764590871655 * G_Months_on_book0
          +     -1.5845256029436 * G_Months_on_book1
          +     0.94841545158978 * G_Months_on_book2
          +    -0.30378509352428 * G_Months_on_book3
          +     0.57879876360233 * G_Months_on_book4
          +    -0.44808206059742 * G_Months_on_book5
          +    -0.57665342653275 * G_Months_on_book6
          +     1.09153388307921 * G_Months_on_book7
          +     0.22887886957167 * G_Total_Relationship_Count0
          +    -0.54265619819609 * G_Total_Relationship_Count1
          +    -1.13539482087129 * G_Total_Trans_Ct0
          +     0.64952917668612 * G_Total_Trans_Ct1
          +    -0.34216929427288 * G_Total_Trans_Ct2
          +    -1.79869829319011 * G_Total_Trans_Ct3
          +    -1.50676899684692 * G_Total_Trans_Ct4
          +     0.14342717824779 * G_Total_Trans_Ct5
          +     0.63107131448106 * G_Total_Trans_Ct6 ;
   H1x2_2  = H1x2_2  +    -0.18474267190111 * G_Contacts_Count_12_mon0
          +     0.36733802877723 * G_Contacts_Count_12_mon1
          +     0.69204266655633 * G_Contacts_Count_12_mon2
          +     1.30887436517942 * G_Contacts_Count_12_mon3
          +     0.86224546288081 * G_Customer_Age0  +     0.10999282337407 *
        G_Customer_Age1  +    -0.25465640031658 * G_Customer_Age2
          +     0.40388045235117 * G_Customer_Age3  +     0.35554815856551 *
        G_Customer_Age4  +    -0.69399543552412 * G_Customer_Age5
          +     0.42060953919233 * G_Customer_Age6  +    -0.67288355460542 *
        G_Customer_Age7  +     0.35146196825004 * G_Customer_Age8
          +     0.25188182906828 * G_Customer_Age9  +    -0.03873019788008 *
        G_Months_Inactive_12_mon0  +     -1.5012934359071 *
        G_Months_Inactive_12_mon1  +    -0.87047688522533 *
        G_Months_Inactive_12_mon2  +     1.57363160279966 *
        G_Months_Inactive_12_mon3  +      0.6818994643096 * G_Months_on_book0
          +     0.28787336315454 * G_Months_on_book1
          +     0.92367747814966 * G_Months_on_book2
          +    -0.26327876582332 * G_Months_on_book3
          +    -0.38301700211628 * G_Months_on_book4
          +     1.24315171762149 * G_Months_on_book5
          +    -1.07515328850488 * G_Months_on_book6
          +     0.47591419302856 * G_Months_on_book7
          +     1.01937429644864 * G_Total_Relationship_Count0
          +    -0.67763700286346 * G_Total_Relationship_Count1
          +     0.55751948887685 * G_Total_Trans_Ct0
          +     -0.3002406862302 * G_Total_Trans_Ct1
          +     0.31589680484714 * G_Total_Trans_Ct2
          +     0.32049147150341 * G_Total_Trans_Ct3
          +    -1.75894280504326 * G_Total_Trans_Ct4
          +     0.16966688099194 * G_Total_Trans_Ct5
          +     0.48546429279414 * G_Total_Trans_Ct6 ;
   H1x2_3  = H1x2_3  +     0.69984935178511 * G_Contacts_Count_12_mon0
          +     0.13103901535921 * G_Contacts_Count_12_mon1
          +    -0.01762709328487 * G_Contacts_Count_12_mon2
          +    -1.15497687764266 * G_Contacts_Count_12_mon3
          +    -1.10006699661393 * G_Customer_Age0  +     0.65652026066499 *
        G_Customer_Age1  +     -0.8581541937634 * G_Customer_Age2
          +    -0.91067804245799 * G_Customer_Age3  +    -1.23160305259863 *
        G_Customer_Age4  +    -0.58640745310034 * G_Customer_Age5
          +     0.90680970223164 * G_Customer_Age6  +      0.2152935726014 *
        G_Customer_Age7  +    -0.03539785707189 * G_Customer_Age8
          +    -0.99890127791555 * G_Customer_Age9  +     0.91564829265726 *
        G_Months_Inactive_12_mon0  +     0.11946028739196 *
        G_Months_Inactive_12_mon1  +     0.92230370230222 *
        G_Months_Inactive_12_mon2  +     2.98416825885037 *
        G_Months_Inactive_12_mon3  +    -0.89384804565009 * G_Months_on_book0
          +     0.37562991672437 * G_Months_on_book1
          +     0.71667587695388 * G_Months_on_book2
          +     0.79773631439687 * G_Months_on_book3
          +     0.49662345982069 * G_Months_on_book4
          +      0.8064846235039 * G_Months_on_book5
          +    -0.60952835862537 * G_Months_on_book6
          +     0.40970343833394 * G_Months_on_book7
          +     0.66557939694062 * G_Total_Relationship_Count0
          +    -0.59210163743477 * G_Total_Relationship_Count1
          +    -0.68402189870728 * G_Total_Trans_Ct0
          +    -0.27971219593667 * G_Total_Trans_Ct1
          +     1.00650527648868 * G_Total_Trans_Ct2
          +     0.65088436703831 * G_Total_Trans_Ct3
          +     1.48412878820107 * G_Total_Trans_Ct4
          +     0.49696680637994 * G_Total_Trans_Ct5
          +    -0.89973718689454 * G_Total_Trans_Ct6 ;
   H1x2_4  = H1x2_4  +     0.67239568148661 * G_Contacts_Count_12_mon0
          +     0.43590505593461 * G_Contacts_Count_12_mon1
          +    -0.57680428077243 * G_Contacts_Count_12_mon2
          +    -1.07156753006439 * G_Contacts_Count_12_mon3
          +     1.30871954480319 * G_Customer_Age0  +      0.7091845534829 *
        G_Customer_Age1  +    -0.39086060612644 * G_Customer_Age2
          +    -0.58035825833415 * G_Customer_Age3  +    -0.91085903241675 *
        G_Customer_Age4  +    -0.93142568687556 * G_Customer_Age5
          +     1.15195551912897 * G_Customer_Age6  +     0.19779144939608 *
        G_Customer_Age7  +     2.19525024572941 * G_Customer_Age8
          +    -0.15980715635667 * G_Customer_Age9  +    -0.63371191261618 *
        G_Months_Inactive_12_mon0  +     -1.0282069388423 *
        G_Months_Inactive_12_mon1  +    -0.49774228332993 *
        G_Months_Inactive_12_mon2  +    -0.33482971813924 *
        G_Months_Inactive_12_mon3  +     -1.0075464113615 * G_Months_on_book0
          +     2.20098270809975 * G_Months_on_book1
          +      1.4109924298915 * G_Months_on_book2
          +     1.46875830943692 * G_Months_on_book3
          +     1.49386222281732 * G_Months_on_book4
          +    -0.12261428795835 * G_Months_on_book5
          +    -0.20373198151057 * G_Months_on_book6
          +     0.72839778999533 * G_Months_on_book7
          +    -0.14266301864248 * G_Total_Relationship_Count0
          +    -2.37333664591833 * G_Total_Relationship_Count1
          +     0.37246835651691 * G_Total_Trans_Ct0
          +    -0.83666535209139 * G_Total_Trans_Ct1
          +      1.2353183242587 * G_Total_Trans_Ct2
          +    -0.91541586937801 * G_Total_Trans_Ct3
          +    -0.17722336967073 * G_Total_Trans_Ct4
          +      0.5365400553571 * G_Total_Trans_Ct5
          +    -1.87524637051104 * G_Total_Trans_Ct6 ;
   H1x2_1  =     1.29157820497137 + H1x2_1 ;
   H1x2_2  =     0.75917422622105 + H1x2_2 ;
   H1x2_3  =     0.89275325762564 + H1x2_3 ;
   H1x2_4  =     1.54406022305437 + H1x2_4 ;
   H1x2_1  = TANH(H1x2_1 );
   H1x2_2  = TANH(H1x2_2 );
   H1x2_3  = TANH(H1x2_3 );
   H1x2_4  = TANH(H1x2_4 );
END;
ELSE DO;
   H1x2_1  = .;
   H1x2_2  = .;
   H1x2_3  = .;
   H1x2_4  = .;
END;
*** *************************;
*** Writing the Node H1x3_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H1x3_1  =     1.13084088079396 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.38954697544819 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.24204034674703 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.13235076507373 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -1.62852049624291 * S_RANGE_Total_Revolving_Bal ;
   H1x3_2  =    -0.94573504754712 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.33576815169587 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.02640073761213 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.94011804879957 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     -1.6640379578121 * S_RANGE_Total_Revolving_Bal ;
   H1x3_3  =    -0.51635630083121 * S_RANGE_LOG_Total_Trans_Amt
          +     0.82242306146428 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.39999296036682 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -1.14834567589507 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.27361544177914 * S_RANGE_Total_Revolving_Bal ;
   H1x3_4  =    -0.44536252224928 * S_RANGE_LOG_Total_Trans_Amt
          +     0.74136046969884 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.04921586253049 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +       0.934042993952 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.53474680963667 * S_RANGE_Total_Revolving_Bal ;
   H1x3_1  = H1x3_1  +    -1.27428321355823 * G_Contacts_Count_12_mon0
          +     0.41489549525603 * G_Contacts_Count_12_mon1
          +    -1.09952645692752 * G_Contacts_Count_12_mon2
          +     0.09498788506247 * G_Contacts_Count_12_mon3
          +      1.5443195469247 * G_Customer_Age0  +    -0.65913899931598 *
        G_Customer_Age1  +     0.99570313262195 * G_Customer_Age2
          +     0.24227225360678 * G_Customer_Age3  +     -0.0543539332549 *
        G_Customer_Age4  +    -1.47447003373472 * G_Customer_Age5
          +    -0.07873490684223 * G_Customer_Age6  +     1.52156067076004 *
        G_Customer_Age7  +     0.50692059754633 * G_Customer_Age8
          +     0.75083662340479 * G_Customer_Age9  +    -1.92408640004218 *
        G_Months_Inactive_12_mon0  +     1.07978500693829 *
        G_Months_Inactive_12_mon1  +    -1.14448434740059 *
        G_Months_Inactive_12_mon2  +     0.02034393888008 *
        G_Months_Inactive_12_mon3  +    -0.12948302667989 * G_Months_on_book0
          +    -1.53842970297536 * G_Months_on_book1
          +     0.53614831482536 * G_Months_on_book2
          +    -0.15816597358609 * G_Months_on_book3
          +    -0.33245618118365 * G_Months_on_book4
          +    -0.29663140808456 * G_Months_on_book5
          +    -0.00758217486873 * G_Months_on_book6
          +     0.12419076440469 * G_Months_on_book7
          +    -1.01747790658773 * G_Total_Relationship_Count0
          +    -0.71542135425392 * G_Total_Relationship_Count1
          +    -0.70239928960003 * G_Total_Trans_Ct0
          +    -0.81846246232982 * G_Total_Trans_Ct1
          +     0.22213801162064 * G_Total_Trans_Ct2
          +     1.49659132871541 * G_Total_Trans_Ct3
          +    -1.84825592672867 * G_Total_Trans_Ct4
          +    -0.01774390936477 * G_Total_Trans_Ct5
          +    -0.89631673292445 * G_Total_Trans_Ct6 ;
   H1x3_2  = H1x3_2  +     0.66131666795454 * G_Contacts_Count_12_mon0
          +     1.02504225494686 * G_Contacts_Count_12_mon1
          +    -1.27284116096709 * G_Contacts_Count_12_mon2
          +     0.50311782547036 * G_Contacts_Count_12_mon3
          +      0.1947911451373 * G_Customer_Age0  +    -0.21872110584429 *
        G_Customer_Age1  +     0.81281940573409 * G_Customer_Age2
          +     0.98572778331178 * G_Customer_Age3  +    -0.62565509381089 *
        G_Customer_Age4  +     0.55023166233981 * G_Customer_Age5
          +     1.34365161959314 * G_Customer_Age6  +    -0.12094849155565 *
        G_Customer_Age7  +     -0.5332150801771 * G_Customer_Age8
          +    -1.70601662969538 * G_Customer_Age9  +     0.14014229811684 *
        G_Months_Inactive_12_mon0  +    -0.37263436854452 *
        G_Months_Inactive_12_mon1  +    -0.73447498317861 *
        G_Months_Inactive_12_mon2  +     0.15136075795014 *
        G_Months_Inactive_12_mon3  +     0.52881240236318 * G_Months_on_book0
          +     0.68210021878386 * G_Months_on_book1
          +    -2.56134058813408 * G_Months_on_book2
          +     0.87915330473164 * G_Months_on_book3
          +    -0.29086176252066 * G_Months_on_book4
          +    -1.08597957841787 * G_Months_on_book5
          +    -1.74390725211821 * G_Months_on_book6
          +     0.64181727174843 * G_Months_on_book7
          +     0.96687000912064 * G_Total_Relationship_Count0
          +     0.21804161273929 * G_Total_Relationship_Count1
          +     0.39919361830469 * G_Total_Trans_Ct0
          +    -1.25634364766178 * G_Total_Trans_Ct1
          +     -1.0487429091444 * G_Total_Trans_Ct2
          +      1.2420394028442 * G_Total_Trans_Ct3
          +     0.53891547465768 * G_Total_Trans_Ct4
          +     0.64651173974012 * G_Total_Trans_Ct5
          +    -0.13027737575238 * G_Total_Trans_Ct6 ;
   H1x3_3  = H1x3_3  +     -0.2324644915574 * G_Contacts_Count_12_mon0
          +    -1.60848523642043 * G_Contacts_Count_12_mon1
          +    -0.59258535711076 * G_Contacts_Count_12_mon2
          +    -2.32664051854657 * G_Contacts_Count_12_mon3
          +     0.73829141809862 * G_Customer_Age0  +     1.46534936827942 *
        G_Customer_Age1  +    -0.57712742507316 * G_Customer_Age2
          +     1.19809184441668 * G_Customer_Age3  +     -0.8719402382276 *
        G_Customer_Age4  +     0.90932498822042 * G_Customer_Age5
          +    -0.46683404000124 * G_Customer_Age6  +    -0.59386805760815 *
        G_Customer_Age7  +      0.3795607095213 * G_Customer_Age8
          +     1.49527277340367 * G_Customer_Age9  +     0.30524225576767 *
        G_Months_Inactive_12_mon0  +     0.75411632114763 *
        G_Months_Inactive_12_mon1  +     -0.3027577937235 *
        G_Months_Inactive_12_mon2  +     0.57080509180235 *
        G_Months_Inactive_12_mon3  +     0.74579874604773 * G_Months_on_book0
          +    -0.71788213499858 * G_Months_on_book1
          +    -1.10451387672095 * G_Months_on_book2
          +     0.18772937669415 * G_Months_on_book3
          +     0.85696867983031 * G_Months_on_book4
          +     2.52712226400463 * G_Months_on_book5
          +      0.5607143009451 * G_Months_on_book6
          +     0.60850443681802 * G_Months_on_book7
          +     0.39285778882347 * G_Total_Relationship_Count0
          +     0.84208235545314 * G_Total_Relationship_Count1
          +    -0.39235576452942 * G_Total_Trans_Ct0
          +    -0.05561467591416 * G_Total_Trans_Ct1
          +    -0.38668296669305 * G_Total_Trans_Ct2
          +      -0.789647120377 * G_Total_Trans_Ct3
          +    -1.50625642409427 * G_Total_Trans_Ct4
          +     1.27716813049832 * G_Total_Trans_Ct5
          +    -1.03325035602156 * G_Total_Trans_Ct6 ;
   H1x3_4  = H1x3_4  +     0.09980091149286 * G_Contacts_Count_12_mon0
          +    -2.15331731237627 * G_Contacts_Count_12_mon1
          +     0.96068195237237 * G_Contacts_Count_12_mon2
          +     0.38306528599607 * G_Contacts_Count_12_mon3
          +     0.92296383215207 * G_Customer_Age0  +    -0.03384151076313 *
        G_Customer_Age1  +    -0.16226196800227 * G_Customer_Age2
          +     0.34556093314143 * G_Customer_Age3  +    -0.43996773963698 *
        G_Customer_Age4  +     0.47210844090462 * G_Customer_Age5
          +     0.01410454847042 * G_Customer_Age6  +    -0.39161890757803 *
        G_Customer_Age7  +    -1.43940785509815 * G_Customer_Age8
          +     0.11438923048505 * G_Customer_Age9  +     0.61359204921089 *
        G_Months_Inactive_12_mon0  +     1.23220273673165 *
        G_Months_Inactive_12_mon1  +     0.93030807803075 *
        G_Months_Inactive_12_mon2  +     0.87517872844008 *
        G_Months_Inactive_12_mon3  +     0.90286224533426 * G_Months_on_book0
          +    -0.36248650845023 * G_Months_on_book1
          +     0.11650471602933 * G_Months_on_book2
          +     0.31135056404007 * G_Months_on_book3
          +     0.82539345392541 * G_Months_on_book4
          +     0.03631128451603 * G_Months_on_book5
          +    -0.05499106511943 * G_Months_on_book6
          +    -0.29426626327751 * G_Months_on_book7
          +      0.7865715838774 * G_Total_Relationship_Count0
          +     0.06196872880001 * G_Total_Relationship_Count1
          +     0.40273495179086 * G_Total_Trans_Ct0
          +     0.74160881967744 * G_Total_Trans_Ct1
          +     0.46361763353918 * G_Total_Trans_Ct2
          +     0.83375101412198 * G_Total_Trans_Ct3
          +     0.50225743468791 * G_Total_Trans_Ct4
          +    -1.40160994929419 * G_Total_Trans_Ct5
          +     0.67933124300951 * G_Total_Trans_Ct6 ;
   H1x3_1  =    -0.98304390120732 + H1x3_1 ;
   H1x3_2  =     0.47591859391307 + H1x3_2 ;
   H1x3_3  =     1.26310068011832 + H1x3_3 ;
   H1x3_4  =     0.18114865679003 + H1x3_4 ;
   H1x3_1  = TANH(H1x3_1 );
   H1x3_2  = TANH(H1x3_2 );
   H1x3_3  = TANH(H1x3_3 );
   H1x3_4  = TANH(H1x3_4 );
END;
ELSE DO;
   H1x3_1  = .;
   H1x3_2  = .;
   H1x3_3  = .;
   H1x3_4  = .;
END;
*** *************************;
*** Writing the Node H1x4_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H1x4_1  =     0.65708867089903 * S_RANGE_LOG_Total_Trans_Amt
          +     0.22272242706972 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.84352556560872 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.64190933932826 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     -0.5663830577851 * S_RANGE_Total_Revolving_Bal ;
   H1x4_2  =     1.02862178738356 * S_RANGE_LOG_Total_Trans_Amt
          +     0.63383701666538 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -2.08236345199555 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.16684340970202 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.63850574827755 * S_RANGE_Total_Revolving_Bal ;
   H1x4_3  =    -1.53358564198769 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.60435184790837 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.26908075190277 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -1.45082719208028 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.59188629576087 * S_RANGE_Total_Revolving_Bal ;
   H1x4_4  =    -1.29274287828996 * S_RANGE_LOG_Total_Trans_Amt
          +      -0.628889247994 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.77954314684435 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.73424700609801 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -1.29756182640121 * S_RANGE_Total_Revolving_Bal ;
   H1x4_1  = H1x4_1  +    -0.75633510589907 * G_Contacts_Count_12_mon0
          +     0.03997638537824 * G_Contacts_Count_12_mon1
          +       1.165791333537 * G_Contacts_Count_12_mon2
          +    -1.72743325066439 * G_Contacts_Count_12_mon3
          +     1.10440126625186 * G_Customer_Age0  +    -0.30810945802995 *
        G_Customer_Age1  +     0.08475342036471 * G_Customer_Age2
          +     0.01203467402204 * G_Customer_Age3  +     0.39514992225989 *
        G_Customer_Age4  +    -0.61241269410419 * G_Customer_Age5
          +     0.49217961302594 * G_Customer_Age6  +     -0.5734194466293 *
        G_Customer_Age7  +    -0.84900371812336 * G_Customer_Age8
          +    -0.26409058499674 * G_Customer_Age9  +     0.60097853639482 *
        G_Months_Inactive_12_mon0  +     0.92304386359911 *
        G_Months_Inactive_12_mon1  +     1.10653476556531 *
        G_Months_Inactive_12_mon2  +     0.01755194869563 *
        G_Months_Inactive_12_mon3  +    -0.15211463515244 * G_Months_on_book0
          +    -0.14826713952292 * G_Months_on_book1
          +    -2.02664277651433 * G_Months_on_book2
          +     0.29936811957073 * G_Months_on_book3
          +    -0.18171893360995 * G_Months_on_book4
          +    -0.07824168140948 * G_Months_on_book5
          +     0.34498609233117 * G_Months_on_book6
          +     -1.1685957168618 * G_Months_on_book7
          +    -0.80019432574645 * G_Total_Relationship_Count0
          +    -1.21312777251961 * G_Total_Relationship_Count1
          +    -0.06485747076544 * G_Total_Trans_Ct0
          +      0.5760391196457 * G_Total_Trans_Ct1
          +     0.07499935877366 * G_Total_Trans_Ct2
          +      2.1062957170475 * G_Total_Trans_Ct3
          +    -0.35728436728438 * G_Total_Trans_Ct4
          +     0.86830479455674 * G_Total_Trans_Ct5
          +     1.10231044593498 * G_Total_Trans_Ct6 ;
   H1x4_2  = H1x4_2  +     0.73875692361182 * G_Contacts_Count_12_mon0
          +    -0.26752143466005 * G_Contacts_Count_12_mon1
          +     -1.3672247325239 * G_Contacts_Count_12_mon2
          +    -0.59609758963756 * G_Contacts_Count_12_mon3
          +     -1.0898169564474 * G_Customer_Age0  +    -0.32134473851788 *
        G_Customer_Age1  +     0.67670649773704 * G_Customer_Age2
          +    -1.85536696327681 * G_Customer_Age3  +    -0.00689201851693 *
        G_Customer_Age4  +     0.40497781615878 * G_Customer_Age5
          +     1.24258097379011 * G_Customer_Age6  +    -0.82712631381966 *
        G_Customer_Age7  +    -1.15748060073916 * G_Customer_Age8
          +    -1.92893255541519 * G_Customer_Age9  +     0.57566043988899 *
        G_Months_Inactive_12_mon0  +     2.62071134736885 *
        G_Months_Inactive_12_mon1  +    -0.09922243555974 *
        G_Months_Inactive_12_mon2  +     1.12275214230429 *
        G_Months_Inactive_12_mon3  +    -1.13929456704805 * G_Months_on_book0
          +    -1.92962673790331 * G_Months_on_book1
          +     -0.5001365760315 * G_Months_on_book2
          +     0.12895804660304 * G_Months_on_book3
          +    -1.22161821328272 * G_Months_on_book4
          +    -0.72948979921041 * G_Months_on_book5
          +    -0.59316120591228 * G_Months_on_book6
          +     0.00448377241466 * G_Months_on_book7
          +    -0.30851994409593 * G_Total_Relationship_Count0
          +      0.5219449695861 * G_Total_Relationship_Count1
          +    -0.00792960779076 * G_Total_Trans_Ct0
          +     0.25867769736336 * G_Total_Trans_Ct1
          +    -0.04078713979158 * G_Total_Trans_Ct2
          +    -1.31342178481771 * G_Total_Trans_Ct3
          +    -0.96882630983366 * G_Total_Trans_Ct4
          +    -0.41958399840688 * G_Total_Trans_Ct5
          +     0.00608793601651 * G_Total_Trans_Ct6 ;
   H1x4_3  = H1x4_3  +    -0.41562519868532 * G_Contacts_Count_12_mon0
          +    -1.27630738184844 * G_Contacts_Count_12_mon1
          +     0.05761946783265 * G_Contacts_Count_12_mon2
          +    -0.74625979513305 * G_Contacts_Count_12_mon3
          +    -0.74902348407969 * G_Customer_Age0  +     1.12597080735609 *
        G_Customer_Age1  +      0.8183975081356 * G_Customer_Age2
          +      -0.557229959967 * G_Customer_Age3  +     1.19832043046583 *
        G_Customer_Age4  +    -2.44477863032191 * G_Customer_Age5
          +     1.73535590364291 * G_Customer_Age6  +     0.29706045610367 *
        G_Customer_Age7  +      0.0903283054545 * G_Customer_Age8
          +     1.07087868763827 * G_Customer_Age9  +    -0.44250979218172 *
        G_Months_Inactive_12_mon0  +    -0.89913846087329 *
        G_Months_Inactive_12_mon1  +     1.18231359199729 *
        G_Months_Inactive_12_mon2  +    -0.64793206702446 *
        G_Months_Inactive_12_mon3  +     1.36924339250622 * G_Months_on_book0
          +    -0.80633476433184 * G_Months_on_book1
          +     0.55711393556624 * G_Months_on_book2
          +     0.21860550095012 * G_Months_on_book3
          +    -0.54506618951602 * G_Months_on_book4
          +     0.24594533264519 * G_Months_on_book5
          +    -1.05163290973848 * G_Months_on_book6
          +    -0.45121018906501 * G_Months_on_book7
          +     0.20042967424433 * G_Total_Relationship_Count0
          +    -0.87795559151166 * G_Total_Relationship_Count1
          +     2.41641251951379 * G_Total_Trans_Ct0
          +    -0.48444981101786 * G_Total_Trans_Ct1
          +     -0.1617561743337 * G_Total_Trans_Ct2
          +     0.68835810501706 * G_Total_Trans_Ct3
          +     0.16433805530517 * G_Total_Trans_Ct4
          +     1.41432248953721 * G_Total_Trans_Ct5
          +     2.25796916197203 * G_Total_Trans_Ct6 ;
   H1x4_4  = H1x4_4  +    -1.36855937128451 * G_Contacts_Count_12_mon0
          +     0.33394300931269 * G_Contacts_Count_12_mon1
          +     0.62349540823725 * G_Contacts_Count_12_mon2
          +    -0.68819065600569 * G_Contacts_Count_12_mon3
          +    -0.59095795635179 * G_Customer_Age0  +     0.51879007730211 *
        G_Customer_Age1  +    -1.99060744147082 * G_Customer_Age2
          +     1.33495513032367 * G_Customer_Age3  +     0.70861109497564 *
        G_Customer_Age4  +     0.26470832745119 * G_Customer_Age5
          +    -0.58575453668049 * G_Customer_Age6  +     0.75646091027786 *
        G_Customer_Age7  +    -2.27510896109174 * G_Customer_Age8
          +    -0.72695507302152 * G_Customer_Age9  +    -0.27444888054856 *
        G_Months_Inactive_12_mon0  +    -1.19650472475167 *
        G_Months_Inactive_12_mon1  +     1.93094126738679 *
        G_Months_Inactive_12_mon2  +    -0.94352510694575 *
        G_Months_Inactive_12_mon3  +    -1.77041429881443 * G_Months_on_book0
          +     0.39438331105953 * G_Months_on_book1
          +     0.01243536425032 * G_Months_on_book2
          +     0.59708052941927 * G_Months_on_book3
          +    -0.45364405008281 * G_Months_on_book4
          +    -0.28001198462631 * G_Months_on_book5
          +     0.84071274705485 * G_Months_on_book6
          +     0.97039790935636 * G_Months_on_book7
          +     2.02909452281618 * G_Total_Relationship_Count0
          +      0.5395027948462 * G_Total_Relationship_Count1
          +    -0.12342524480721 * G_Total_Trans_Ct0
          +     0.32258254807632 * G_Total_Trans_Ct1
          +     -1.3416841294613 * G_Total_Trans_Ct2
          +    -1.18008558363309 * G_Total_Trans_Ct3
          +     1.10045386544876 * G_Total_Trans_Ct4
          +    -0.39712480128734 * G_Total_Trans_Ct5
          +    -0.51225099390847 * G_Total_Trans_Ct6 ;
   H1x4_1  =     1.78178520602122 + H1x4_1 ;
   H1x4_2  =    -0.00672526405425 + H1x4_2 ;
   H1x4_3  =    -0.89087274226511 + H1x4_3 ;
   H1x4_4  =     0.31716226956545 + H1x4_4 ;
   H1x4_1  = SIN(H1x4_1 );
   H1x4_2  = SIN(H1x4_2 );
   H1x4_3  = SIN(H1x4_3 );
   H1x4_4  = SIN(H1x4_4 );
END;
ELSE DO;
   H1x4_1  = .;
   H1x4_2  = .;
   H1x4_3  = .;
   H1x4_4  = .;
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
   P_Attrition_Flag1  =    -5.49153056758788 * H1x1_1
          +     3.20346883166002 * H1x1_2  +     6.99573280665086 * H1x1_3
          +    -3.83847241666021 * H1x1_4 ;
   P_Attrition_Flag1  = P_Attrition_Flag1  +    -0.32891477888176 * H1x2_1
          +    -0.12333534404228 * H1x2_2  +     0.75228639111581 * H1x2_3
          +     0.23426665944046 * H1x2_4 ;
   P_Attrition_Flag1  = P_Attrition_Flag1  +    -0.07513334910806 * H1x3_1
          +     0.14161762541097 * H1x3_2  +    -0.17036892653133 * H1x3_3
          +     0.32153474749238 * H1x3_4 ;
   P_Attrition_Flag1  = P_Attrition_Flag1  +     0.14036941237492 * H1x4_1
          +     0.09594804238606 * H1x4_2  +    -0.14976010454528 * H1x4_3
          +     -0.2371356109816 * H1x4_4 ;
   P_Attrition_Flag1  =    -2.13743579815208 + P_Attrition_Flag1 ;
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
H1x1_3
H1x1_4
H1x2_1
H1x2_2
H1x2_3
H1x2_4
H1x3_1
H1x3_2
H1x3_3
H1x3_4
H1x4_1
H1x4_2
H1x4_3
H1x4_4
;
