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

      label H1x1_5 = 'Hidden: H1x1_=5' ;

      label H1x1_6 = 'Hidden: H1x1_=6' ;

      label H1x1_7 = 'Hidden: H1x1_=7' ;

      label H1x1_8 = 'Hidden: H1x1_=8' ;

      label H2x1_1 = 'Hidden: H2x1_=1' ;

      label H2x1_2 = 'Hidden: H2x1_=2' ;

      label H2x1_3 = 'Hidden: H2x1_=3' ;

      label H2x1_4 = 'Hidden: H2x1_=4' ;

      label H2x1_5 = 'Hidden: H2x1_=5' ;

      label H2x1_6 = 'Hidden: H2x1_=6' ;

      label H2x1_7 = 'Hidden: H2x1_=7' ;

      label H2x1_8 = 'Hidden: H2x1_=8' ;

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
   H1x1_1  =     1.44473759114969 * S_RANGE_LOG_Total_Trans_Amt
          +     0.47469974135661 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.17678823515738 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.08782898438529 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.10170689517149 * S_RANGE_Total_Revolving_Bal ;
   H1x1_2  =     0.36929693742029 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.01537901404435 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     -0.1616364096451 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.37499771317328 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.08835331999141 * S_RANGE_Total_Revolving_Bal ;
   H1x1_3  =    -0.65329413311593 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.00989031057679 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.09776476847062 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.21803849346102 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.04657341403647 * S_RANGE_Total_Revolving_Bal ;
   H1x1_4  =     0.04977727115697 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.10521857706601 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.03861353473435 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.09694035600906 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +      0.9203372027378 * S_RANGE_Total_Revolving_Bal ;
   H1x1_5  =    -1.59771632812293 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.02987802593845 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.10595296726603 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.27930848833776 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     0.04184764543759 * S_RANGE_Total_Revolving_Bal ;
   H1x1_6  =    -2.22002826316663 * S_RANGE_LOG_Total_Trans_Amt
          +     0.21449118089117 * S_RANGE_SQRT_Avg_Utilization_Rat
          +    -0.32833690690622 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     -0.2609169087665 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.09335223376937 * S_RANGE_Total_Revolving_Bal ;
   H1x1_7  =     0.72365350252617 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.12419914430011 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.33890432072219 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +     0.17595883654803 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +    -0.06385044401415 * S_RANGE_Total_Revolving_Bal ;
   H1x1_8  =    -0.49450992077366 * S_RANGE_LOG_Total_Trans_Amt
          +    -0.05101251026586 * S_RANGE_SQRT_Avg_Utilization_Rat
          +     0.04194737766537 * S_RANGE_SQRT_Total_Amt_Chng_Q4_Q
          +    -0.07281283622008 * S_RANGE_SQRT_Total_Ct_Chng_Q4_Q1
          +     -0.2334475719234 * S_RANGE_Total_Revolving_Bal ;
   H1x1_1  = H1x1_1  +      0.1401700161345 * G_Contacts_Count_12_mon0
          +     0.16853078942958 * G_Contacts_Count_12_mon1
          +     0.01393498187406 * G_Contacts_Count_12_mon2
          +    -0.06426539048063 * G_Contacts_Count_12_mon3
          +     0.16424725078514 * G_Customer_Age0  +     0.00806065325306 *
        G_Customer_Age1  +     0.58854449762957 * G_Customer_Age2
          +    -0.04304863480935 * G_Customer_Age3  +    -0.09153885425916 *
        G_Customer_Age4  +    -0.03009001489594 * G_Customer_Age5
          +    -0.01277382132587 * G_Customer_Age6  +    -0.05120552017464 *
        G_Customer_Age7  +    -0.19484100703007 * G_Customer_Age8
          +     0.36400231982018 * G_Customer_Age9  +      0.2128372684892 *
        G_Months_Inactive_12_mon0  +     0.08881972076719 *
        G_Months_Inactive_12_mon1  +     0.01871007502673 *
        G_Months_Inactive_12_mon2  +      0.1377784670933 *
        G_Months_Inactive_12_mon3  +      -0.187522328146 * G_Months_on_book0
          +     0.10828753003058 * G_Months_on_book1
          +    -0.01639538197714 * G_Months_on_book2
          +    -0.09230711881682 * G_Months_on_book3
          +     0.14260542762716 * G_Months_on_book4
          +     0.34699450273742 * G_Months_on_book5
          +     0.36459716975736 * G_Months_on_book6
          +     0.02278453878232 * G_Months_on_book7
          +     0.51803242503762 * G_Total_Relationship_Count0
          +     0.06899136153159 * G_Total_Relationship_Count1
          +     0.68336451142155 * G_Total_Trans_Ct0
          +     0.06265331654524 * G_Total_Trans_Ct1
          +     0.15673138151852 * G_Total_Trans_Ct2
          +    -0.26306701715366 * G_Total_Trans_Ct3
          +     0.26998656463782 * G_Total_Trans_Ct4
          +    -0.12858111211938 * G_Total_Trans_Ct5
          +    -0.81643640957676 * G_Total_Trans_Ct6 ;
   H1x1_2  = H1x1_2  +     0.21444873800256 * G_Contacts_Count_12_mon0
          +     0.07842833493788 * G_Contacts_Count_12_mon1
          +    -0.27823122493985 * G_Contacts_Count_12_mon2
          +     0.01239271758814 * G_Contacts_Count_12_mon3
          +     0.20121751980973 * G_Customer_Age0  +     0.04172957843644 *
        G_Customer_Age1  +    -0.16008797816304 * G_Customer_Age2
          +     0.27840956839148 * G_Customer_Age3  +    -0.02289075036396 *
        G_Customer_Age4  +     0.33090235630478 * G_Customer_Age5
          +     0.08213248268936 * G_Customer_Age6  +     0.03126151274543 *
        G_Customer_Age7  +    -0.24954134832656 * G_Customer_Age8
          +    -0.34342240474159 * G_Customer_Age9  +     0.26688451751649 *
        G_Months_Inactive_12_mon0  +     -0.0849028829979 *
        G_Months_Inactive_12_mon1  +    -0.34906695553271 *
        G_Months_Inactive_12_mon2  +    -0.26802657223186 *
        G_Months_Inactive_12_mon3  +    -0.18828281305165 * G_Months_on_book0
          +     0.11689915130834 * G_Months_on_book1
          +     0.15571564774987 * G_Months_on_book2
          +     0.12417575218142 * G_Months_on_book3
          +    -0.20544107518855 * G_Months_on_book4
          +    -0.14961896181352 * G_Months_on_book5
          +     -0.2163634043033 * G_Months_on_book6
          +    -0.15920685944267 * G_Months_on_book7
          +     0.05721641813512 * G_Total_Relationship_Count0
          +     0.10738726316658 * G_Total_Relationship_Count1
          +     0.46770513165672 * G_Total_Trans_Ct0
          +    -0.49698932986798 * G_Total_Trans_Ct1
          +    -0.12245383948982 * G_Total_Trans_Ct2
          +    -0.55196286962318 * G_Total_Trans_Ct3
          +    -0.15095383414794 * G_Total_Trans_Ct4
          +    -0.28805837771929 * G_Total_Trans_Ct5
          +     0.07494905893528 * G_Total_Trans_Ct6 ;
   H1x1_3  = H1x1_3  +     0.07076997283851 * G_Contacts_Count_12_mon0
          +      0.4053112894421 * G_Contacts_Count_12_mon1
          +    -0.01193233191664 * G_Contacts_Count_12_mon2
          +     0.11019777907243 * G_Contacts_Count_12_mon3
          +     0.07706884296578 * G_Customer_Age0  +    -0.37152092198474 *
        G_Customer_Age1  +    -0.22828344167191 * G_Customer_Age2
          +    -0.05061057943019 * G_Customer_Age3  +    -0.11730355838374 *
        G_Customer_Age4  +    -0.16657836727629 * G_Customer_Age5
          +    -0.19930312229165 * G_Customer_Age6  +    -0.22497785692239 *
        G_Customer_Age7  +        0.02355586974 * G_Customer_Age8
          +      0.1209977427348 * G_Customer_Age9  +    -0.00246569984757 *
        G_Months_Inactive_12_mon0  +    -0.04282271630458 *
        G_Months_Inactive_12_mon1  +       0.192766910686 *
        G_Months_Inactive_12_mon2  +      0.0688797059827 *
        G_Months_Inactive_12_mon3  +    -0.07346516413568 * G_Months_on_book0
          +     0.29892632213851 * G_Months_on_book1
          +    -0.01256186499973 * G_Months_on_book2
          +    -0.15627292530888 * G_Months_on_book3
          +    -0.38203200145326 * G_Months_on_book4
          +     0.02609861849884 * G_Months_on_book5
          +    -0.10987207384174 * G_Months_on_book6
          +     0.13169504559396 * G_Months_on_book7
          +    -0.09494293869854 * G_Total_Relationship_Count0
          +     0.03030101782007 * G_Total_Relationship_Count1
          +     0.09922577750406 * G_Total_Trans_Ct0
          +     0.62167149120482 * G_Total_Trans_Ct1
          +     1.09837857192449 * G_Total_Trans_Ct2
          +     0.88990320473212 * G_Total_Trans_Ct3
          +     0.14603842645544 * G_Total_Trans_Ct4
          +    -0.05725013848453 * G_Total_Trans_Ct5
          +    -0.07479772375474 * G_Total_Trans_Ct6 ;
   H1x1_4  = H1x1_4  +    -0.20788908396801 * G_Contacts_Count_12_mon0
          +    -0.39937066992208 * G_Contacts_Count_12_mon1
          +     0.23098390094251 * G_Contacts_Count_12_mon2
          +      0.2127179266351 * G_Contacts_Count_12_mon3
          +    -0.11711142776988 * G_Customer_Age0  +     0.08758329474303 *
        G_Customer_Age1  +    -0.12946577860857 * G_Customer_Age2
          +    -0.20984622032713 * G_Customer_Age3  +     0.01543054380114 *
        G_Customer_Age4  +     0.01744527086181 * G_Customer_Age5
          +    -0.12679305846676 * G_Customer_Age6  +    -0.15490204363057 *
        G_Customer_Age7  +    -0.03666340889065 * G_Customer_Age8
          +     0.38882646973981 * G_Customer_Age9  +     0.25963553341962 *
        G_Months_Inactive_12_mon0  +     0.07006278804627 *
        G_Months_Inactive_12_mon1  +    -0.02110503693861 *
        G_Months_Inactive_12_mon2  +    -0.10613087621136 *
        G_Months_Inactive_12_mon3  +    -0.21095466449456 * G_Months_on_book0
          +    -0.06453257990504 * G_Months_on_book1
          +     0.19605382103997 * G_Months_on_book2
          +     0.07222632323077 * G_Months_on_book3
          +    -0.05336430789811 * G_Months_on_book4
          +     0.11363368224674 * G_Months_on_book5
          +     0.09853243776679 * G_Months_on_book6
          +     0.06881256086949 * G_Months_on_book7
          +    -0.11915180567564 * G_Total_Relationship_Count0
          +     0.08464523731571 * G_Total_Relationship_Count1
          +     -0.0582771620162 * G_Total_Trans_Ct0
          +    -0.11735306221869 * G_Total_Trans_Ct1
          +     0.07977042868499 * G_Total_Trans_Ct2
          +    -0.01121366479248 * G_Total_Trans_Ct3
          +     0.00086124112134 * G_Total_Trans_Ct4
          +    -0.14234381283026 * G_Total_Trans_Ct5
          +    -0.10161876925237 * G_Total_Trans_Ct6 ;
   H1x1_5  = H1x1_5  +    -0.56902878790282 * G_Contacts_Count_12_mon0
          +    -0.16661261863249 * G_Contacts_Count_12_mon1
          +     0.08076675187438 * G_Contacts_Count_12_mon2
          +    -0.04057310022146 * G_Contacts_Count_12_mon3
          +    -0.48914285297075 * G_Customer_Age0  +     0.00170634322548 *
        G_Customer_Age1  +    -0.03975363775767 * G_Customer_Age2
          +    -0.01004834554468 * G_Customer_Age3  +     0.07215975430623 *
        G_Customer_Age4  +     0.11860041310799 * G_Customer_Age5
          +     0.04386124283943 * G_Customer_Age6  +    -0.02226006521088 *
        G_Customer_Age7  +     -0.0829461915445 * G_Customer_Age8
          +     0.97010783558513 * G_Customer_Age9  +    -0.35584533888723 *
        G_Months_Inactive_12_mon0  +      0.1574507014307 *
        G_Months_Inactive_12_mon1  +    -0.22690548181964 *
        G_Months_Inactive_12_mon2  +    -0.02402805082996 *
        G_Months_Inactive_12_mon3  +    -0.10211365537508 * G_Months_on_book0
          +    -0.40331789307737 * G_Months_on_book1
          +       0.111045361897 * G_Months_on_book2
          +     0.10992466576811 * G_Months_on_book3
          +     0.24056560603644 * G_Months_on_book4
          +     0.09226782022325 * G_Months_on_book5
          +     0.30704641402586 * G_Months_on_book6
          +     0.02608767076246 * G_Months_on_book7
          +    -0.10991821081945 * G_Total_Relationship_Count0
          +      0.1857841458513 * G_Total_Relationship_Count1
          +    -0.57942689171738 * G_Total_Trans_Ct0
          +    -0.68283775177985 * G_Total_Trans_Ct1
          +    -0.89750294872048 * G_Total_Trans_Ct2
          +    -0.67542502097146 * G_Total_Trans_Ct3
          +     0.30309836129805 * G_Total_Trans_Ct4
          +     0.77487769325225 * G_Total_Trans_Ct5
          +     1.02605659513191 * G_Total_Trans_Ct6 ;
   H1x1_6  = H1x1_6  +     0.13221112619587 * G_Contacts_Count_12_mon0
          +     0.06873025796286 * G_Contacts_Count_12_mon1
          +     0.15106577297273 * G_Contacts_Count_12_mon2
          +     0.02758955335574 * G_Contacts_Count_12_mon3
          +    -0.29581799524654 * G_Customer_Age0  +     0.33907010213137 *
        G_Customer_Age1  +    -0.08748797480777 * G_Customer_Age2
          +     0.23533147426665 * G_Customer_Age3  +    -0.13925157936482 *
        G_Customer_Age4  +    -0.08246938124949 * G_Customer_Age5
          +     0.08407167326123 * G_Customer_Age6  +     0.10094164575548 *
        G_Customer_Age7  +     0.12405820912475 * G_Customer_Age8
          +    -0.27674343160986 * G_Customer_Age9  +     0.22216749562418 *
        G_Months_Inactive_12_mon0  +      0.0052454194168 *
        G_Months_Inactive_12_mon1  +     0.30735551162206 *
        G_Months_Inactive_12_mon2  +     0.13429569680964 *
        G_Months_Inactive_12_mon3  +     0.15691372658011 * G_Months_on_book0
          +    -0.01231673079327 * G_Months_on_book1
          +     0.04161404001317 * G_Months_on_book2
          +      0.0537182206432 * G_Months_on_book3
          +    -0.28089933654563 * G_Months_on_book4
          +    -0.17604035689726 * G_Months_on_book5
          +     0.24792432349444 * G_Months_on_book6
          +     0.03887575032577 * G_Months_on_book7
          +     0.16571491692789 * G_Total_Relationship_Count0
          +    -0.02906776998496 * G_Total_Relationship_Count1
          +     0.38599519077683 * G_Total_Trans_Ct0
          +     0.12103406377764 * G_Total_Trans_Ct1
          +      0.1665955472516 * G_Total_Trans_Ct2
          +     0.18842838894433 * G_Total_Trans_Ct3
          +    -0.22091742274663 * G_Total_Trans_Ct4
          +    -0.16146582654558 * G_Total_Trans_Ct5
          +    -0.58765542396033 * G_Total_Trans_Ct6 ;
   H1x1_7  = H1x1_7  +     0.52979284063353 * G_Contacts_Count_12_mon0
          +    -0.00927053652737 * G_Contacts_Count_12_mon1
          +    -0.20151253370614 * G_Contacts_Count_12_mon2
          +    -0.32482266013186 * G_Contacts_Count_12_mon3
          +     0.28872518748449 * G_Customer_Age0  +     0.27372518652188 *
        G_Customer_Age1  +    -0.07641157440357 * G_Customer_Age2
          +     0.17754100292617 * G_Customer_Age3  +      0.2114128425926 *
        G_Customer_Age4  +     0.22055682171423 * G_Customer_Age5
          +    -0.00718728894877 * G_Customer_Age6  +    -0.05710622042797 *
        G_Customer_Age7  +     0.04337724542871 * G_Customer_Age8
          +    -0.34634671262451 * G_Customer_Age9  +     0.39054305983726 *
        G_Months_Inactive_12_mon0  +      0.0584319065406 *
        G_Months_Inactive_12_mon1  +     0.05072065962762 *
        G_Months_Inactive_12_mon2  +     -0.1972631125201 *
        G_Months_Inactive_12_mon3  +     0.10983158695445 * G_Months_on_book0
          +    -0.10780752641854 * G_Months_on_book1
          +     0.19890305414935 * G_Months_on_book2
          +    -0.02871177908005 * G_Months_on_book3
          +     0.07115842629584 * G_Months_on_book4
          +     0.07042674563525 * G_Months_on_book5
          +     0.12878592163255 * G_Months_on_book6
          +     -0.1092783116355 * G_Months_on_book7
          +    -0.10515030909733 * G_Total_Relationship_Count0
          +    -0.15072520294283 * G_Total_Relationship_Count1
          +     1.19553165179253 * G_Total_Trans_Ct0
          +     0.39569879975941 * G_Total_Trans_Ct1
          +     0.12633022908457 * G_Total_Trans_Ct2
          +     0.64963494787214 * G_Total_Trans_Ct3
          +    -0.03209221597063 * G_Total_Trans_Ct4
          +     0.01435877324027 * G_Total_Trans_Ct5
          +      -1.000780001653 * G_Total_Trans_Ct6 ;
   H1x1_8  = H1x1_8  +     0.43559578908991 * G_Contacts_Count_12_mon0
          +     0.15482576026797 * G_Contacts_Count_12_mon1
          +     0.22003771328343 * G_Contacts_Count_12_mon2
          +    -0.32351859644489 * G_Contacts_Count_12_mon3
          +     0.25527818982735 * G_Customer_Age0  +    -0.34625101213556 *
        G_Customer_Age1  +    -0.10206653170454 * G_Customer_Age2
          +     0.16238377490538 * G_Customer_Age3  +     0.23820362187239 *
        G_Customer_Age4  +    -0.28893981282635 * G_Customer_Age5
          +    -0.15157347323935 * G_Customer_Age6  +    -0.09709525607225 *
        G_Customer_Age7  +     0.05101807706778 * G_Customer_Age8
          +      0.1833303362658 * G_Customer_Age9  +     0.22150219250501 *
        G_Months_Inactive_12_mon0  +      0.1914152418903 *
        G_Months_Inactive_12_mon1  +    -0.13661547545204 *
        G_Months_Inactive_12_mon2  +     0.04075969886218 *
        G_Months_Inactive_12_mon3  +     0.16588195769456 * G_Months_on_book0
          +     0.35595447039136 * G_Months_on_book1
          +    -0.13428049455488 * G_Months_on_book2
          +     0.11005558553554 * G_Months_on_book3
          +     0.04235545524164 * G_Months_on_book4
          +    -0.19070437958701 * G_Months_on_book5
          +     -0.0897976458589 * G_Months_on_book6
          +     0.15754587346328 * G_Months_on_book7
          +     0.77093275314634 * G_Total_Relationship_Count0
          +    -0.21505110573527 * G_Total_Relationship_Count1
          +     0.55685628450068 * G_Total_Trans_Ct0
          +      0.2374533906488 * G_Total_Trans_Ct1
          +     -0.1958105436154 * G_Total_Trans_Ct2
          +     0.13056576720194 * G_Total_Trans_Ct3
          +     0.00648614572271 * G_Total_Trans_Ct4
          +     0.15255649554313 * G_Total_Trans_Ct5
          +    -0.31681419802422 * G_Total_Trans_Ct6 ;
   H1x1_1  =     0.02650025320783 + H1x1_1 ;
   H1x1_2  =    -0.25684105730406 + H1x1_2 ;
   H1x1_3  =    -0.50787825627603 + H1x1_3 ;
   H1x1_4  =     -0.5245695310695 + H1x1_4 ;
   H1x1_5  =     1.16436476363924 + H1x1_5 ;
   H1x1_6  =     0.33913994954524 + H1x1_6 ;
   H1x1_7  =     1.58805018436023 + H1x1_7 ;
   H1x1_8  =    -2.12315030302658 + H1x1_8 ;
   DROP _EXP_BAR;
   _EXP_BAR=50;
   H1x1_1  = EXP(MIN(-0.5 * H1x1_1 **2, _EXP_BAR));
   H1x1_2  = EXP(MIN(-0.5 * H1x1_2 **2, _EXP_BAR));
   H1x1_3  = EXP(MIN(-0.5 * H1x1_3 **2, _EXP_BAR));
   H1x1_4  = EXP(MIN(-0.5 * H1x1_4 **2, _EXP_BAR));
   H1x1_5  = EXP(MIN(-0.5 * H1x1_5 **2, _EXP_BAR));
   H1x1_6  = EXP(MIN(-0.5 * H1x1_6 **2, _EXP_BAR));
   H1x1_7  = EXP(MIN(-0.5 * H1x1_7 **2, _EXP_BAR));
   H1x1_8  = EXP(MIN(-0.5 * H1x1_8 **2, _EXP_BAR));
END;
ELSE DO;
   H1x1_1  = .;
   H1x1_2  = .;
   H1x1_3  = .;
   H1x1_4  = .;
   H1x1_5  = .;
   H1x1_6  = .;
   H1x1_7  = .;
   H1x1_8  = .;
END;
*** *************************;
*** Writing the Node H2x1_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H2x1_1  =     0.08862660282113 * H1x1_1  +     0.40243412973248 * H1x1_2
          +     2.02443454653222 * H1x1_3  +    -1.72744500671302 * H1x1_4
          +      1.8238088425411 * H1x1_5  +    -1.93408809997984 * H1x1_6
          +    -0.75757402320895 * H1x1_7  +      1.1743020655621 * H1x1_8 ;
   H2x1_2  =     2.04689085726492 * H1x1_1  +    -0.20793468317806 * H1x1_2
          +     0.88358710261429 * H1x1_3  +     0.56058137974114 * H1x1_4
          +     0.08505573871889 * H1x1_5  +     0.11321169903443 * H1x1_6
          +     0.28214925336371 * H1x1_7  +     0.93894860595328 * H1x1_8 ;
   H2x1_3  =     -1.2184808904648 * H1x1_1  +    -0.19460736676124 * H1x1_2
          +    -0.46304820196999 * H1x1_3  +     1.67787333554577 * H1x1_4
          +    -1.29800064995406 * H1x1_5  +     0.66380298593322 * H1x1_6
          +     0.90021515216269 * H1x1_7  +    -1.34294578583942 * H1x1_8 ;
   H2x1_4  =     0.07420954177297 * H1x1_1  +     0.06245751395874 * H1x1_2
          +     1.75101414002355 * H1x1_3  +    -0.69876187290575 * H1x1_4
          +     1.64522917242144 * H1x1_5  +     0.58439192388549 * H1x1_6
          +     1.71684196350147 * H1x1_7  +    -0.09182458057059 * H1x1_8 ;
   H2x1_5  =    -1.98024643363819 * H1x1_1  +     0.27225061249304 * H1x1_2
          +     0.07627795727865 * H1x1_3  +    -0.91980460817422 * H1x1_4
          +    -0.59096956501431 * H1x1_5  +    -0.50710914261851 * H1x1_6
          +     -1.9770496377027 * H1x1_7  +     0.24951909623587 * H1x1_8 ;
   H2x1_6  =    -2.24015626845506 * H1x1_1  +    -1.85105325756077 * H1x1_2
          +     1.03975495809148 * H1x1_3  +      1.3268323396913 * H1x1_4
          +     1.61406315831088 * H1x1_5  +    -1.31415185757273 * H1x1_6
          +     -1.5906272596979 * H1x1_7  +     1.44315645396274 * H1x1_8 ;
   H2x1_7  =    -0.68488963405252 * H1x1_1  +    -1.78048017163839 * H1x1_2
          +    -0.80113851495727 * H1x1_3  +    -0.30303871473155 * H1x1_4
          +    -0.89424738421983 * H1x1_5  +     0.88296045952163 * H1x1_6
          +     1.46780135693795 * H1x1_7  +    -0.54776833354744 * H1x1_8 ;
   H2x1_8  =     0.84377114826897 * H1x1_1  +    -0.14810018909791 * H1x1_2
          +     1.11853545850139 * H1x1_3  +    -0.52413654460248 * H1x1_4
          +     0.26423935198202 * H1x1_5  +     0.73287134084679 * H1x1_6
          +    -0.10968109058294 * H1x1_7  +     0.05373159333235 * H1x1_8 ;
   H2x1_1  =    -0.31574497820096 + H2x1_1 ;
   H2x1_2  =     -1.1221477339575 + H2x1_2 ;
   H2x1_3  =    -0.09036454817003 + H2x1_3 ;
   H2x1_4  =    -0.11931722312594 + H2x1_4 ;
   H2x1_5  =     0.18308841470994 + H2x1_5 ;
   H2x1_6  =    -1.66376461184436 + H2x1_6 ;
   H2x1_7  =     1.50948440714938 + H2x1_7 ;
   H2x1_8  =    -1.19197165918413 + H2x1_8 ;
   H2x1_1  = TANH(H2x1_1 );
   H2x1_2  = TANH(H2x1_2 );
   H2x1_3  = TANH(H2x1_3 );
   H2x1_4  = TANH(H2x1_4 );
   H2x1_5  = TANH(H2x1_5 );
   H2x1_6  = TANH(H2x1_6 );
   H2x1_7  = TANH(H2x1_7 );
   H2x1_8  = TANH(H2x1_8 );
END;
ELSE DO;
   H2x1_1  = .;
   H2x1_2  = .;
   H2x1_3  = .;
   H2x1_4  = .;
   H2x1_5  = .;
   H2x1_6  = .;
   H2x1_7  = .;
   H2x1_8  = .;
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
   P_Attrition_Flag1  =     2.47649940953865 * H2x1_1
          +     0.82822394165393 * H2x1_2  +    -2.28704272678157 * H2x1_3
          +     0.98345755322308 * H2x1_4  +    -0.80209601445336 * H2x1_5
          +    -0.80328250572529 * H2x1_6  +    -2.19260501467389 * H2x1_7
          +     0.11593680364832 * H2x1_8 ;
   P_Attrition_Flag1  =    -3.90025292308802 + P_Attrition_Flag1 ;
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
H1x1_5
H1x1_6
H1x1_7
H1x1_8
H2x1_1
H2x1_2
H2x1_3
H2x1_4
H2x1_5
H2x1_6
H2x1_7
H2x1_8
;
