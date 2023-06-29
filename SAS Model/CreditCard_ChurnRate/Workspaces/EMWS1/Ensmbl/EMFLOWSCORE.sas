*------------------------------------------------------------*;
* Ensmbl: Combine model for Attrition_Flag;
*------------------------------------------------------------*;
* Ensmbl: Scoring Code of model 1 of 4;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids;
*------------------------------------------------------------*;
drop CLIENTNUM;
*------------------------------------------------------------*;
* TOOL: Variable selection Class;
* TYPE: EXPLORE;
* NODE: Varsel;
*------------------------------------------------------------*;
******************************************;
*** Begin Scoring Code from PROC DMINE ***;
******************************************;

length _WARN_ $ 4;
label _WARN_ = "Warnings";


/*----G_Total_Trans_Ct begin----*/
length _NORM3 $ 3;
_NORM3 = put( Total_Trans_Ct , BEST3. );
%DMNORMIP( _NORM3 )
drop _NORM3;
select(_NORM3);
  when('10' ) G_Total_Trans_Ct = 0;
  when('11' ) G_Total_Trans_Ct = 2;
  when('12' ) G_Total_Trans_Ct = 0;
  when('13' ) G_Total_Trans_Ct = 1;
  when('14' ) G_Total_Trans_Ct = 0;
  when('15' ) G_Total_Trans_Ct = 0;
  when('16' ) G_Total_Trans_Ct = 1;
  when('17' ) G_Total_Trans_Ct = 0;
  when('18' ) G_Total_Trans_Ct = 1;
  when('19' ) G_Total_Trans_Ct = 1;
  when('20' ) G_Total_Trans_Ct = 2;
  when('21' ) G_Total_Trans_Ct = 4;
  when('22' ) G_Total_Trans_Ct = 4;
  when('23' ) G_Total_Trans_Ct = 5;
  when('24' ) G_Total_Trans_Ct = 5;
  when('25' ) G_Total_Trans_Ct = 5;
  when('26' ) G_Total_Trans_Ct = 5;
  when('27' ) G_Total_Trans_Ct = 5;
  when('28' ) G_Total_Trans_Ct = 5;
  when('29' ) G_Total_Trans_Ct = 5;
  when('30' ) G_Total_Trans_Ct = 5;
  when('31' ) G_Total_Trans_Ct = 5;
  when('32' ) G_Total_Trans_Ct = 5;
  when('33' ) G_Total_Trans_Ct = 5;
  when('34' ) G_Total_Trans_Ct = 5;
  when('35' ) G_Total_Trans_Ct = 4;
  when('36' ) G_Total_Trans_Ct = 3;
  when('37' ) G_Total_Trans_Ct = 4;
  when('38' ) G_Total_Trans_Ct = 3;
  when('39' ) G_Total_Trans_Ct = 2;
  when('40' ) G_Total_Trans_Ct = 2;
  when('41' ) G_Total_Trans_Ct = 2;
  when('42' ) G_Total_Trans_Ct = 1;
  when('43' ) G_Total_Trans_Ct = 1;
  when('44' ) G_Total_Trans_Ct = 1;
  when('45' ) G_Total_Trans_Ct = 2;
  when('46' ) G_Total_Trans_Ct = 1;
  when('47' ) G_Total_Trans_Ct = 2;
  when('48' ) G_Total_Trans_Ct = 3;
  when('49' ) G_Total_Trans_Ct = 3;
  when('50' ) G_Total_Trans_Ct = 3;
  when('51' ) G_Total_Trans_Ct = 2;
  when('52' ) G_Total_Trans_Ct = 4;
  when('53' ) G_Total_Trans_Ct = 4;
  when('54' ) G_Total_Trans_Ct = 4;
  when('55' ) G_Total_Trans_Ct = 5;
  when('56' ) G_Total_Trans_Ct = 5;
  when('57' ) G_Total_Trans_Ct = 5;
  when('58' ) G_Total_Trans_Ct = 6;
  when('59' ) G_Total_Trans_Ct = 5;
  when('60' ) G_Total_Trans_Ct = 6;
  when('61' ) G_Total_Trans_Ct = 6;
  when('62' ) G_Total_Trans_Ct = 6;
  when('63' ) G_Total_Trans_Ct = 5;
  when('64' ) G_Total_Trans_Ct = 6;
  when('65' ) G_Total_Trans_Ct = 6;
  when('66' ) G_Total_Trans_Ct = 6;
  when('67' ) G_Total_Trans_Ct = 6;
  when('68' ) G_Total_Trans_Ct = 6;
  when('69' ) G_Total_Trans_Ct = 6;
  when('70' ) G_Total_Trans_Ct = 6;
  when('71' ) G_Total_Trans_Ct = 6;
  when('72' ) G_Total_Trans_Ct = 7;
  when('73' ) G_Total_Trans_Ct = 7;
  when('74' ) G_Total_Trans_Ct = 6;
  when('75' ) G_Total_Trans_Ct = 7;
  when('76' ) G_Total_Trans_Ct = 7;
  when('77' ) G_Total_Trans_Ct = 7;
  when('78' ) G_Total_Trans_Ct = 7;
  when('79' ) G_Total_Trans_Ct = 7;
  when('80' ) G_Total_Trans_Ct = 7;
  when('81' ) G_Total_Trans_Ct = 7;
  when('82' ) G_Total_Trans_Ct = 7;
  when('83' ) G_Total_Trans_Ct = 7;
  when('84' ) G_Total_Trans_Ct = 7;
  when('85' ) G_Total_Trans_Ct = 7;
  when('86' ) G_Total_Trans_Ct = 7;
  when('87' ) G_Total_Trans_Ct = 7;
  when('88' ) G_Total_Trans_Ct = 7;
  when('89' ) G_Total_Trans_Ct = 7;
  when('90' ) G_Total_Trans_Ct = 7;
  when('91' ) G_Total_Trans_Ct = 7;
  when('92' ) G_Total_Trans_Ct = 7;
  when('93' ) G_Total_Trans_Ct = 7;
  when('94' ) G_Total_Trans_Ct = 7;
  when('95' ) G_Total_Trans_Ct = 7;
  when('96' ) G_Total_Trans_Ct = 7;
  when('97' ) G_Total_Trans_Ct = 7;
  when('98' ) G_Total_Trans_Ct = 7;
  when('99' ) G_Total_Trans_Ct = 7;
  when('100' ) G_Total_Trans_Ct = 7;
  when('101' ) G_Total_Trans_Ct = 7;
  when('102' ) G_Total_Trans_Ct = 7;
  when('103' ) G_Total_Trans_Ct = 7;
  when('104' ) G_Total_Trans_Ct = 7;
  when('105' ) G_Total_Trans_Ct = 7;
  when('106' ) G_Total_Trans_Ct = 7;
  when('107' ) G_Total_Trans_Ct = 7;
  when('108' ) G_Total_Trans_Ct = 7;
  when('109' ) G_Total_Trans_Ct = 7;
  when('110' ) G_Total_Trans_Ct = 7;
  when('111' ) G_Total_Trans_Ct = 7;
  when('112' ) G_Total_Trans_Ct = 7;
  when('113' ) G_Total_Trans_Ct = 7;
  when('114' ) G_Total_Trans_Ct = 7;
  when('115' ) G_Total_Trans_Ct = 7;
  when('116' ) G_Total_Trans_Ct = 7;
  when('117' ) G_Total_Trans_Ct = 7;
  when('118' ) G_Total_Trans_Ct = 7;
  when('119' ) G_Total_Trans_Ct = 7;
  when('120' ) G_Total_Trans_Ct = 7;
  when('121' ) G_Total_Trans_Ct = 7;
  when('122' ) G_Total_Trans_Ct = 7;
  when('123' ) G_Total_Trans_Ct = 7;
  when('124' ) G_Total_Trans_Ct = 7;
  when('125' ) G_Total_Trans_Ct = 7;
  when('126' ) G_Total_Trans_Ct = 7;
  when('127' ) G_Total_Trans_Ct = 7;
  when('128' ) G_Total_Trans_Ct = 7;
  when('129' ) G_Total_Trans_Ct = 7;
  when('130' ) G_Total_Trans_Ct = 7;
  when('131' ) G_Total_Trans_Ct = 7;
  when('132' ) G_Total_Trans_Ct = 7;
  when('134' ) G_Total_Trans_Ct = 7;
  when('138' ) G_Total_Trans_Ct = 7;
  when('139' ) G_Total_Trans_Ct = 7;
  otherwise substr(_WARN_, 2, 1) = 'U';
end;
label G_Total_Trans_Ct="Grouped Levels for  Total_Trans_Ct";
/*----Total_Trans_Ct end----*/

/*----G_Contacts_Count_12_mon begin----*/
length _NORM1 $ 1;
_NORM1 = put( Contacts_Count_12_mon , BEST1. );
%DMNORMIP( _NORM1 )
drop _NORM1;
select(_NORM1);
  when('0' ) G_Contacts_Count_12_mon = 4;
  when('1' ) G_Contacts_Count_12_mon = 4;
  when('2' ) G_Contacts_Count_12_mon = 3;
  when('3' ) G_Contacts_Count_12_mon = 2;
  when('4' ) G_Contacts_Count_12_mon = 2;
  when('5' ) G_Contacts_Count_12_mon = 1;
  when('6' ) G_Contacts_Count_12_mon = 0;
  otherwise substr(_WARN_, 2, 1) = 'U';
end;
label G_Contacts_Count_12_mon="Grouped Levels for  Contacts_Count_12_mon";
/*----Contacts_Count_12_mon end----*/

/*----G_Months_Inactive_12_mon begin----*/
length _NORM1 $ 1;
_NORM1 = put( Months_Inactive_12_mon , BEST1. );
%DMNORMIP( _NORM1 )
drop _NORM1;
select(_NORM1);
  when('0' ) G_Months_Inactive_12_mon = 0;
  when('1' ) G_Months_Inactive_12_mon = 4;
  when('2' ) G_Months_Inactive_12_mon = 3;
  when('3' ) G_Months_Inactive_12_mon = 2;
  when('4' ) G_Months_Inactive_12_mon = 1;
  when('5' ) G_Months_Inactive_12_mon = 3;
  when('6' ) G_Months_Inactive_12_mon = 3;
  otherwise substr(_WARN_, 2, 1) = 'U';
end;
label G_Months_Inactive_12_mon="Grouped Levels for  Months_Inactive_12_mon";
/*----Months_Inactive_12_mon end----*/

/*----G_Total_Relationship_Count begin----*/
length _NORM1 $ 1;
_NORM1 = put( Total_Relationship_Count , BEST1. );
%DMNORMIP( _NORM1 )
drop _NORM1;
select(_NORM1);
  when('1' ) G_Total_Relationship_Count = 0;
  when('2' ) G_Total_Relationship_Count = 0;
  when('3' ) G_Total_Relationship_Count = 1;
  when('4' ) G_Total_Relationship_Count = 2;
  when('5' ) G_Total_Relationship_Count = 2;
  when('6' ) G_Total_Relationship_Count = 2;
  otherwise substr(_WARN_, 2, 1) = 'U';
end;
label G_Total_Relationship_Count="Grouped Levels for  Total_Relationship_Count
        ";
/*----Total_Relationship_Count end----*/

/*----G_Customer_Age begin----*/
length _NORM2 $ 2;
_NORM2 = put( Customer_Age , BEST2. );
%DMNORMIP( _NORM2 )
drop _NORM2;
select(_NORM2);
  when('26' ) G_Customer_Age = 9;
  when('27' ) G_Customer_Age = 9;
  when('28' ) G_Customer_Age = 10;
  when('29' ) G_Customer_Age = 8;
  when('30' ) G_Customer_Age = 2;
  when('31' ) G_Customer_Age = 7;
  when('32' ) G_Customer_Age = 6;
  when('33' ) G_Customer_Age = 6;
  when('34' ) G_Customer_Age = 8;
  when('35' ) G_Customer_Age = 8;
  when('36' ) G_Customer_Age = 8;
  when('37' ) G_Customer_Age = 7;
  when('38' ) G_Customer_Age = 6;
  when('39' ) G_Customer_Age = 7;
  when('40' ) G_Customer_Age = 4;
  when('41' ) G_Customer_Age = 3;
  when('42' ) G_Customer_Age = 7;
  when('43' ) G_Customer_Age = 4;
  when('44' ) G_Customer_Age = 5;
  when('45' ) G_Customer_Age = 5;
  when('46' ) G_Customer_Age = 5;
  when('47' ) G_Customer_Age = 6;
  when('48' ) G_Customer_Age = 4;
  when('49' ) G_Customer_Age = 6;
  when('50' ) G_Customer_Age = 6;
  when('51' ) G_Customer_Age = 7;
  when('52' ) G_Customer_Age = 6;
  when('53' ) G_Customer_Age = 6;
  when('54' ) G_Customer_Age = 2;
  when('55' ) G_Customer_Age = 4;
  when('56' ) G_Customer_Age = 5;
  when('57' ) G_Customer_Age = 7;
  when('58' ) G_Customer_Age = 6;
  when('59' ) G_Customer_Age = 1;
  when('60' ) G_Customer_Age = 8;
  when('61' ) G_Customer_Age = 4;
  when('62' ) G_Customer_Age = 4;
  when('63' ) G_Customer_Age = 8;
  when('64' ) G_Customer_Age = 8;
  when('65' ) G_Customer_Age = 9;
  when('66' ) G_Customer_Age = 0;
  when('67' ) G_Customer_Age = 10;
  when('68' ) G_Customer_Age = 0;
  when('70' ) G_Customer_Age = 10;
  when('73' ) G_Customer_Age = 10;
  otherwise substr(_WARN_, 2, 1) = 'U';
end;
label G_Customer_Age="Grouped Levels for  Customer_Age";
/*----Customer_Age end----*/

/*----G_Months_on_book begin----*/
length _NORM2 $ 2;
_NORM2 = put( Months_on_book , BEST2. );
%DMNORMIP( _NORM2 )
drop _NORM2;
select(_NORM2);
  when('13' ) G_Months_on_book = 7;
  when('14' ) G_Months_on_book = 8;
  when('15' ) G_Months_on_book = 0;
  when('16' ) G_Months_on_book = 7;
  when('17' ) G_Months_on_book = 7;
  when('18' ) G_Months_on_book = 1;
  when('19' ) G_Months_on_book = 8;
  when('20' ) G_Months_on_book = 3;
  when('21' ) G_Months_on_book = 7;
  when('22' ) G_Months_on_book = 2;
  when('23' ) G_Months_on_book = 7;
  when('24' ) G_Months_on_book = 3;
  when('25' ) G_Months_on_book = 2;
  when('26' ) G_Months_on_book = 6;
  when('27' ) G_Months_on_book = 7;
  when('28' ) G_Months_on_book = 5;
  when('29' ) G_Months_on_book = 6;
  when('30' ) G_Months_on_book = 2;
  when('31' ) G_Months_on_book = 7;
  when('32' ) G_Months_on_book = 5;
  when('33' ) G_Months_on_book = 5;
  when('34' ) G_Months_on_book = 4;
  when('35' ) G_Months_on_book = 6;
  when('36' ) G_Months_on_book = 3;
  when('37' ) G_Months_on_book = 3;
  when('38' ) G_Months_on_book = 4;
  when('39' ) G_Months_on_book = 2;
  when('40' ) G_Months_on_book = 6;
  when('41' ) G_Months_on_book = 3;
  when('42' ) G_Months_on_book = 6;
  when('43' ) G_Months_on_book = 5;
  when('44' ) G_Months_on_book = 2;
  when('45' ) G_Months_on_book = 6;
  when('46' ) G_Months_on_book = 2;
  when('47' ) G_Months_on_book = 6;
  when('48' ) G_Months_on_book = 4;
  when('49' ) G_Months_on_book = 3;
  when('50' ) G_Months_on_book = 0;
  when('51' ) G_Months_on_book = 2;
  when('52' ) G_Months_on_book = 2;
  when('53' ) G_Months_on_book = 8;
  when('54' ) G_Months_on_book = 7;
  when('55' ) G_Months_on_book = 8;
  when('56' ) G_Months_on_book = 4;
  otherwise substr(_WARN_, 2, 1) = 'U';
end;
label G_Months_on_book="Grouped Levels for  Months_on_book";
/*----Months_on_book end----*/


****************************************;
*** End Scoring Code from PROC DMINE ***;
****************************************;
*------------------------------------------------------------*;
* TOOL: Transform;
* TYPE: MODIFY;
* NODE: Trans;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Computed Code;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TRANSFORM: Avg_Utilization_Ratio , sqrt(max(Avg_Utilization_Ratio-0, 0.0)/0.999);
*------------------------------------------------------------*;
drop Trans_SCALEVAR_1;
label SQRT_Avg_Utilization_Ratio = 'Transformed Avg_Utilization_Ratio';
length SQRT_Avg_Utilization_Ratio 8;
if Avg_Utilization_Ratio eq . then SQRT_Avg_Utilization_Ratio = .;
else do;
Trans_SCALEVAR_1 = max(Avg_Utilization_Ratio-0, 0.0)/0.999;
if Trans_SCALEVAR_1 >= 0 then SQRT_Avg_Utilization_Ratio = Sqrt(Trans_SCALEVAR_1);
else SQRT_Avg_Utilization_Ratio = .;
end;
*------------------------------------------------------------*;
* TRANSFORM: Total_Amt_Chng_Q4_Q1 , sqrt(max(Total_Amt_Chng_Q4_Q1-0, 0.0)/3.397);
*------------------------------------------------------------*;
drop Trans_SCALEVAR_2;
label SQRT_Total_Amt_Chng_Q4_Q1 = 'Transformed Total_Amt_Chng_Q4_Q1';
length SQRT_Total_Amt_Chng_Q4_Q1 8;
if Total_Amt_Chng_Q4_Q1 eq . then SQRT_Total_Amt_Chng_Q4_Q1 = .;
else do;
Trans_SCALEVAR_2 = max(Total_Amt_Chng_Q4_Q1-0, 0.0)/3.397;
if Trans_SCALEVAR_2 >= 0 then SQRT_Total_Amt_Chng_Q4_Q1 = Sqrt(Trans_SCALEVAR_2);
else SQRT_Total_Amt_Chng_Q4_Q1 = .;
end;
*------------------------------------------------------------*;
* TRANSFORM: Total_Ct_Chng_Q4_Q1 , sqrt(max(Total_Ct_Chng_Q4_Q1-0, 0.0)/3.714);
*------------------------------------------------------------*;
drop Trans_SCALEVAR_3;
label SQRT_Total_Ct_Chng_Q4_Q1 = 'Transformed Total_Ct_Chng_Q4_Q1';
length SQRT_Total_Ct_Chng_Q4_Q1 8;
if Total_Ct_Chng_Q4_Q1 eq . then SQRT_Total_Ct_Chng_Q4_Q1 = .;
else do;
Trans_SCALEVAR_3 = max(Total_Ct_Chng_Q4_Q1-0, 0.0)/3.714;
if Trans_SCALEVAR_3 >= 0 then SQRT_Total_Ct_Chng_Q4_Q1 = Sqrt(Trans_SCALEVAR_3);
else SQRT_Total_Ct_Chng_Q4_Q1 = .;
end;
*------------------------------------------------------------*;
* TRANSFORM: Total_Trans_Amt , log(max(Total_Trans_Amt-510, 0.0)/17974 + 1);
*------------------------------------------------------------*;
drop Trans_SCALEVAR_5;
label LOG_Total_Trans_Amt = 'Transformed Total_Trans_Amt';
length LOG_Total_Trans_Amt 8;
if Total_Trans_Amt eq . then LOG_Total_Trans_Amt = .;
else do;
Trans_SCALEVAR_5 = max(Total_Trans_Amt-510, 0.0)/17974;
if Trans_SCALEVAR_5 + 1 > 0 then LOG_Total_Trans_Amt = log(Trans_SCALEVAR_5 + 1);
else LOG_Total_Trans_Amt = .;
end;
*------------------------------------------------------------*;
* TOOL: Metadata Node;
* TYPE: UTILITY;
* NODE: Meta;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: Transform;
* TYPE: MODIFY;
* NODE: Trans2;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Computed Code;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TRANSFORM: LOG_Total_Trans_Amt , (LOG_Total_Trans_Amt - 0) / (0.6931471806-0);
*------------------------------------------------------------*;
label RANGE_LOG_Total_Trans_Amt = 'Transformed: Transformed Total_Trans_Amt';
length RANGE_LOG_Total_Trans_Amt 8;
if LOG_Total_Trans_Amt eq . then RANGE_LOG_Total_Trans_Amt = .;
else RANGE_LOG_Total_Trans_Amt = (LOG_Total_Trans_Amt - 0) / (0.6931471806-0);
*------------------------------------------------------------*;
* TRANSFORM: SQRT_Avg_Utilization_Ratio , (SQRT_Avg_Utilization_Ratio - 0) / (1-0);
*------------------------------------------------------------*;
label RANGE_SQRT_Avg_Utilization_Ratio = 'Transformed: Transformed Avg_Utilization_Ratio';
length RANGE_SQRT_Avg_Utilization_Ratio 8;
if SQRT_Avg_Utilization_Ratio eq . then RANGE_SQRT_Avg_Utilization_Ratio = .;
else RANGE_SQRT_Avg_Utilization_Ratio = (SQRT_Avg_Utilization_Ratio - 0) / (1-0);
*------------------------------------------------------------*;
* TRANSFORM: SQRT_Total_Amt_Chng_Q4_Q1 , (SQRT_Total_Amt_Chng_Q4_Q1 - 0) / (1-0);
*------------------------------------------------------------*;
label RANGE_SQRT_Total_Amt_Chng_Q4_Q1 = 'Transformed: Transformed Total_Amt_Chng_Q4_Q1';
length RANGE_SQRT_Total_Amt_Chng_Q4_Q1 8;
if SQRT_Total_Amt_Chng_Q4_Q1 eq . then RANGE_SQRT_Total_Amt_Chng_Q4_Q1 = .;
else RANGE_SQRT_Total_Amt_Chng_Q4_Q1 = (SQRT_Total_Amt_Chng_Q4_Q1 - 0) / (1-0);
*------------------------------------------------------------*;
* TRANSFORM: SQRT_Total_Ct_Chng_Q4_Q1 , (SQRT_Total_Ct_Chng_Q4_Q1 - 0) / (1-0);
*------------------------------------------------------------*;
label RANGE_SQRT_Total_Ct_Chng_Q4_Q1 = 'Transformed: Transformed Total_Ct_Chng_Q4_Q1';
length RANGE_SQRT_Total_Ct_Chng_Q4_Q1 8;
if SQRT_Total_Ct_Chng_Q4_Q1 eq . then RANGE_SQRT_Total_Ct_Chng_Q4_Q1 = .;
else RANGE_SQRT_Total_Ct_Chng_Q4_Q1 = (SQRT_Total_Ct_Chng_Q4_Q1 - 0) / (1-0);
*------------------------------------------------------------*;
* TRANSFORM: Total_Revolving_Bal , (Total_Revolving_Bal - 0) / (2517-0);
*------------------------------------------------------------*;
label RANGE_Total_Revolving_Bal = 'Transformed Total_Revolving_Bal';
length RANGE_Total_Revolving_Bal 8;
if Total_Revolving_Bal eq . then RANGE_Total_Revolving_Bal = .;
else RANGE_Total_Revolving_Bal = (Total_Revolving_Bal - 0) / (2517-0);
*------------------------------------------------------------*;
* TOOL: Metadata Node;
* TYPE: UTILITY;
* NODE: Meta2;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: Partition Class;
* TYPE: SAMPLE;
* NODE: Part;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: Regression;
* TYPE: MODEL;
* NODE: Reg;
*------------------------------------------------------------*;
*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Attrition_Flag $ 17;
label I_Attrition_Flag = 'Into: Attrition_Flag' ;
*** Target Values;
array REGDRF [2] $17 _temporary_ ('1' '0' );
label U_Attrition_Flag = 'Unnormalized Into: Attrition_Flag' ;
format U_Attrition_Flag $CHAR17.;
length U_Attrition_Flag $ 17;
*** Unnormalized target values;
array REGDRU[2] $ 17 _temporary_ ('1                '  '0                ' );

*** Generate dummy variables for Attrition_Flag ;
drop _Y ;
label F_Attrition_Flag = 'From: Attrition_Flag' ;
length F_Attrition_Flag $ 17;
F_Attrition_Flag = put( Attrition_Flag , $CHAR17. );
%DMNORMIP( F_Attrition_Flag )
if missing( Attrition_Flag ) then do;
   _Y = .;
end;
else do;
   if F_Attrition_Flag = '0'  then do;
      _Y = 1;
   end;
   else if F_Attrition_Flag = '1'  then do;
      _Y = 0;
   end;
   else do;
      _Y = .;
   end;
end;

drop _DM_BAD;
_DM_BAD=0;

*** Check RANGE_LOG_Total_Trans_Amt for missing values ;
if missing( RANGE_LOG_Total_Trans_Amt ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check RANGE_SQRT_Avg_Utilization_Ratio for missing values ;
if missing( RANGE_SQRT_Avg_Utilization_Ratio ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check RANGE_SQRT_Total_Amt_Chng_Q4_Q1 for missing values ;
if missing( RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check RANGE_SQRT_Total_Ct_Chng_Q4_Q1 for missing values ;
if missing( RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check RANGE_Total_Revolving_Bal for missing values ;
if missing( RANGE_Total_Revolving_Bal ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Generate dummy variables for G_Contacts_Count_12_mon ;
drop _1_0 _1_1 _1_2 _1_3 ;
*** encoding is sparse, initialize to zero;
_1_0 = 0;
_1_1 = 0;
_1_2 = 0;
_1_3 = 0;
if missing( G_Contacts_Count_12_mon ) then do;
   _1_0 = .;
   _1_1 = .;
   _1_2 = .;
   _1_3 = .;
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
            _1_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '1'  then do;
               _1_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '2'  then do;
            _1_2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '3'  then do;
         _1_3 = 1;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '4'  then do;
            _1_0 = -1;
            _1_1 = -1;
            _1_2 = -1;
            _1_3 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      _1_0 = .;
      _1_1 = .;
      _1_2 = .;
      _1_3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Customer_Age ;
drop _2_0 _2_1 _2_2 _2_3 _2_4 _2_5 _2_6 _2_7 _2_8 _2_9 ;
*** encoding is sparse, initialize to zero;
_2_0 = 0;
_2_1 = 0;
_2_2 = 0;
_2_3 = 0;
_2_4 = 0;
_2_5 = 0;
_2_6 = 0;
_2_7 = 0;
_2_8 = 0;
_2_9 = 0;
if missing( G_Customer_Age ) then do;
   _2_0 = .;
   _2_1 = .;
   _2_2 = .;
   _2_3 = .;
   _2_4 = .;
   _2_5 = .;
   _2_6 = .;
   _2_7 = .;
   _2_8 = .;
   _2_9 = .;
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
               _2_0 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '1'  then do;
                  _2_1 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '10'  then do;
               _2_0 = -1;
               _2_1 = -1;
               _2_2 = -1;
               _2_3 = -1;
               _2_4 = -1;
               _2_5 = -1;
               _2_6 = -1;
               _2_7 = -1;
               _2_8 = -1;
               _2_9 = -1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 <= '3'  then do;
            if _dm12 = '2'  then do;
               _2_2 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '3'  then do;
                  _2_3 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '4'  then do;
               _2_4 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '7'  then do;
         if _dm12 <= '6'  then do;
            if _dm12 = '5'  then do;
               _2_5 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '6'  then do;
                  _2_6 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '7'  then do;
               _2_7 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '8'  then do;
            _2_8 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '9'  then do;
               _2_9 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      _2_0 = .;
      _2_1 = .;
      _2_2 = .;
      _2_3 = .;
      _2_4 = .;
      _2_5 = .;
      _2_6 = .;
      _2_7 = .;
      _2_8 = .;
      _2_9 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Months_Inactive_12_mon ;
drop _3_0 _3_1 _3_2 _3_3 ;
*** encoding is sparse, initialize to zero;
_3_0 = 0;
_3_1 = 0;
_3_2 = 0;
_3_3 = 0;
if missing( G_Months_Inactive_12_mon ) then do;
   _3_0 = .;
   _3_1 = .;
   _3_2 = .;
   _3_3 = .;
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
            _3_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '1'  then do;
               _3_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '2'  then do;
            _3_2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '3'  then do;
         _3_3 = 1;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '4'  then do;
            _3_0 = -1;
            _3_1 = -1;
            _3_2 = -1;
            _3_3 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      _3_0 = .;
      _3_1 = .;
      _3_2 = .;
      _3_3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Months_on_book ;
drop _4_0 _4_1 _4_2 _4_3 _4_4 _4_5 _4_6 _4_7 ;
*** encoding is sparse, initialize to zero;
_4_0 = 0;
_4_1 = 0;
_4_2 = 0;
_4_3 = 0;
_4_4 = 0;
_4_5 = 0;
_4_6 = 0;
_4_7 = 0;
if missing( G_Months_on_book ) then do;
   _4_0 = .;
   _4_1 = .;
   _4_2 = .;
   _4_3 = .;
   _4_4 = .;
   _4_5 = .;
   _4_6 = .;
   _4_7 = .;
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
               _4_0 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '1'  then do;
                  _4_1 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '2'  then do;
               _4_2 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            _4_3 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '4'  then do;
               _4_4 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '6'  then do;
         if _dm12 = '5'  then do;
            _4_5 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '6'  then do;
               _4_6 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '7'  then do;
            _4_7 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '8'  then do;
               _4_0 = -1;
               _4_1 = -1;
               _4_2 = -1;
               _4_3 = -1;
               _4_4 = -1;
               _4_5 = -1;
               _4_6 = -1;
               _4_7 = -1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      _4_0 = .;
      _4_1 = .;
      _4_2 = .;
      _4_3 = .;
      _4_4 = .;
      _4_5 = .;
      _4_6 = .;
      _4_7 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Total_Relationship_Count ;
drop _5_0 _5_1 ;
if missing( G_Total_Relationship_Count ) then do;
   _5_0 = .;
   _5_1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( G_Total_Relationship_Count , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      _5_0 = -1;
      _5_1 = -1;
   end;
   else if _dm12 = '1'  then do;
      _5_0 = 0;
      _5_1 = 1;
   end;
   else if _dm12 = '0'  then do;
      _5_0 = 1;
      _5_1 = 0;
   end;
   else do;
      _5_0 = .;
      _5_1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for G_Total_Trans_Ct ;
drop _6_0 _6_1 _6_2 _6_3 _6_4 _6_5 _6_6 ;
*** encoding is sparse, initialize to zero;
_6_0 = 0;
_6_1 = 0;
_6_2 = 0;
_6_3 = 0;
_6_4 = 0;
_6_5 = 0;
_6_6 = 0;
if missing( G_Total_Trans_Ct ) then do;
   _6_0 = .;
   _6_1 = .;
   _6_2 = .;
   _6_3 = .;
   _6_4 = .;
   _6_5 = .;
   _6_6 = .;
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
            _6_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '1'  then do;
               _6_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '2'  then do;
            _6_2 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '3'  then do;
               _6_3 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '5'  then do;
         if _dm12 = '4'  then do;
            _6_4 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '5'  then do;
               _6_5 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '6'  then do;
            _6_6 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '7'  then do;
               _6_0 = -1;
               _6_1 = -1;
               _6_2 = -1;
               _6_3 = -1;
               _6_4 = -1;
               _6_5 = -1;
               _6_6 = -1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      _6_0 = .;
      _6_1 = .;
      _6_2 = .;
      _6_3 = .;
      _6_4 = .;
      _6_5 = .;
      _6_6 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _P0 = 0.1606531472;
   _P1 = 0.8393468528;
   goto REGDR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: G_Contacts_Count_12_mon ;
_TEMP = 1;
_LP0 = _LP0 + (    10.3817746596154) * _TEMP * _1_0;
_LP0 = _LP0 + (   -1.49876773797484) * _TEMP * _1_1;
_LP0 = _LP0 + (   -2.35801711307433) * _TEMP * _1_2;
_LP0 = _LP0 + (   -2.97249918772596) * _TEMP * _1_3;

***  Effect: G_Customer_Age ;
_TEMP = 1;
_LP0 = _LP0 + (    2.22280714321663) * _TEMP * _2_0;
_LP0 = _LP0 + (    0.55396613507131) * _TEMP * _2_1;
_LP0 = _LP0 + (    0.36763034302522) * _TEMP * _2_2;
_LP0 = _LP0 + (    0.73529014749264) * _TEMP * _2_3;
_LP0 = _LP0 + (    0.28721727135228) * _TEMP * _2_4;
_LP0 = _LP0 + (    0.34944535613054) * _TEMP * _2_5;
_LP0 = _LP0 + (    0.02351069804945) * _TEMP * _2_6;
_LP0 = _LP0 + (    0.02656914315862) * _TEMP * _2_7;
_LP0 = _LP0 + (   -0.52306095830666) * _TEMP * _2_8;
_LP0 = _LP0 + (   -1.58947924989746) * _TEMP * _2_9;

***  Effect: G_Months_Inactive_12_mon ;
_TEMP = 1;
_LP0 = _LP0 + (    1.93442994592416) * _TEMP * _3_0;
_LP0 = _LP0 + (    0.25547544870263) * _TEMP * _3_1;
_LP0 = _LP0 + (   -0.05199559333037) * _TEMP * _3_2;
_LP0 = _LP0 + (   -0.43660685323986) * _TEMP * _3_3;

***  Effect: G_Months_on_book ;
_TEMP = 1;
_LP0 = _LP0 + (    0.33024095014074) * _TEMP * _4_0;
_LP0 = _LP0 + (    1.87406466097242) * _TEMP * _4_1;
_LP0 = _LP0 + (    0.05140677360087) * _TEMP * _4_2;
_LP0 = _LP0 + (   -0.02532161967319) * _TEMP * _4_3;
_LP0 = _LP0 + (   -0.19785598742973) * _TEMP * _4_4;
_LP0 = _LP0 + (    -0.3652879335495) * _TEMP * _4_5;
_LP0 = _LP0 + (    -0.3993425659673) * _TEMP * _4_6;
_LP0 = _LP0 + (   -0.39418210877959) * _TEMP * _4_7;

***  Effect: G_Total_Relationship_Count ;
_TEMP = 1;
_LP0 = _LP0 + (    1.32581361504555) * _TEMP * _5_0;
_LP0 = _LP0 + (   -0.45999950924435) * _TEMP * _5_1;

***  Effect: G_Total_Trans_Ct ;
_TEMP = 1;
_LP0 = _LP0 + (    4.83374456426453) * _TEMP * _6_0;
_LP0 = _LP0 + (    1.58499106292006) * _TEMP * _6_1;
_LP0 = _LP0 + (    1.04107991036594) * _TEMP * _6_2;
_LP0 = _LP0 + (    0.76565700907091) * _TEMP * _6_3;
_LP0 = _LP0 + (    0.22646441643163) * _TEMP * _6_4;
_LP0 = _LP0 + (   -0.24324898771911) * _TEMP * _6_5;
_LP0 = _LP0 + (   -2.40602314074359) * _TEMP * _6_6;

***  Effect: RANGE_LOG_Total_Trans_Amt ;
_TEMP = RANGE_LOG_Total_Trans_Amt ;
_LP0 = _LP0 + (    5.64434364069834 * _TEMP);

***  Effect: RANGE_SQRT_Avg_Utilization_Ratio ;
_TEMP = RANGE_SQRT_Avg_Utilization_Ratio ;
_LP0 = _LP0 + (    -0.7800643379072 * _TEMP);

***  Effect: RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ;
_TEMP = RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ;
_LP0 = _LP0 + (   -1.53057847945614 * _TEMP);

***  Effect: RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ;
_TEMP = RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ;
_LP0 = _LP0 + (   -9.58493912094583 * _TEMP);

***  Effect: RANGE_Total_Revolving_Bal ;
_TEMP = RANGE_Total_Revolving_Bal ;
_LP0 = _LP0 + (   -1.65847459861618 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1;
_TEMP =     7.19103563021546 + _LP0;
if (_TEMP < 0) then do;
   _TEMP = exp(_TEMP);
   _P0 = _TEMP / (1 + _TEMP);
end;
else _P0 = 1 / (1 + exp(-_TEMP));
_P1 = 1.0 - _P0;

REGDR1:

*** Residuals;
if (_Y = .) then do;
   R_Attrition_Flag1 = .;
   R_Attrition_Flag0 = .;
end;
else do;
    label R_Attrition_Flag1 = 'Residual: Attrition_Flag=1' ;
    label R_Attrition_Flag0 = 'Residual: Attrition_Flag=0' ;
   R_Attrition_Flag1 = - _P0;
   R_Attrition_Flag0 = - _P1;
   select( _Y );
      when (0)  R_Attrition_Flag1 = R_Attrition_Flag1 + 1;
      when (1)  R_Attrition_Flag0 = R_Attrition_Flag0 + 1;
   end;
end;

*** Posterior Probabilities and Predicted Level;
label P_Attrition_Flag1 = 'Predicted: Attrition_Flag=1' ;
label P_Attrition_Flag0 = 'Predicted: Attrition_Flag=0' ;
P_Attrition_Flag1 = _P0;
_MAXP = _P0;
_IY = 1;
P_Attrition_Flag0 = _P1;
if (_P1 >  _MAXP + 1E-8) then do;
   _MAXP = _P1;
   _IY = 2;
end;
I_Attrition_Flag = REGDRF[_IY];
U_Attrition_Flag = REGDRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
* Renaming variables for Reg;
*------------------------------------------------------------*;
* Renaming Posterior variables for Reg;
*------------------------------------------------------------*;
drop Reg_P_Attrition_Flag1;
Reg_P_Attrition_Flag1 = P_Attrition_Flag1;
drop Reg_P_Attrition_Flag0;
Reg_P_Attrition_Flag0 = P_Attrition_Flag0;
*------------------------------------------------------------*;
* Renaming _WARN_ variable for Reg;
*------------------------------------------------------------*;
length Reg_WARN_ $4;
drop Reg_WARN_;
Reg_WARN_ = _WARN_;
*------------------------------------------------------------*;
* TOOL: Model Compare Class;
* TYPE: ASSESS;
* NODE: MdlComp;
*------------------------------------------------------------*;
if (P_Attrition_Flag1 ge 0.990197585234) then do;
b_Attrition_Flag = 1;
end;
else
if (P_Attrition_Flag1 ge 0.9713079497028) then do;
b_Attrition_Flag = 2;
end;
else
if (P_Attrition_Flag1 ge 0.9413622779252) then do;
b_Attrition_Flag = 3;
end;
else
if (P_Attrition_Flag1 ge 0.90623362343859) then do;
b_Attrition_Flag = 4;
end;
else
if (P_Attrition_Flag1 ge 0.86963900676805) then do;
b_Attrition_Flag = 5;
end;
else
if (P_Attrition_Flag1 ge 0.83696327169829) then do;
b_Attrition_Flag = 6;
end;
else
if (P_Attrition_Flag1 ge 0.80098554662506) then do;
b_Attrition_Flag = 7;
end;
else
if (P_Attrition_Flag1 ge 0.75337323743076) then do;
b_Attrition_Flag = 8;
end;
else
if (P_Attrition_Flag1 ge 0.70932288049687) then do;
b_Attrition_Flag = 9;
end;
else
if (P_Attrition_Flag1 ge 0.65116241368873) then do;
b_Attrition_Flag = 10;
end;
else
if (P_Attrition_Flag1 ge 0.59576325427898) then do;
b_Attrition_Flag = 11;
end;
else
if (P_Attrition_Flag1 ge 0.53986280182927) then do;
b_Attrition_Flag = 12;
end;
else
if (P_Attrition_Flag1 ge 0.48578259531734) then do;
b_Attrition_Flag = 13;
end;
else
if (P_Attrition_Flag1 ge 0.43873723005184) then do;
b_Attrition_Flag = 14;
end;
else
if (P_Attrition_Flag1 ge 0.39638157218522) then do;
b_Attrition_Flag = 15;
end;
else
if (P_Attrition_Flag1 ge 0.35848189375162) then do;
b_Attrition_Flag = 16;
end;
else
if (P_Attrition_Flag1 ge 0.32952082951798) then do;
b_Attrition_Flag = 17;
end;
else
if (P_Attrition_Flag1 ge 0.3029226127076) then do;
b_Attrition_Flag = 18;
end;
else
if (P_Attrition_Flag1 ge 0.27826999161906) then do;
b_Attrition_Flag = 19;
end;
else
if (P_Attrition_Flag1 ge 0.25869062250737) then do;
b_Attrition_Flag = 20;
end;
else
if (P_Attrition_Flag1 ge 0.23894764398948) then do;
b_Attrition_Flag = 21;
end;
else
if (P_Attrition_Flag1 ge 0.22022877186794) then do;
b_Attrition_Flag = 22;
end;
else
if (P_Attrition_Flag1 ge 0.19929745248639) then do;
b_Attrition_Flag = 23;
end;
else
if (P_Attrition_Flag1 ge 0.18411219291336) then do;
b_Attrition_Flag = 24;
end;
else
if (P_Attrition_Flag1 ge 0.16900023128718) then do;
b_Attrition_Flag = 25;
end;
else
if (P_Attrition_Flag1 ge 0.15564002039625) then do;
b_Attrition_Flag = 26;
end;
else
if (P_Attrition_Flag1 ge 0.14320325622487) then do;
b_Attrition_Flag = 27;
end;
else
if (P_Attrition_Flag1 ge 0.13231998929964) then do;
b_Attrition_Flag = 28;
end;
else
if (P_Attrition_Flag1 ge 0.12396698840121) then do;
b_Attrition_Flag = 29;
end;
else
if (P_Attrition_Flag1 ge 0.11420462925456) then do;
b_Attrition_Flag = 30;
end;
else
if (P_Attrition_Flag1 ge 0.10607303780364) then do;
b_Attrition_Flag = 31;
end;
else
if (P_Attrition_Flag1 ge 0.09878264495373) then do;
b_Attrition_Flag = 32;
end;
else
if (P_Attrition_Flag1 ge 0.09184344570146) then do;
b_Attrition_Flag = 33;
end;
else
if (P_Attrition_Flag1 ge 0.08540675814134) then do;
b_Attrition_Flag = 34;
end;
else
if (P_Attrition_Flag1 ge 0.07842988932644) then do;
b_Attrition_Flag = 35;
end;
else
if (P_Attrition_Flag1 ge 0.07277780771142) then do;
b_Attrition_Flag = 36;
end;
else
if (P_Attrition_Flag1 ge 0.06773226599046) then do;
b_Attrition_Flag = 37;
end;
else
if (P_Attrition_Flag1 ge 0.06358417454533) then do;
b_Attrition_Flag = 38;
end;
else
if (P_Attrition_Flag1 ge 0.05868454555148) then do;
b_Attrition_Flag = 39;
end;
else
if (P_Attrition_Flag1 ge 0.0546555157516) then do;
b_Attrition_Flag = 40;
end;
else
if (P_Attrition_Flag1 ge 0.05020041993104) then do;
b_Attrition_Flag = 41;
end;
else
if (P_Attrition_Flag1 ge 0.04692664079231) then do;
b_Attrition_Flag = 42;
end;
else
if (P_Attrition_Flag1 ge 0.04362222082043) then do;
b_Attrition_Flag = 43;
end;
else
if (P_Attrition_Flag1 ge 0.04018821272522) then do;
b_Attrition_Flag = 44;
end;
else
if (P_Attrition_Flag1 ge 0.03749352667858) then do;
b_Attrition_Flag = 45;
end;
else
if (P_Attrition_Flag1 ge 0.0348774297258) then do;
b_Attrition_Flag = 46;
end;
else
if (P_Attrition_Flag1 ge 0.03229682476753) then do;
b_Attrition_Flag = 47;
end;
else
if (P_Attrition_Flag1 ge 0.03057494373208) then do;
b_Attrition_Flag = 48;
end;
else
if (P_Attrition_Flag1 ge 0.02838167150094) then do;
b_Attrition_Flag = 49;
end;
else
if (P_Attrition_Flag1 ge 0.0264785261706) then do;
b_Attrition_Flag = 50;
end;
else
if (P_Attrition_Flag1 ge 0.02454598752649) then do;
b_Attrition_Flag = 51;
end;
else
if (P_Attrition_Flag1 ge 0.02293702083638) then do;
b_Attrition_Flag = 52;
end;
else
if (P_Attrition_Flag1 ge 0.02141318629938) then do;
b_Attrition_Flag = 53;
end;
else
if (P_Attrition_Flag1 ge 0.01979744749803) then do;
b_Attrition_Flag = 54;
end;
else
if (P_Attrition_Flag1 ge 0.01869393991665) then do;
b_Attrition_Flag = 55;
end;
else
if (P_Attrition_Flag1 ge 0.01732282354064) then do;
b_Attrition_Flag = 56;
end;
else
if (P_Attrition_Flag1 ge 0.01608997638394) then do;
b_Attrition_Flag = 57;
end;
else
if (P_Attrition_Flag1 ge 0.01492325680477) then do;
b_Attrition_Flag = 58;
end;
else
if (P_Attrition_Flag1 ge 0.01387251687795) then do;
b_Attrition_Flag = 59;
end;
else
if (P_Attrition_Flag1 ge 0.0127368991972) then do;
b_Attrition_Flag = 60;
end;
else
if (P_Attrition_Flag1 ge 0.01177309433446) then do;
b_Attrition_Flag = 61;
end;
else
if (P_Attrition_Flag1 ge 0.01090776292219) then do;
b_Attrition_Flag = 62;
end;
else
if (P_Attrition_Flag1 ge 0.01009365791779) then do;
b_Attrition_Flag = 63;
end;
else
if (P_Attrition_Flag1 ge 0.00895666133179) then do;
b_Attrition_Flag = 64;
end;
else
if (P_Attrition_Flag1 ge 0.00816353694481) then do;
b_Attrition_Flag = 65;
end;
else
if (P_Attrition_Flag1 ge 0.00739877105173) then do;
b_Attrition_Flag = 66;
end;
else
if (P_Attrition_Flag1 ge 0.00676197517906) then do;
b_Attrition_Flag = 67;
end;
else
if (P_Attrition_Flag1 ge 0.00623217779632) then do;
b_Attrition_Flag = 68;
end;
else
if (P_Attrition_Flag1 ge 0.00560494247161) then do;
b_Attrition_Flag = 69;
end;
else
if (P_Attrition_Flag1 ge 0.00510280101772) then do;
b_Attrition_Flag = 70;
end;
else
if (P_Attrition_Flag1 ge 0.00463607349843) then do;
b_Attrition_Flag = 71;
end;
else
if (P_Attrition_Flag1 ge 0.00418224608675) then do;
b_Attrition_Flag = 72;
end;
else
if (P_Attrition_Flag1 ge 0.00375376615799) then do;
b_Attrition_Flag = 73;
end;
else
if (P_Attrition_Flag1 ge 0.00335197048413) then do;
b_Attrition_Flag = 74;
end;
else
if (P_Attrition_Flag1 ge 0.0030048702383) then do;
b_Attrition_Flag = 75;
end;
else
if (P_Attrition_Flag1 ge 0.00268287053947) then do;
b_Attrition_Flag = 76;
end;
else
if (P_Attrition_Flag1 ge 0.00240065288368) then do;
b_Attrition_Flag = 77;
end;
else
if (P_Attrition_Flag1 ge 0.00213727396515) then do;
b_Attrition_Flag = 78;
end;
else
if (P_Attrition_Flag1 ge 0.00193345873631) then do;
b_Attrition_Flag = 79;
end;
else
if (P_Attrition_Flag1 ge 0.00172004955199) then do;
b_Attrition_Flag = 80;
end;
else
if (P_Attrition_Flag1 ge 0.00152939533932) then do;
b_Attrition_Flag = 81;
end;
else
if (P_Attrition_Flag1 ge 0.00136099207145) then do;
b_Attrition_Flag = 82;
end;
else
if (P_Attrition_Flag1 ge 0.00119495031218) then do;
b_Attrition_Flag = 83;
end;
else
if (P_Attrition_Flag1 ge 0.00106403628986) then do;
b_Attrition_Flag = 84;
end;
else
if (P_Attrition_Flag1 ge 0.00095553588136) then do;
b_Attrition_Flag = 85;
end;
else
if (P_Attrition_Flag1 ge 0.00082456645406) then do;
b_Attrition_Flag = 86;
end;
else
if (P_Attrition_Flag1 ge 0.00071479194364) then do;
b_Attrition_Flag = 87;
end;
else
if (P_Attrition_Flag1 ge 0.00064149840939) then do;
b_Attrition_Flag = 88;
end;
else
if (P_Attrition_Flag1 ge 0.00057846702698) then do;
b_Attrition_Flag = 89;
end;
else
if (P_Attrition_Flag1 ge 0.00051770200714) then do;
b_Attrition_Flag = 90;
end;
else
if (P_Attrition_Flag1 ge 0.00045274448389) then do;
b_Attrition_Flag = 91;
end;
else
if (P_Attrition_Flag1 ge 0.00039575121735) then do;
b_Attrition_Flag = 92;
end;
else
if (P_Attrition_Flag1 ge 0.00034024517854) then do;
b_Attrition_Flag = 93;
end;
else
if (P_Attrition_Flag1 ge 0.00028957540321) then do;
b_Attrition_Flag = 94;
end;
else
if (P_Attrition_Flag1 ge 0.00025578015855) then do;
b_Attrition_Flag = 95;
end;
else
if (P_Attrition_Flag1 ge 0.00020864126596) then do;
b_Attrition_Flag = 96;
end;
else
if (P_Attrition_Flag1 ge 0.00015207167292) then do;
b_Attrition_Flag = 97;
end;
else
if (P_Attrition_Flag1 ge 0.00010643767401) then do;
b_Attrition_Flag = 98;
end;
else
if (P_Attrition_Flag1 ge 0.00006684262852) then do;
b_Attrition_Flag = 99;
end;
else
do;
b_Attrition_Flag = 100;
end;
*------------------------------------------------------------*;
* Ensmbl: Scoring Code of model 2 of 4;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: Partition Class;
* TYPE: SAMPLE;
* NODE: Part2;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: AutoNeural;
* TYPE: MODEL;
* NODE: AutoNeural2;
*------------------------------------------------------------*;
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
* Renaming variables for AutoNeural2;
*------------------------------------------------------------*;
* Renaming Posterior variables for AutoNeural2;
*------------------------------------------------------------*;
drop AutoNeural2_P_Attrition_Flag1;
AutoNeural2_P_Attrition_Flag1 = P_Attrition_Flag1;
drop AutoNeural2_P_Attrition_Flag0;
AutoNeural2_P_Attrition_Flag0 = P_Attrition_Flag0;
*------------------------------------------------------------*;
* Renaming _WARN_ variable for AutoNeural2;
*------------------------------------------------------------*;
length AutoNeural2_WARN_ $4;
drop AutoNeural2_WARN_;
AutoNeural2_WARN_ = _WARN_;
*------------------------------------------------------------*;
* TOOL: Model Compare Class;
* TYPE: ASSESS;
* NODE: MdlComp5;
*------------------------------------------------------------*;
if (P_Attrition_Flag1 ge 0.99744906578271) then do;
b_Attrition_Flag = 1;
end;
else
if (P_Attrition_Flag1 ge 0.99635450737983) then do;
b_Attrition_Flag = 2;
end;
else
if (P_Attrition_Flag1 ge 0.99437261953019) then do;
b_Attrition_Flag = 3;
end;
else
if (P_Attrition_Flag1 ge 0.99063741196581) then do;
b_Attrition_Flag = 4;
end;
else
if (P_Attrition_Flag1 ge 0.98539358541825) then do;
b_Attrition_Flag = 5;
end;
else
if (P_Attrition_Flag1 ge 0.9775346553137) then do;
b_Attrition_Flag = 6;
end;
else
if (P_Attrition_Flag1 ge 0.9698197297622) then do;
b_Attrition_Flag = 7;
end;
else
if (P_Attrition_Flag1 ge 0.95490307363698) then do;
b_Attrition_Flag = 8;
end;
else
if (P_Attrition_Flag1 ge 0.93555736238583) then do;
b_Attrition_Flag = 9;
end;
else
if (P_Attrition_Flag1 ge 0.9117344640871) then do;
b_Attrition_Flag = 10;
end;
else
if (P_Attrition_Flag1 ge 0.87759911828806) then do;
b_Attrition_Flag = 11;
end;
else
if (P_Attrition_Flag1 ge 0.81563589824461) then do;
b_Attrition_Flag = 12;
end;
else
if (P_Attrition_Flag1 ge 0.72836896896857) then do;
b_Attrition_Flag = 13;
end;
else
if (P_Attrition_Flag1 ge 0.63146309002052) then do;
b_Attrition_Flag = 14;
end;
else
if (P_Attrition_Flag1 ge 0.5168705244164) then do;
b_Attrition_Flag = 15;
end;
else
if (P_Attrition_Flag1 ge 0.40115281182836) then do;
b_Attrition_Flag = 16;
end;
else
if (P_Attrition_Flag1 ge 0.31333911153947) then do;
b_Attrition_Flag = 17;
end;
else
if (P_Attrition_Flag1 ge 0.24967818471111) then do;
b_Attrition_Flag = 18;
end;
else
if (P_Attrition_Flag1 ge 0.19401820248423) then do;
b_Attrition_Flag = 19;
end;
else
if (P_Attrition_Flag1 ge 0.14748182403371) then do;
b_Attrition_Flag = 20;
end;
else
if (P_Attrition_Flag1 ge 0.11706762768184) then do;
b_Attrition_Flag = 21;
end;
else
if (P_Attrition_Flag1 ge 0.09637265170113) then do;
b_Attrition_Flag = 22;
end;
else
if (P_Attrition_Flag1 ge 0.07767934671078) then do;
b_Attrition_Flag = 23;
end;
else
if (P_Attrition_Flag1 ge 0.06234548749853) then do;
b_Attrition_Flag = 24;
end;
else
if (P_Attrition_Flag1 ge 0.05214745505164) then do;
b_Attrition_Flag = 25;
end;
else
if (P_Attrition_Flag1 ge 0.04344024187792) then do;
b_Attrition_Flag = 26;
end;
else
if (P_Attrition_Flag1 ge 0.03720230250312) then do;
b_Attrition_Flag = 27;
end;
else
if (P_Attrition_Flag1 ge 0.03065733069929) then do;
b_Attrition_Flag = 28;
end;
else
if (P_Attrition_Flag1 ge 0.02609968304744) then do;
b_Attrition_Flag = 29;
end;
else
if (P_Attrition_Flag1 ge 0.02207471064273) then do;
b_Attrition_Flag = 30;
end;
else
if (P_Attrition_Flag1 ge 0.01883540999836) then do;
b_Attrition_Flag = 31;
end;
else
if (P_Attrition_Flag1 ge 0.01672922649221) then do;
b_Attrition_Flag = 32;
end;
else
if (P_Attrition_Flag1 ge 0.01425470740608) then do;
b_Attrition_Flag = 33;
end;
else
if (P_Attrition_Flag1 ge 0.01243011017591) then do;
b_Attrition_Flag = 34;
end;
else
if (P_Attrition_Flag1 ge 0.01085445023656) then do;
b_Attrition_Flag = 35;
end;
else
if (P_Attrition_Flag1 ge 0.00953364481037) then do;
b_Attrition_Flag = 36;
end;
else
if (P_Attrition_Flag1 ge 0.00832999171096) then do;
b_Attrition_Flag = 37;
end;
else
if (P_Attrition_Flag1 ge 0.00751449329062) then do;
b_Attrition_Flag = 38;
end;
else
if (P_Attrition_Flag1 ge 0.00669341459008) then do;
b_Attrition_Flag = 39;
end;
else
if (P_Attrition_Flag1 ge 0.00604407948841) then do;
b_Attrition_Flag = 40;
end;
else
if (P_Attrition_Flag1 ge 0.00535521690733) then do;
b_Attrition_Flag = 41;
end;
else
if (P_Attrition_Flag1 ge 0.00495430177513) then do;
b_Attrition_Flag = 42;
end;
else
if (P_Attrition_Flag1 ge 0.00451620799226) then do;
b_Attrition_Flag = 43;
end;
else
if (P_Attrition_Flag1 ge 0.00416705234237) then do;
b_Attrition_Flag = 44;
end;
else
if (P_Attrition_Flag1 ge 0.00385307939378) then do;
b_Attrition_Flag = 45;
end;
else
if (P_Attrition_Flag1 ge 0.00349685893116) then do;
b_Attrition_Flag = 46;
end;
else
if (P_Attrition_Flag1 ge 0.00322334850518) then do;
b_Attrition_Flag = 47;
end;
else
if (P_Attrition_Flag1 ge 0.00302132378211) then do;
b_Attrition_Flag = 48;
end;
else
if (P_Attrition_Flag1 ge 0.00282290213484) then do;
b_Attrition_Flag = 49;
end;
else
if (P_Attrition_Flag1 ge 0.00266569075658) then do;
b_Attrition_Flag = 50;
end;
else
if (P_Attrition_Flag1 ge 0.00250062447579) then do;
b_Attrition_Flag = 51;
end;
else
if (P_Attrition_Flag1 ge 0.00232349462332) then do;
b_Attrition_Flag = 52;
end;
else
if (P_Attrition_Flag1 ge 0.00219545691642) then do;
b_Attrition_Flag = 53;
end;
else
if (P_Attrition_Flag1 ge 0.00207637716027) then do;
b_Attrition_Flag = 54;
end;
else
if (P_Attrition_Flag1 ge 0.00196833017842) then do;
b_Attrition_Flag = 55;
end;
else
if (P_Attrition_Flag1 ge 0.00186363081978) then do;
b_Attrition_Flag = 56;
end;
else
if (P_Attrition_Flag1 ge 0.00178424620068) then do;
b_Attrition_Flag = 57;
end;
else
if (P_Attrition_Flag1 ge 0.00170685474161) then do;
b_Attrition_Flag = 58;
end;
else
if (P_Attrition_Flag1 ge 0.00164048328418) then do;
b_Attrition_Flag = 59;
end;
else
if (P_Attrition_Flag1 ge 0.00156540263436) then do;
b_Attrition_Flag = 60;
end;
else
if (P_Attrition_Flag1 ge 0.00150192939819) then do;
b_Attrition_Flag = 61;
end;
else
if (P_Attrition_Flag1 ge 0.00144881858959) then do;
b_Attrition_Flag = 62;
end;
else
if (P_Attrition_Flag1 ge 0.00139791042541) then do;
b_Attrition_Flag = 63;
end;
else
if (P_Attrition_Flag1 ge 0.00133988878528) then do;
b_Attrition_Flag = 64;
end;
else
if (P_Attrition_Flag1 ge 0.00128268626103) then do;
b_Attrition_Flag = 65;
end;
else
if (P_Attrition_Flag1 ge 0.00123359384492) then do;
b_Attrition_Flag = 66;
end;
else
if (P_Attrition_Flag1 ge 0.00118857576201) then do;
b_Attrition_Flag = 67;
end;
else
if (P_Attrition_Flag1 ge 0.00113350823534) then do;
b_Attrition_Flag = 68;
end;
else
if (P_Attrition_Flag1 ge 0.00108857863621) then do;
b_Attrition_Flag = 69;
end;
else
if (P_Attrition_Flag1 ge 0.0010453684503) then do;
b_Attrition_Flag = 70;
end;
else
if (P_Attrition_Flag1 ge 0.00100559812363) then do;
b_Attrition_Flag = 71;
end;
else
if (P_Attrition_Flag1 ge 0.00096690729781) then do;
b_Attrition_Flag = 72;
end;
else
if (P_Attrition_Flag1 ge 0.00093405125846) then do;
b_Attrition_Flag = 73;
end;
else
if (P_Attrition_Flag1 ge 0.00089527626304) then do;
b_Attrition_Flag = 74;
end;
else
if (P_Attrition_Flag1 ge 0.00085556765593) then do;
b_Attrition_Flag = 75;
end;
else
if (P_Attrition_Flag1 ge 0.00082280755792) then do;
b_Attrition_Flag = 76;
end;
else
if (P_Attrition_Flag1 ge 0.00078930983097) then do;
b_Attrition_Flag = 77;
end;
else
if (P_Attrition_Flag1 ge 0.00076316709915) then do;
b_Attrition_Flag = 78;
end;
else
if (P_Attrition_Flag1 ge 0.00073594842937) then do;
b_Attrition_Flag = 79;
end;
else
if (P_Attrition_Flag1 ge 0.00071206594174) then do;
b_Attrition_Flag = 80;
end;
else
if (P_Attrition_Flag1 ge 0.00068602350784) then do;
b_Attrition_Flag = 81;
end;
else
if (P_Attrition_Flag1 ge 0.00065676604604) then do;
b_Attrition_Flag = 82;
end;
else
if (P_Attrition_Flag1 ge 0.00062876264318) then do;
b_Attrition_Flag = 83;
end;
else
if (P_Attrition_Flag1 ge 0.00060574868527) then do;
b_Attrition_Flag = 84;
end;
else
if (P_Attrition_Flag1 ge 0.00058102646487) then do;
b_Attrition_Flag = 85;
end;
else
if (P_Attrition_Flag1 ge 0.00055228175174) then do;
b_Attrition_Flag = 86;
end;
else
if (P_Attrition_Flag1 ge 0.00052822458656) then do;
b_Attrition_Flag = 87;
end;
else
if (P_Attrition_Flag1 ge 0.00050364655753) then do;
b_Attrition_Flag = 88;
end;
else
if (P_Attrition_Flag1 ge 0.00047152651059) then do;
b_Attrition_Flag = 89;
end;
else
if (P_Attrition_Flag1 ge 0.00043646007079) then do;
b_Attrition_Flag = 90;
end;
else
if (P_Attrition_Flag1 ge 0.00039948960554) then do;
b_Attrition_Flag = 91;
end;
else
if (P_Attrition_Flag1 ge 0.00036092211382) then do;
b_Attrition_Flag = 92;
end;
else
if (P_Attrition_Flag1 ge 0.00032034310403) then do;
b_Attrition_Flag = 93;
end;
else
if (P_Attrition_Flag1 ge 0.00027852018756) then do;
b_Attrition_Flag = 94;
end;
else
if (P_Attrition_Flag1 ge 0.0002218440242) then do;
b_Attrition_Flag = 95;
end;
else
if (P_Attrition_Flag1 ge 0.00015411598571) then do;
b_Attrition_Flag = 96;
end;
else
if (P_Attrition_Flag1 ge 0.00011243952293) then do;
b_Attrition_Flag = 97;
end;
else
if (P_Attrition_Flag1 ge 0.00008042897946) then do;
b_Attrition_Flag = 98;
end;
else
if (P_Attrition_Flag1 ge 0.00005934359105) then do;
b_Attrition_Flag = 99;
end;
else
do;
b_Attrition_Flag = 100;
end;
*------------------------------------------------------------*;
* Ensmbl: Scoring Code of model 3 of 4;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: Extension Class;
* TYPE: MODEL;
* NODE: Boost2;
*------------------------------------------------------------*;
****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_Attrition_Flag  $   17;
LENGTH I_Attrition_Flag  $   17;
LENGTH U_Attrition_Flag  $   17;
LENGTH _WARN_  $    4;

******              LABELS FOR NEW VARIABLES              ******;
label P_Attrition_Flag0 = 'Predicted: Attrition_Flag=0' ;
      P_Attrition_Flag0  = 0;
label P_Attrition_Flag1 = 'Predicted: Attrition_Flag=1' ;
      P_Attrition_Flag1  = 0;
label Q_Attrition_Flag0 = 'Unadjusted P: Attrition_Flag=0' ;
      Q_Attrition_Flag0  = 0;
label Q_Attrition_Flag1 = 'Unadjusted P: Attrition_Flag=1' ;
      Q_Attrition_Flag1  = 0;
label R_Attrition_Flag0 = 'Residual: Attrition_Flag=0' ;
label R_Attrition_Flag1 = 'Residual: Attrition_Flag=1' ;
label F_Attrition_Flag = 'From: Attrition_Flag' ;
label I_Attrition_Flag = 'Into: Attrition_Flag' ;
label U_Attrition_Flag = 'Unnormalized Into: Attrition_Flag' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_17 $     17; DROP _ARBFMT_17;
_ARBFMT_17 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


_ARBFMT_17 = PUT( Attrition_Flag , $CHAR17.);
 %DMNORMCP( _ARBFMT_17, F_Attrition_Flag );

 DROP _ARB_F_;
 DROP _ARB_BADF_;
     _ARB_F_ = -0.826536227;
     _ARB_BADF_ = 0;
******             ASSIGN OBSERVATION TO NODE             ******;
 DROP _ARB_P_;
 _ARB_P_ = 0;
 DROP _ARB_PPATH_; _ARB_PPATH_ = 1;

********** LEAF     1  NODE   428 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

   DROP _BRANCH_;
  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.1045992785;
    END;
  END;

********** LEAF     2  NODE   430 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.22804926499801 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0027124412;
      END;
    END;
  END;

********** LEAF     3  NODE   432 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.22804926499801 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF _ARBFMT_12 IN ('5' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.034244125;
        END;
      END;
    END;
  END;

********** LEAF     4  NODE   433 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.22804926499801 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF _ARBFMT_12 IN ('7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '5' ,'6' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.054043982;
        END;
      END;
    END;
  END;

********** LEAF     5  NODE   435 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0817684262;
    END;
  END;

********** LEAF     6  NODE   437 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.23619388160508 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0073624324;
      END;
    END;
  END;

********** LEAF     7  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.23619388160508 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF _ARBFMT_12 IN ('5' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.032826397;
        END;
      END;
    END;
  END;

********** LEAF     8  NODE   440 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.23619388160508 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF _ARBFMT_12 IN ('7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '5' ,'6' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.055585859;
        END;
      END;
    END;
  END;

********** LEAF     9  NODE   442 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37400014963323 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0922464651;
    END;
  END;

********** LEAF    10  NODE   444 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.22804926499801 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0297189504;
      END;
    END;
  END;

********** LEAF    11  NODE   448 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.22804926499801 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '4' ,'3' ,'2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 1;
          ELSE IF _ARBFMT_12 NOTIN (
            '2' ,'1' ,'3' ,'4'
             ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.042286461;
          END;
        END;
      END;
    END;
  END;

********** LEAF    12  NODE   449 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.22804926499801 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '4' ,'3' ,'2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.054385149;
          END;
        END;
      END;
    END;
  END;

********** LEAF    13  NODE   447 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.22804926499801 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.029164223;
        END;
      END;
    END;
  END;

********** LEAF    14  NODE   451 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.063561122;
    END;
  END;

********** LEAF    15  NODE   455 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('5' ,'6' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        RANGE_Total_Revolving_Bal  <     0.49284862932061 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0102725415;
        END;
      END;
    END;
  END;

********** LEAF    16  NODE   456 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('5' ,'6' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
            0.49284862932061 <= RANGE_Total_Revolving_Bal  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.031447513;
        END;
      END;
    END;
  END;

********** LEAF    17  NODE   457 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.47594472272823 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.05588301;
        END;
      END;
    END;
  END;

********** LEAF    18  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
            0.47594472272823 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.03766065;
        END;
      END;
    END;
  END;

********** LEAF    19  NODE   460 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0613018418;
    END;
  END;

********** LEAF    20  NODE   462 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ,'5' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.003600549;
      END;
    END;
  END;

********** LEAF    21  NODE   466 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.48664832152862 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
          RANGE_SQRT_Avg_Utilization_Ratio  <     0.56464025927127 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_SQRT_Avg_Utilization_Ratio  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.047592723;
          END;
        END;
      END;
    END;
  END;

********** LEAF    22  NODE   467 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.48664832152862 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
              0.56464025927127 <= RANGE_SQRT_Avg_Utilization_Ratio  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.053349275;
          END;
        END;
      END;
    END;
  END;

********** LEAF    23  NODE   465 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
            0.48664832152862 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.03462982;
        END;
      END;
    END;
  END;

********** LEAF    24  NODE   469 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0630716894;
    END;
  END;

********** LEAF    25  NODE   471 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0109970924;
      END;
    END;
  END;

********** LEAF    26  NODE   473 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.28518404401576 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.05538916;
        END;
      END;
    END;
  END;

********** LEAF    27  NODE   474 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.28518404401576 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.027004035;
        END;
      END;
    END;
  END;

********** LEAF    28  NODE   476 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <     0.22328168454509 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0530259341;
    END;
  END;

********** LEAF    29  NODE   478 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.22328168454509 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.40907183756901 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.004722278;
      END;
    END;
  END;

********** LEAF    30  NODE   482 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.22328168454509 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.40907183756901 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.30220912350581 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
          RANGE_SQRT_Avg_Utilization_Ratio  <     0.62200219052453 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_SQRT_Avg_Utilization_Ratio  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.051940045;
          END;
        END;
      END;
    END;
  END;

********** LEAF    31  NODE   483 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.22328168454509 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.40907183756901 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.30220912350581 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
              0.62200219052453 <= RANGE_SQRT_Avg_Utilization_Ratio  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.038563432;
          END;
        END;
      END;
    END;
  END;

********** LEAF    32  NODE   481 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.22328168454509 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.40907183756901 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.30220912350581 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.026973064;
        END;
      END;
    END;
  END;

********** LEAF    33  NODE   485 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0506362568;
    END;
  END;

********** LEAF    34  NODE   487 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0097788696;
      END;
    END;
  END;

********** LEAF    35  NODE   491 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49086441378778 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.30474564505995 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.054896463;
          END;
        END;
      END;
    END;
  END;

********** LEAF    36  NODE   492 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49086441378778 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.30474564505995 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.037087544;
          END;
        END;
      END;
    END;
  END;

********** LEAF    37  NODE   490 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
            0.49086441378778 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.01448366;
        END;
      END;
    END;
  END;

********** LEAF    38  NODE   494 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0457745461;
    END;
  END;

********** LEAF    39  NODE   496 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0075606353;
      END;
    END;
  END;

********** LEAF    40  NODE   500 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49474718712517 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 1;
          ELSE IF _ARBFMT_12 NOTIN (
            '2' ,'1' ,'3' ,'4'
             ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.039856561;
          END;
        END;
      END;
    END;
  END;

********** LEAF    41  NODE   501 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49474718712517 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.053809596;
          END;
        END;
      END;
    END;
  END;

********** LEAF    42  NODE   499 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
            0.49474718712517 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.01069265;
        END;
      END;
    END;
  END;

********** LEAF    43  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <     0.23659117997616 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0421503545;
    END;
  END;

********** LEAF    44  NODE   507 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23659117997616 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.79439809296781 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        RANGE_Total_Revolving_Bal  <     0.44835121176003 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.01626051;
        END;
      END;
    END;
  END;

********** LEAF    45  NODE   509 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23659117997616 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.79439809296781 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
            0.44835121176003 <= RANGE_Total_Revolving_Bal  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('2' ) THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
          ELSE IF _ARBFMT_12 NOTIN (
            '2' ,'0' ,'1'
             ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.046279887;
          END;
        END;
      END;
    END;
  END;

********** LEAF    46  NODE   510 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23659117997616 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.79439809296781 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
            0.44835121176003 <= RANGE_Total_Revolving_Bal  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.035871541;
          END;
        END;
      END;
    END;
  END;

********** LEAF    47  NODE   506 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23659117997616 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.79439809296781 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0030128746;
      END;
    END;
  END;

********** LEAF    48  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38007024104385 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0497743406;
    END;
  END;

********** LEAF    49  NODE   514 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38007024104385 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.21136273341279 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0123660843;
      END;
    END;
  END;

********** LEAF    50  NODE   518 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38007024104385 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.21136273341279 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.24670188388041 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.041123817;
          END;
        END;
      END;
    END;
  END;

********** LEAF    51  NODE   519 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38007024104385 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.21136273341279 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.24670188388041 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.040213411;
          END;
        END;
      END;
    END;
  END;

********** LEAF    52  NODE   517 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38007024104385 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.21136273341279 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.026234889;
        END;
      END;
    END;
  END;

********** LEAF    53  NODE   521 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37400014963323 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.043886713;
    END;
  END;

********** LEAF    54  NODE   525 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41979169659064 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.001017246;
        END;
      END;
    END;
  END;

********** LEAF    55  NODE   527 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.41979169659064 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.02335928;
          END;
        END;
      END;
    END;
  END;

********** LEAF    56  NODE   528 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.41979169659064 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 2;
          ELSE IF _ARBFMT_12 NOTIN (
            '2' ,'1' ,'0' ,'3' ,'4'
             ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.047790799;
          END;
        END;
      END;
    END;
  END;

********** LEAF    57  NODE   524 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0173928343;
      END;
    END;
  END;

********** LEAF    58  NODE   530 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37829503093173 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.041738281;
    END;
  END;

********** LEAF    59  NODE   532 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37829503093173 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <      0.2290425109257 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0082119717;
      END;
    END;
  END;

********** LEAF    60  NODE   536 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37829503093173 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
           0.2290425109257 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '4' ,'3' ,'2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.27851589196553 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.044555744;
          END;
        END;
      END;
    END;
  END;

********** LEAF    61  NODE   537 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37829503093173 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
           0.2290425109257 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '4' ,'3' ,'2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.27851589196553 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.031380518;
          END;
        END;
      END;
    END;
  END;

********** LEAF    62  NODE   535 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37829503093173 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
           0.2290425109257 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.02057751;
        END;
      END;
    END;
  END;

********** LEAF    63  NODE   539 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <      0.2367898291617 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0319055855;
    END;
  END;

********** LEAF    64  NODE   543 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
         0.2367898291617 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.77850615812475 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.043880494;
        END;
      END;
    END;
  END;

********** LEAF    65  NODE   544 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
         0.2367898291617 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.77850615812475 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.020947933;
        END;
      END;
    END;
  END;

********** LEAF    66  NODE   542 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
         0.2367898291617 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.77850615812475 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0050678941;
      END;
    END;
  END;

********** LEAF    67  NODE   546 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'4' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0363958078;
    END;
  END;

********** LEAF    68  NODE   548 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'4' ,'2' ,'0' ,'3' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('3' ,'5' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0104030617;
      END;
    END;
  END;

********** LEAF    69  NODE   550 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'4' ,'2' ,'0' ,'3' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '3' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.28548042279281 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.054548117;
        END;
      END;
    END;
  END;

********** LEAF    70  NODE   551 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'4' ,'2' ,'0' ,'3' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '3' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.28548042279281 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.019301789;
        END;
      END;
    END;
  END;

********** LEAF    71  NODE   553 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <     0.23698847834723 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.027248141;
    END;
  END;

********** LEAF    72  NODE   555 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23698847834723 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.11597107114438 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034193445;
      END;
    END;
  END;

********** LEAF    73  NODE   557 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23698847834723 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11597107114438 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.24328152974322 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0154365286;
        END;
      END;
    END;
  END;

********** LEAF    74  NODE   559 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23698847834723 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11597107114438 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.24328152974322 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
          RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.47748849850681 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.049856436;
          END;
        END;
      END;
    END;
  END;

********** LEAF    75  NODE   560 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23698847834723 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11597107114438 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.24328152974322 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
              0.47748849850681 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.015807159;
          END;
        END;
      END;
    END;
  END;

********** LEAF    76  NODE   564 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.41219705999205 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0541323983;
      END;
    END;
  END;

********** LEAF    77  NODE   565 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.41219705999205 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.01089896;
      END;
    END;
  END;

********** LEAF    78  NODE   568 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49444959475139 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        RANGE_Total_Revolving_Bal  <      0.4274930472785 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.044680592;
        END;
      END;
    END;
  END;

********** LEAF    79  NODE   569 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49444959475139 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
             0.4274930472785 <= RANGE_Total_Revolving_Bal  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.047927098;
        END;
      END;
    END;
  END;

********** LEAF    80  NODE   567 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
          0.49444959475139 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.003558914;
      END;
    END;
  END;

********** LEAF    81  NODE   573 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <      0.1061610785991 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034407342;
      END;
    END;
  END;

********** LEAF    82  NODE   575 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
           0.1061610785991 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <      0.1862245880802 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0339634892;
        END;
      END;
    END;
  END;

********** LEAF    83  NODE   577 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
           0.1061610785991 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
             0.1862245880802 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          RANGE_Total_Revolving_Bal  <     0.38100913786253 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.032518636;
          END;
        END;
      END;
    END;
  END;

********** LEAF    84  NODE   578 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
           0.1061610785991 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
             0.1862245880802 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
              0.38100913786253 <= RANGE_Total_Revolving_Bal  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.037844446;
          END;
        END;
      END;
    END;
  END;

********** LEAF    85  NODE   572 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.046605109;
    END;
  END;

********** LEAF    86  NODE   580 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37507848052683 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0310825769;
    END;
  END;

********** LEAF    87  NODE   584 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37507848052683 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41914981269932 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.000590681;
        END;
      END;
    END;
  END;

********** LEAF    88  NODE   586 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37507848052683 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.41914981269932 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <      0.2811604284011 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.04092189;
          END;
        END;
      END;
    END;
  END;

********** LEAF    89  NODE   587 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37507848052683 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.41914981269932 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
               0.2811604284011 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.012086849;
          END;
        END;
      END;
    END;
  END;

********** LEAF    90  NODE   583 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37507848052683 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0183606008;
      END;
    END;
  END;

********** LEAF    91  NODE   589 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0274623619;
    END;
  END;

********** LEAF    92  NODE   593 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
        RANGE_SQRT_Avg_Utilization_Ratio  <     0.43782572445401 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Avg_Utilization_Ratio  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0208727558;
        END;
      END;
    END;
  END;

********** LEAF    93  NODE   594 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
            0.43782572445401 <= RANGE_SQRT_Avg_Utilization_Ratio  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.026357235;
        END;
      END;
    END;
  END;

********** LEAF    94  NODE   595 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0' ,'3' ,'4'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('4' ,'5' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.020622536;
        END;
      END;
    END;
  END;

********** LEAF    95  NODE   596 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0' ,'3' ,'4'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '4' ,'5' ,'6' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.050113224;
        END;
      END;
    END;
  END;

********** LEAF    96  NODE   598 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0239581752;
    END;
  END;

********** LEAF    97  NODE   604 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.29234595513632 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.18294045528683 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.010969248;
          END;
        END;
      END;
    END;
  END;

********** LEAF    98  NODE   605 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.29234595513632 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.0555632;
          END;
        END;
      END;
    END;
  END;

********** LEAF    99  NODE   603 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.29234595513632 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.001264854;
        END;
      END;
    END;
  END;

********** LEAF   100  NODE   601 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'4' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.014706675;
      END;
    END;
  END;

********** LEAF   101  NODE   609 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.48609455701231 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0418341645;
      END;
    END;
  END;

********** LEAF   102  NODE   610 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.48609455701231 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.009601541;
      END;
    END;
  END;

********** LEAF   103  NODE   613 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'4' ,'2' ,'0' ,'5' ,'3' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.32881447903816 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
        RANGE_SQRT_Avg_Utilization_Ratio  <      0.3465804880041 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.042279408;
        END;
      END;
    END;
  END;

********** LEAF   104  NODE   614 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'4' ,'2' ,'0' ,'5' ,'3' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.32881447903816 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
             0.3465804880041 <= RANGE_SQRT_Avg_Utilization_Ratio  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Avg_Utilization_Ratio  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.039193002;
        END;
      END;
    END;
  END;

********** LEAF   105  NODE   612 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'4' ,'2' ,'0' ,'5' ,'3' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.32881447903816 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0223611936;
      END;
    END;
  END;

********** LEAF   106  NODE   618 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.40504568931267 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0414319811;
      END;
    END;
  END;

********** LEAF   107  NODE   619 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.40504568931267 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.011886811;
      END;
    END;
  END;

********** LEAF   108  NODE   620 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.005099867;
      END;
    END;
  END;

********** LEAF   109  NODE   622 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
        RANGE_SQRT_Avg_Utilization_Ratio  <     0.36073287221949 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.041166769;
        END;
      END;
    END;
  END;

********** LEAF   110  NODE   623 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
            0.36073287221949 <= RANGE_SQRT_Avg_Utilization_Ratio  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Avg_Utilization_Ratio  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.047050125;
        END;
      END;
    END;
  END;

********** LEAF   111  NODE   625 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <      0.2197059992054 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.020569738;
    END;
  END;

********** LEAF   112  NODE   627 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
         0.2197059992054 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.11437776880439 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030697735;
      END;
    END;
  END;

********** LEAF   113  NODE   629 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
         0.2197059992054 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11437776880439 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'5' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0114646757;
        END;
      END;
    END;
  END;

********** LEAF   114  NODE   630 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
         0.2197059992054 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11437776880439 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '1' ,'3' ,'4' ,'2' ,'5' ,'6' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.042983099;
        END;
      END;
    END;
  END;

********** LEAF   115  NODE   632 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37579564877589 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0264784936;
    END;
  END;

********** LEAF   116  NODE   636 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF _ARBFMT_12 IN ('4' ) THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.045984742;
        END;
      END;
    END;
  END;

********** LEAF   117  NODE   637 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF _ARBFMT_12 IN ('3' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '4' ,'3'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.016432357;
        END;
      END;
    END;
  END;

********** LEAF   118  NODE   638 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ,'4' ,'2' ,'0' ,'5' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '1' ,'4' ,'2' ,'0' ,'5' ,'6' ,'3' ,'7'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0254227288;
        END;
      END;
    END;
  END;

********** LEAF   119  NODE   639 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('3' ,'7' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.01765162;
        END;
      END;
    END;
  END;

********** LEAF   120  NODE   643 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <      0.1060119204348 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034617141;
      END;
    END;
  END;

********** LEAF   121  NODE   647 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
           0.1060119204348 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '6' ,'7' ,'1' ,'3' ,'4' ,'2' ,'5'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
          RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.48270040644005 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.046805944;
          END;
        END;
      END;
    END;
  END;

********** LEAF   122  NODE   648 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
           0.1060119204348 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '6' ,'7' ,'1' ,'3' ,'4' ,'2' ,'5'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
              0.48270040644005 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.008213181;
          END;
        END;
      END;
    END;
  END;

********** LEAF   123  NODE   646 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
           0.1060119204348 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'5' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0253187108;
        END;
      END;
    END;
  END;

********** LEAF   124  NODE   642 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0377261083;
    END;
  END;

********** LEAF   125  NODE   650 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.043137753;
    END;
  END;

********** LEAF   126  NODE   652 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0240444961;
      END;
    END;
  END;

********** LEAF   127  NODE   654 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.48422264453698 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.034240927;
        END;
      END;
    END;
  END;

********** LEAF   128  NODE   655 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
            0.48422264453698 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0066529834;
        END;
      END;
    END;
  END;

********** LEAF   129  NODE   657 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0193865122;
    END;
  END;

********** LEAF   130  NODE   659 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.12088807549837 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028744419;
      END;
    END;
  END;

********** LEAF   131  NODE   661 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.12088807549837 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0111541124;
        END;
      END;
    END;
  END;

********** LEAF   132  NODE   663 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.12088807549837 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ,'7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '1' ,'3' ,'4' ,'2' ,'6' ,'5' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.44802562027781 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.040491276;
          END;
        END;
      END;
    END;
  END;

********** LEAF   133  NODE   664 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.12088807549837 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ,'7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '1' ,'3' ,'4' ,'2' ,'6' ,'5' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
              0.44802562027781 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.020649344;
          END;
        END;
      END;
    END;
  END;

********** LEAF   134  NODE   668 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.11330223106746 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.029544374;
      END;
    END;
  END;

********** LEAF   135  NODE   670 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11330223106746 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <      0.2072693282074 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0216402843;
        END;
      END;
    END;
  END;

********** LEAF   136  NODE   672 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11330223106746 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
             0.2072693282074 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.28945918631447 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.057854909;
          END;
        END;
      END;
    END;
  END;

********** LEAF   137  NODE   673 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11330223106746 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
             0.2072693282074 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.28945918631447 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.011181647;
          END;
        END;
      END;
    END;
  END;

********** LEAF   138  NODE   667 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0333781974;
    END;
  END;

********** LEAF   139  NODE   677 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.31287246722288 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0305059071;
      END;
    END;
  END;

********** LEAF   140  NODE   678 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.31287246722288 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001906206;
      END;
    END;
  END;

********** LEAF   141  NODE   679 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0' ,'3' ,'4'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034089234;
      END;
    END;
  END;

********** LEAF   142  NODE   680 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0' ,'3' ,'4'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.007439854;
      END;
    END;
  END;

********** LEAF   143  NODE   684 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.10809863645676 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028283317;
      END;
    END;
  END;

********** LEAF   144  NODE   686 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.10809863645676 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.19298114740685 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0200680906;
        END;
      END;
    END;
  END;

********** LEAF   145  NODE   688 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.10809863645676 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.19298114740685 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          RANGE_Total_Revolving_Bal  <     0.39153754469606 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.026920067;
          END;
        END;
      END;
    END;
  END;

********** LEAF   146  NODE   689 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.10809863645676 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.19298114740685 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
              0.39153754469606 <= RANGE_Total_Revolving_Bal  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.023906208;
          END;
        END;
      END;
    END;
  END;

********** LEAF   147  NODE   683 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.034032967;
    END;
  END;

********** LEAF   148  NODE   693 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.11322802217686 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.00670203;
      END;
    END;
  END;

********** LEAF   149  NODE   694 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11322802217686 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0339896834;
      END;
    END;
  END;

********** LEAF   150  NODE   697 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49415182315892 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        RANGE_Total_Revolving_Bal  <      0.4274930472785 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.03732301;
        END;
      END;
    END;
  END;

********** LEAF   151  NODE   698 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49415182315892 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
             0.4274930472785 <= RANGE_Total_Revolving_Bal  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.042970021;
        END;
      END;
    END;
  END;

********** LEAF   152  NODE   696 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
          0.49415182315892 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.000122651;
      END;
    END;
  END;

********** LEAF   153  NODE   700 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.040247872;
    END;
  END;

********** LEAF   154  NODE   702 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38569601077742 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0291280363;
      END;
    END;
  END;

********** LEAF   155  NODE   706 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.38569601077742 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.30980534824028 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
          RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.46625924006166 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0078480742;
          END;
        END;
      END;
    END;
  END;

********** LEAF   156  NODE   707 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.38569601077742 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.30980534824028 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
              0.46625924006166 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.032794021;
          END;
        END;
      END;
    END;
  END;

********** LEAF   157  NODE   705 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.38569601077742 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.30980534824028 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0295503488;
        END;
      END;
    END;
  END;

********** LEAF   158  NODE   711 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.11704463133173 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.022613898;
      END;
    END;
  END;

********** LEAF   159  NODE   713 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11704463133173 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <      0.2129937229064 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0129374328;
        END;
      END;
    END;
  END;

********** LEAF   160  NODE   715 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11704463133173 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
             0.2129937229064 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.29195264481063 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.053436306;
          END;
        END;
      END;
    END;
  END;

********** LEAF   161  NODE   716 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11704463133173 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
             0.2129937229064 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.29195264481063 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0106403759;
          END;
        END;
      END;
    END;
  END;

********** LEAF   162  NODE   710 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0278622954;
    END;
  END;

********** LEAF   163  NODE   718 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38934363250998 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0170729705;
    END;
  END;

********** LEAF   164  NODE   722 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38934363250998 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('4' ,'5' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '4' ,'5' ,'6' ,'1' ,'3' ,'2' ,'7'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.016485182;
        END;
      END;
    END;
  END;

********** LEAF   165  NODE   723 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38934363250998 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'7' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.034796027;
        END;
      END;
    END;
  END;

********** LEAF   166  NODE   721 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38934363250998 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.004509755;
      END;
    END;
  END;

********** LEAF   167  NODE   725 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0155710447;
    END;
  END;

********** LEAF   168  NODE   729 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.79717918156535 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.15203118569294 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.025639538;
        END;
      END;
    END;
  END;

********** LEAF   169  NODE   731 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.79717918156535 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.15203118569294 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Months_on_book , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('2' ,'3' ,'1' ) THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.012318179;
          END;
        END;
      END;
    END;
  END;

********** LEAF   170  NODE   732 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.79717918156535 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.15203118569294 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Months_on_book , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('7' ,'4' ,'6' ,'5' ,'0' ,'8' ) THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( G_Months_on_book  ) THEN _BRANCH_ = 2;
          ELSE IF _ARBFMT_12 NOTIN (
            '2' ,'3' ,'1' ,'7' ,'4' ,'6' ,'5' ,'0' ,'8'
             ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.03653848;
          END;
        END;
      END;
    END;
  END;

********** LEAF   171  NODE   728 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        0.23083035359555 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.79717918156535 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0153657966;
      END;
    END;
  END;

********** LEAF   172  NODE   740 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.12817721853559 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.026099819;
        END;
      END;
    END;
  END;

********** LEAF   173  NODE   741 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.12817721853559 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0053425704;
        END;
      END;
    END;
  END;

********** LEAF   174  NODE   737 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0407717253;
      END;
    END;
  END;

********** LEAF   175  NODE   738 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45310510050495 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.05071279;
      END;
    END;
  END;

********** LEAF   176  NODE   739 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.45310510050495 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.018162515;
      END;
    END;
  END;

********** LEAF   177  NODE   745 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.11589700702189 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.022558434;
      END;
    END;
  END;

********** LEAF   178  NODE   749 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11589700702189 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ,'6' ,'4' ,'3' ,'1' ,'2' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Customer_Age  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '5' ,'6' ,'4' ,'3' ,'1' ,'2' ,'7' ,'9' ,'8' ,'10'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'5' ,'6' ) THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
          ELSE IF _ARBFMT_12 NOTIN (
            '1' ,'3' ,'4' ,'2' ,'5' ,'6' ,'7'
             ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0223571802;
          END;
        END;
      END;
    END;
  END;

********** LEAF   179  NODE   750 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11589700702189 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ,'6' ,'4' ,'3' ,'1' ,'2' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Customer_Age  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '5' ,'6' ,'4' ,'3' ,'1' ,'2' ,'7' ,'9' ,'8' ,'10'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('7' ) THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.035106467;
          END;
        END;
      END;
    END;
  END;

********** LEAF   180  NODE   748 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11589700702189 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ,'9' ,'8' ,'10' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.025646941;
        END;
      END;
    END;
  END;

********** LEAF   181  NODE   744 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0235333038;
    END;
  END;

********** LEAF   182  NODE   752 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0210894727;
    END;
  END;

********** LEAF   183  NODE   754 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.04364982;
      END;
    END;
  END;

********** LEAF   184  NODE   756 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
        RANGE_Total_Revolving_Bal  <     0.25526420341676 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0147092457;
        END;
      END;
    END;
  END;

********** LEAF   185  NODE   758 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
            0.25526420341676 <= RANGE_Total_Revolving_Bal  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Months_on_book , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('2' ,'3' ) THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0000326388;
          END;
        END;
      END;
    END;
  END;

********** LEAF   186  NODE   759 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
            0.25526420341676 <= RANGE_Total_Revolving_Bal  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_12 = PUT( G_Months_on_book , BEST12.);
         %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('1' ,'7' ,'4' ,'6' ,'5' ,'0' ,'8' ) THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( G_Months_on_book  ) THEN _BRANCH_ = 2;
          ELSE IF _ARBFMT_12 NOTIN (
            '2' ,'3' ,'1' ,'7' ,'4' ,'6' ,'5' ,'0' ,'8'
             ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.030923494;
          END;
        END;
      END;
    END;
  END;

********** LEAF   187  NODE   763 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0' ,'3' ,'4'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.31426301152165 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0279324218;
      END;
    END;
  END;

********** LEAF   188  NODE   764 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0' ,'3' ,'4'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
          0.31426301152165 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0001731074;
      END;
    END;
  END;

********** LEAF   189  NODE   765 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'4' ,'3'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.005569302;
      END;
    END;
  END;

********** LEAF   190  NODE   766 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033544945;
      END;
    END;
  END;

********** LEAF   191  NODE   768 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0190909697;
    END;
  END;

********** LEAF   192  NODE   770 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ) THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.039419495;
      END;
    END;
  END;

********** LEAF   193  NODE   774 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.31064690667939 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.19231390131207 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0066587543;
          END;
        END;
      END;
    END;
  END;

********** LEAF   194  NODE   775 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.31064690667939 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.19231390131207 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.049778853;
          END;
        END;
      END;
    END;
  END;

********** LEAF   195  NODE   773 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'0' ,'1'
         ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.31064690667939 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0217200649;
        END;
      END;
    END;
  END;

********** LEAF   196  NODE   777 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.40243572649187 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0167411462;
    END;
  END;

********** LEAF   197  NODE   783 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.40243572649187 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.31884259588656 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.47073759885647 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.25018163875117 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0001930265;
          END;
        END;
      END;
    END;
  END;

********** LEAF   198  NODE   784 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.40243572649187 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.31884259588656 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.47073759885647 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.25018163875117 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.048691636;
          END;
        END;
      END;
    END;
  END;

********** LEAF   199  NODE   782 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.40243572649187 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.31884259588656 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.47073759885647 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.03956179;
        END;
      END;
    END;
  END;

********** LEAF   200  NODE   780 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.40243572649187 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.31884259588656 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0257907981;
      END;
    END;
  END;

********** LEAF   201  NODE   786 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38934363250998 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0156926699;
    END;
  END;

********** LEAF   202  NODE   790 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38934363250998 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.32317969473064 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.44712325134292 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.007064824;
        END;
      END;
    END;
  END;

********** LEAF   203  NODE   791 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38934363250998 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.32317969473064 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.44712325134292 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.037052832;
        END;
      END;
    END;
  END;

********** LEAF   204  NODE   789 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        0.38934363250998 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.32317969473064 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0196631905;
      END;
    END;
  END;

********** LEAF   205  NODE   795 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.10153023316733 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.01381164;
      END;
    END;
  END;

********** LEAF   206  NODE   796 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.10153023316733 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0258405644;
      END;
    END;
  END;

********** LEAF   207  NODE   799 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49415182315892 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ) THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '2' ,'0' ,'1'
           ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.020485376;
        END;
      END;
    END;
  END;

********** LEAF   208  NODE   800 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49415182315892 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.046210398;
        END;
      END;
    END;
  END;

********** LEAF   209  NODE   798 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'2' ,'0' ,'5' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
          0.49415182315892 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0045304758;
      END;
    END;
  END;

********** LEAF   210  NODE   802 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.41551451109452 THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0212553105;
    END;
  END;

********** LEAF   211  NODE   804 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        0.41551451109452 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.13663493331609 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.022504259;
      END;
    END;
  END;

********** LEAF   212  NODE   806 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        0.41551451109452 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.13663493331609 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'5' ,'6' ) THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.017254979;
        END;
      END;
    END;
  END;

********** LEAF   213  NODE   808 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        0.41551451109452 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.13663493331609 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '1' ,'3' ,'4' ,'2' ,'5' ,'6' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.44591725223989 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.052633243;
          END;
        END;
      END;
    END;
  END;

********** LEAF   214  NODE   809 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        0.41551451109452 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.13663493331609 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ) THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '1' ,'3' ,'4' ,'2' ,'5' ,'6' ,'7'
           ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
              0.44591725223989 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.010672396;
          END;
        END;
      END;
    END;
  END;

********** LEAF   215  NODE   811 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0195038281;
    END;
  END;

********** LEAF   216  NODE   817 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <        0.46783497739 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <      0.2470400921582 THEN DO;
           _BRANCH_ =    1;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0114118991;
          END;
        END;
      END;
    END;
  END;

********** LEAF   217  NODE   818 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <        0.46783497739 THEN DO;
         _BRANCH_ =    1;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
               0.2470400921582 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.053122831;
          END;
        END;
      END;
    END;
  END;

********** LEAF   218  NODE   816 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
               0.46783497739 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.03610565;
        END;
      END;
    END;
  END;

********** LEAF   219  NODE   814 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'2' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'5' ,'3' ,'4' ,'2' ,'6' ,'7'
       ) THEN _BRANCH_ = 2;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.32884643312443 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0202608265;
      END;
    END;
  END;

********** LEAF   220  NODE   822 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.12051895817652 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.021812349;
      END;
    END;
  END;

********** LEAF   221  NODE   824 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.12051895817652 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
        RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41979169659064 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0133752315;
        END;
      END;
    END;
  END;

********** LEAF   222  NODE   826 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.12051895817652 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.41979169659064 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.27758915672148 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.031682566;
          END;
        END;
      END;
    END;
  END;

********** LEAF   223  NODE   827 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.12051895817652 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            0.41979169659064 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.27758915672148 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0108543327;
          END;
        END;
      END;
    END;
  END;

********** LEAF   224  NODE   821 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0244868997;
    END;
  END;

********** LEAF   225  NODE   835 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ,'5' ,'6' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'6' ,'4' ,'7'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.14769040050599 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.015376238;
        END;
      END;
    END;
  END;

********** LEAF   226  NODE   836 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ,'5' ,'6' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'6' ,'4' ,'7'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'0' ,'1'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.14769040050599 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0098284801;
        END;
      END;
    END;
  END;

********** LEAF   227  NODE   832 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ,'5' ,'6' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'6' ,'4' ,'7'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0306336408;
      END;
    END;
  END;

********** LEAF   228  NODE   833 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    1;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'3' ,'4'
         ) THEN _BRANCH_ = 1;
    END;
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.011986693;
      END;
    END;
  END;

********** LEAF   229  NODE   834 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'7' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
       _BRANCH_ =    2;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034846934;
      END;
    END;
  END;

********** LEAF   230  NODE   840 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
      RANGE_LOG_Total_Trans_Amt  <     0.11841318562885 THEN DO;
       _BRANCH_ =    1;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.018545706;
      END;
    END;
  END;

********** LEAF   231  NODE   842 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11841318562885 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.21790202933018 THEN DO;
         _BRANCH_ =    1;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0123763024;
        END;
      END;
    END;
  END;

********** LEAF   232  NODE   844 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11841318562885 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.21790202933018 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.29250980168132 THEN DO;
           _BRANCH_ =    1;
          END;
        IF _BRANCH_ LT 0 THEN DO;
           IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
        END;
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.055172863;
          END;
        END;
      END;
    END;
  END;

********** LEAF   233  NODE   845 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
     _BRANCH_ =    1;
    END;
  IF _BRANCH_ LT 0 THEN DO;
     IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '2' ,'1' ,'0'
       ) THEN _BRANCH_ = 1;
  END;
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.11841318562885 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2;
      END;
    IF _BRANCH_ LT 0 THEN DO;
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END;
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.21790202933018 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
         _BRANCH_ =    2;
        END;
      IF _BRANCH_ LT 0 THEN DO;
         IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
      END;
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              0.29250980168132 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
           _BRANCH_ =    2;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0223340576;
          END;
        END;
      END;
    END;
  END;

********** LEAF   234  NODE   839 ***************;
IF _ARB_BADF_ EQ 0 THEN DO;

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0220875614;
    END;
  END;

_ARB_F_ = 2.0 * _ARB_F_;
IF _ARB_BADF_ NE 0 THEN P_Attrition_Flag1  = 0.1606941309;
ELSE IF _ARB_F_ > 45.0 THEN P_Attrition_Flag1  = 1.0;
ELSE IF _ARB_F_ < -45.0 THEN P_Attrition_Flag1  = 0.0;
ELSE P_Attrition_Flag1  = 1.0/(1.0 + EXP( - _ARB_F_));
P_Attrition_Flag0  = 1.0 - P_Attrition_Flag1 ;
*****  CREATE Q_: POSTERIORS WITHOUT PRIORS ****;
Q_Attrition_Flag0  = P_Attrition_Flag0 ;
Q_Attrition_Flag1  = P_Attrition_Flag1 ;

*****  I_ AND U_ VARIABLES *******************;
 DROP _ARB_I_ _ARB_IP_;
 _ARB_IP_ = -1.0;
 IF _ARB_IP_ + 1.0/32768.0 < P_Attrition_Flag0 THEN DO;
   _ARB_IP_ = P_Attrition_Flag0 ;
   _ARB_I_  = 1;
   END;
 IF _ARB_IP_ + 1.0/32768.0 < P_Attrition_Flag1 THEN DO;
   _ARB_IP_ = P_Attrition_Flag1 ;
   _ARB_I_  = 2;
   END;
 SELECT( _ARB_I_);
  WHEN( 1) DO;
    I_Attrition_Flag  = '0' ;
    U_Attrition_Flag  = '0' ;
     END;
  WHEN( 2) DO;
    I_Attrition_Flag  = '1' ;
    U_Attrition_Flag  = '1' ;
     END;
   END;

*****  RESIDUALS R_ *************;
IF  F_Attrition_Flag  NE '0'
AND F_Attrition_Flag  NE '1'  THEN DO;
        R_Attrition_Flag0  = .;
        R_Attrition_Flag1  = .;
 END;
 ELSE DO;
       R_Attrition_Flag0  =  -P_Attrition_Flag0 ;
       R_Attrition_Flag1  =  -P_Attrition_Flag1 ;
       SELECT( F_Attrition_Flag  );
          WHEN( '0'  ) R_Attrition_Flag0  = R_Attrition_Flag0  +1;
          WHEN( '1'  ) R_Attrition_Flag1  = R_Attrition_Flag1  +1;
       END;
 END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
* Renaming variables for Boost2;
*------------------------------------------------------------*;
* Renaming Posterior variables for Boost2;
*------------------------------------------------------------*;
drop Boost2_P_Attrition_Flag1;
Boost2_P_Attrition_Flag1 = P_Attrition_Flag1;
drop Boost2_P_Attrition_Flag0;
Boost2_P_Attrition_Flag0 = P_Attrition_Flag0;
*------------------------------------------------------------*;
* Renaming _WARN_ variable for Boost2;
*------------------------------------------------------------*;
length Boost2_WARN_ $4;
drop Boost2_WARN_;
Boost2_WARN_ = _WARN_;
*------------------------------------------------------------*;
* TOOL: Model Compare Class;
* TYPE: ASSESS;
* NODE: MdlComp4;
*------------------------------------------------------------*;
if (P_Attrition_Flag1 ge 0.842785563374) then do;
b_Attrition_Flag = 1;
end;
else
if (P_Attrition_Flag1 ge 0.82197285771313) then do;
b_Attrition_Flag = 2;
end;
else
if (P_Attrition_Flag1 ge 0.78269041569646) then do;
b_Attrition_Flag = 3;
end;
else
if (P_Attrition_Flag1 ge 0.74349798828526) then do;
b_Attrition_Flag = 4;
end;
else
if (P_Attrition_Flag1 ge 0.71394964260624) then do;
b_Attrition_Flag = 5;
end;
else
if (P_Attrition_Flag1 ge 0.67872818670554) then do;
b_Attrition_Flag = 6;
end;
else
if (P_Attrition_Flag1 ge 0.65175528037324) then do;
b_Attrition_Flag = 7;
end;
else
if (P_Attrition_Flag1 ge 0.62526842563465) then do;
b_Attrition_Flag = 8;
end;
else
if (P_Attrition_Flag1 ge 0.58718459712536) then do;
b_Attrition_Flag = 9;
end;
else
if (P_Attrition_Flag1 ge 0.54383000050575) then do;
b_Attrition_Flag = 10;
end;
else
if (P_Attrition_Flag1 ge 0.49880283879051) then do;
b_Attrition_Flag = 11;
end;
else
if (P_Attrition_Flag1 ge 0.45911382981828) then do;
b_Attrition_Flag = 12;
end;
else
if (P_Attrition_Flag1 ge 0.43052452779065) then do;
b_Attrition_Flag = 13;
end;
else
if (P_Attrition_Flag1 ge 0.39329365094658) then do;
b_Attrition_Flag = 14;
end;
else
if (P_Attrition_Flag1 ge 0.3636570455528) then do;
b_Attrition_Flag = 15;
end;
else
if (P_Attrition_Flag1 ge 0.34085626466138) then do;
b_Attrition_Flag = 16;
end;
else
if (P_Attrition_Flag1 ge 0.31718486531146) then do;
b_Attrition_Flag = 17;
end;
else
if (P_Attrition_Flag1 ge 0.29794874347483) then do;
b_Attrition_Flag = 18;
end;
else
if (P_Attrition_Flag1 ge 0.27993663017965) then do;
b_Attrition_Flag = 19;
end;
else
if (P_Attrition_Flag1 ge 0.2610167553767) then do;
b_Attrition_Flag = 20;
end;
else
if (P_Attrition_Flag1 ge 0.24601630668035) then do;
b_Attrition_Flag = 21;
end;
else
if (P_Attrition_Flag1 ge 0.23040370234416) then do;
b_Attrition_Flag = 22;
end;
else
if (P_Attrition_Flag1 ge 0.21539109780659) then do;
b_Attrition_Flag = 23;
end;
else
if (P_Attrition_Flag1 ge 0.20106518118114) then do;
b_Attrition_Flag = 24;
end;
else
if (P_Attrition_Flag1 ge 0.18945411831907) then do;
b_Attrition_Flag = 25;
end;
else
if (P_Attrition_Flag1 ge 0.17720013000715) then do;
b_Attrition_Flag = 26;
end;
else
if (P_Attrition_Flag1 ge 0.16842080369351) then do;
b_Attrition_Flag = 27;
end;
else
if (P_Attrition_Flag1 ge 0.15926371925416) then do;
b_Attrition_Flag = 28;
end;
else
if (P_Attrition_Flag1 ge 0.15246126748039) then do;
b_Attrition_Flag = 29;
end;
else
if (P_Attrition_Flag1 ge 0.14487818915035) then do;
b_Attrition_Flag = 30;
end;
else
if (P_Attrition_Flag1 ge 0.13751735214832) then do;
b_Attrition_Flag = 31;
end;
else
if (P_Attrition_Flag1 ge 0.1310735175792) then do;
b_Attrition_Flag = 32;
end;
else
if (P_Attrition_Flag1 ge 0.12576280632959) then do;
b_Attrition_Flag = 33;
end;
else
if (P_Attrition_Flag1 ge 0.11996339404663) then do;
b_Attrition_Flag = 34;
end;
else
if (P_Attrition_Flag1 ge 0.11403490380038) then do;
b_Attrition_Flag = 35;
end;
else
if (P_Attrition_Flag1 ge 0.10843185910664) then do;
b_Attrition_Flag = 36;
end;
else
if (P_Attrition_Flag1 ge 0.10473997461541) then do;
b_Attrition_Flag = 37;
end;
else
if (P_Attrition_Flag1 ge 0.09936270599712) then do;
b_Attrition_Flag = 38;
end;
else
if (P_Attrition_Flag1 ge 0.09357638701233) then do;
b_Attrition_Flag = 39;
end;
else
if (P_Attrition_Flag1 ge 0.08949993781411) then do;
b_Attrition_Flag = 40;
end;
else
if (P_Attrition_Flag1 ge 0.08629998771264) then do;
b_Attrition_Flag = 41;
end;
else
if (P_Attrition_Flag1 ge 0.08285958774805) then do;
b_Attrition_Flag = 42;
end;
else
if (P_Attrition_Flag1 ge 0.07983011843723) then do;
b_Attrition_Flag = 43;
end;
else
if (P_Attrition_Flag1 ge 0.07659066801476) then do;
b_Attrition_Flag = 44;
end;
else
if (P_Attrition_Flag1 ge 0.07363484968674) then do;
b_Attrition_Flag = 45;
end;
else
if (P_Attrition_Flag1 ge 0.07056735620004) then do;
b_Attrition_Flag = 46;
end;
else
if (P_Attrition_Flag1 ge 0.06789514687782) then do;
b_Attrition_Flag = 47;
end;
else
if (P_Attrition_Flag1 ge 0.06526758792609) then do;
b_Attrition_Flag = 48;
end;
else
if (P_Attrition_Flag1 ge 0.06272661655332) then do;
b_Attrition_Flag = 49;
end;
else
if (P_Attrition_Flag1 ge 0.0606170460622) then do;
b_Attrition_Flag = 50;
end;
else
if (P_Attrition_Flag1 ge 0.05874015441825) then do;
b_Attrition_Flag = 51;
end;
else
if (P_Attrition_Flag1 ge 0.05675883190596) then do;
b_Attrition_Flag = 52;
end;
else
if (P_Attrition_Flag1 ge 0.05496170104505) then do;
b_Attrition_Flag = 53;
end;
else
if (P_Attrition_Flag1 ge 0.05307055617797) then do;
b_Attrition_Flag = 54;
end;
else
if (P_Attrition_Flag1 ge 0.05126224475962) then do;
b_Attrition_Flag = 55;
end;
else
if (P_Attrition_Flag1 ge 0.04960552161293) then do;
b_Attrition_Flag = 56;
end;
else
if (P_Attrition_Flag1 ge 0.04767238389517) then do;
b_Attrition_Flag = 57;
end;
else
if (P_Attrition_Flag1 ge 0.04608474878706) then do;
b_Attrition_Flag = 58;
end;
else
if (P_Attrition_Flag1 ge 0.04491787908492) then do;
b_Attrition_Flag = 59;
end;
else
if (P_Attrition_Flag1 ge 0.04326785647949) then do;
b_Attrition_Flag = 60;
end;
else
if (P_Attrition_Flag1 ge 0.04142479092695) then do;
b_Attrition_Flag = 61;
end;
else
if (P_Attrition_Flag1 ge 0.0400866866837) then do;
b_Attrition_Flag = 62;
end;
else
if (P_Attrition_Flag1 ge 0.03860474231635) then do;
b_Attrition_Flag = 63;
end;
else
if (P_Attrition_Flag1 ge 0.03717141438755) then do;
b_Attrition_Flag = 64;
end;
else
if (P_Attrition_Flag1 ge 0.03565451308248) then do;
b_Attrition_Flag = 65;
end;
else
if (P_Attrition_Flag1 ge 0.03417002526201) then do;
b_Attrition_Flag = 66;
end;
else
if (P_Attrition_Flag1 ge 0.03285668373047) then do;
b_Attrition_Flag = 67;
end;
else
if (P_Attrition_Flag1 ge 0.03138877297719) then do;
b_Attrition_Flag = 68;
end;
else
if (P_Attrition_Flag1 ge 0.03034945308519) then do;
b_Attrition_Flag = 69;
end;
else
if (P_Attrition_Flag1 ge 0.02891188933976) then do;
b_Attrition_Flag = 70;
end;
else
if (P_Attrition_Flag1 ge 0.02784312885413) then do;
b_Attrition_Flag = 71;
end;
else
if (P_Attrition_Flag1 ge 0.02652535809876) then do;
b_Attrition_Flag = 72;
end;
else
if (P_Attrition_Flag1 ge 0.02550764085679) then do;
b_Attrition_Flag = 73;
end;
else
if (P_Attrition_Flag1 ge 0.02461562136396) then do;
b_Attrition_Flag = 74;
end;
else
if (P_Attrition_Flag1 ge 0.02347879287917) then do;
b_Attrition_Flag = 75;
end;
else
if (P_Attrition_Flag1 ge 0.02223365717291) then do;
b_Attrition_Flag = 76;
end;
else
if (P_Attrition_Flag1 ge 0.0212997468537) then do;
b_Attrition_Flag = 77;
end;
else
if (P_Attrition_Flag1 ge 0.02052847452031) then do;
b_Attrition_Flag = 78;
end;
else
if (P_Attrition_Flag1 ge 0.01953860129331) then do;
b_Attrition_Flag = 79;
end;
else
if (P_Attrition_Flag1 ge 0.01874729752429) then do;
b_Attrition_Flag = 80;
end;
else
if (P_Attrition_Flag1 ge 0.01760168020936) then do;
b_Attrition_Flag = 81;
end;
else
if (P_Attrition_Flag1 ge 0.0168640460452) then do;
b_Attrition_Flag = 82;
end;
else
if (P_Attrition_Flag1 ge 0.01605459651607) then do;
b_Attrition_Flag = 83;
end;
else
if (P_Attrition_Flag1 ge 0.01508776027922) then do;
b_Attrition_Flag = 84;
end;
else
if (P_Attrition_Flag1 ge 0.01418810923301) then do;
b_Attrition_Flag = 85;
end;
else
if (P_Attrition_Flag1 ge 0.01355720195008) then do;
b_Attrition_Flag = 86;
end;
else
if (P_Attrition_Flag1 ge 0.01270650909179) then do;
b_Attrition_Flag = 87;
end;
else
if (P_Attrition_Flag1 ge 0.01187511887658) then do;
b_Attrition_Flag = 88;
end;
else
if (P_Attrition_Flag1 ge 0.01106207490321) then do;
b_Attrition_Flag = 89;
end;
else
if (P_Attrition_Flag1 ge 0.01034932453226) then do;
b_Attrition_Flag = 90;
end;
else
if (P_Attrition_Flag1 ge 0.00972566709325) then do;
b_Attrition_Flag = 91;
end;
else
if (P_Attrition_Flag1 ge 0.0088448139219) then do;
b_Attrition_Flag = 92;
end;
else
if (P_Attrition_Flag1 ge 0.00816999736386) then do;
b_Attrition_Flag = 93;
end;
else
if (P_Attrition_Flag1 ge 0.00741162266585) then do;
b_Attrition_Flag = 94;
end;
else
if (P_Attrition_Flag1 ge 0.0067396764441) then do;
b_Attrition_Flag = 95;
end;
else
if (P_Attrition_Flag1 ge 0.0060426366674) then do;
b_Attrition_Flag = 96;
end;
else
if (P_Attrition_Flag1 ge 0.00535169535241) then do;
b_Attrition_Flag = 97;
end;
else
if (P_Attrition_Flag1 ge 0.00473697986664) then do;
b_Attrition_Flag = 98;
end;
else
if (P_Attrition_Flag1 ge 0.00407784890123) then do;
b_Attrition_Flag = 99;
end;
else
do;
b_Attrition_Flag = 100;
end;
*------------------------------------------------------------*;
* Ensmbl: Scoring Code of model 4 of 4;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TOOL: Extension Class;
* TYPE: MODEL;
* NODE: Tree4;
*------------------------------------------------------------*;
****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_Attrition_Flag  $   17;
LENGTH I_Attrition_Flag  $   17;
LENGTH U_Attrition_Flag  $   17;
LENGTH _WARN_  $    4;

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_Attrition_Flag0 = 'Predicted: Attrition_Flag=0' ;
label P_Attrition_Flag1 = 'Predicted: Attrition_Flag=1' ;
label Q_Attrition_Flag0 = 'Unadjusted P: Attrition_Flag=0' ;
label Q_Attrition_Flag1 = 'Unadjusted P: Attrition_Flag=1' ;
label V_Attrition_Flag0 = 'Validated: Attrition_Flag=0' ;
label V_Attrition_Flag1 = 'Validated: Attrition_Flag=1' ;
label R_Attrition_Flag0 = 'Residual: Attrition_Flag=0' ;
label R_Attrition_Flag1 = 'Residual: Attrition_Flag=1' ;
label F_Attrition_Flag = 'From: Attrition_Flag' ;
label I_Attrition_Flag = 'Into: Attrition_Flag' ;
label U_Attrition_Flag = 'Unnormalized Into: Attrition_Flag' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_17 $     17; DROP _ARBFMT_17;
_ARBFMT_17 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


_ARBFMT_17 = PUT( Attrition_Flag , $CHAR17.);
 %DMNORMCP( _ARBFMT_17, F_Attrition_Flag );

******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ) THEN DO;
  IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
    RANGE_Total_Revolving_Bal  <     0.24215335717123 THEN DO;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          0.45221286754555 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
      _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
        _NODE_  =                   26;
        _LEAF_  =                   38;
        P_Attrition_Flag0  =     0.05555555555555;
        P_Attrition_Flag1  =     0.94444444444444;
        Q_Attrition_Flag0  =     0.05555555555555;
        Q_Attrition_Flag1  =     0.94444444444444;
        V_Attrition_Flag0  =     0.11111111111111;
        V_Attrition_Flag1  =     0.88888888888888;
        I_Attrition_Flag  = '1' ;
        U_Attrition_Flag  = '1' ;
        END;
      ELSE DO;
        IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
          RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.43199033198472 THEN DO;
          _NODE_  =                   48;
          _LEAF_  =                   39;
          P_Attrition_Flag0  =                  0.4;
          P_Attrition_Flag1  =                  0.6;
          Q_Attrition_Flag0  =                  0.4;
          Q_Attrition_Flag1  =                  0.6;
          V_Attrition_Flag0  =     0.33333333333333;
          V_Attrition_Flag1  =     0.66666666666666;
          I_Attrition_Flag  = '1' ;
          U_Attrition_Flag  = '1' ;
          END;
        ELSE DO;
          _NODE_  =                   49;
          _LEAF_  =                   40;
          P_Attrition_Flag0  =               0.8125;
          P_Attrition_Flag1  =               0.1875;
          Q_Attrition_Flag0  =               0.8125;
          Q_Attrition_Flag1  =               0.1875;
          V_Attrition_Flag0  =                  0.8;
          V_Attrition_Flag1  =                  0.2;
          I_Attrition_Flag  = '0' ;
          U_Attrition_Flag  = '0' ;
          END;
        END;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ) THEN DO;
        _NODE_  =                   24;
        _LEAF_  =                   32;
        P_Attrition_Flag0  =                 0.54;
        P_Attrition_Flag1  =                 0.46;
        Q_Attrition_Flag0  =                 0.54;
        Q_Attrition_Flag1  =                 0.46;
        V_Attrition_Flag0  =     0.83333333333333;
        V_Attrition_Flag1  =     0.16666666666666;
        I_Attrition_Flag  = '0' ;
        U_Attrition_Flag  = '0' ;
        END;
      ELSE DO;
        _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('9' ) THEN DO;
          _NODE_  =                   44;
          _LEAF_  =                   33;
          P_Attrition_Flag0  =                 0.75;
          P_Attrition_Flag1  =                 0.25;
          Q_Attrition_Flag0  =                 0.75;
          Q_Attrition_Flag1  =                 0.25;
          V_Attrition_Flag0  =                    1;
          V_Attrition_Flag1  =                    0;
          I_Attrition_Flag  = '0' ;
          U_Attrition_Flag  = '0' ;
          END;
        ELSE DO;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            RANGE_LOG_Total_Trans_Amt  <     0.10455689918435 THEN DO;
            _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
             %DMNORMIP( _ARBFMT_12);
            IF _ARBFMT_12 IN ('2' ) THEN DO;
              IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
                    0.43956355842133 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1
                   THEN DO;
                _NODE_  =                  181;
                _LEAF_  =                   36;
                P_Attrition_Flag0  =     0.77777777777777;
                P_Attrition_Flag1  =     0.22222222222222;
                Q_Attrition_Flag0  =     0.77777777777777;
                Q_Attrition_Flag1  =     0.22222222222222;
                V_Attrition_Flag0  =     0.88888888888888;
                V_Attrition_Flag1  =     0.11111111111111;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              ELSE DO;
                _NODE_  =                  180;
                _LEAF_  =                   35;
                P_Attrition_Flag0  =     0.26666666666666;
                P_Attrition_Flag1  =     0.73333333333333;
                Q_Attrition_Flag0  =     0.26666666666666;
                Q_Attrition_Flag1  =     0.73333333333333;
                V_Attrition_Flag0  =     0.33333333333333;
                V_Attrition_Flag1  =     0.66666666666666;
                I_Attrition_Flag  = '1' ;
                U_Attrition_Flag  = '1' ;
                END;
              END;
            ELSE DO;
              _NODE_  =                  120;
              _LEAF_  =                   34;
              P_Attrition_Flag0  =      0.1081081081081;
              P_Attrition_Flag1  =     0.89189189189189;
              Q_Attrition_Flag0  =      0.1081081081081;
              Q_Attrition_Flag1  =     0.89189189189189;
              V_Attrition_Flag0  =     0.16666666666666;
              V_Attrition_Flag1  =     0.83333333333333;
              I_Attrition_Flag  = '1' ;
              U_Attrition_Flag  = '1' ;
              END;
            END;
          ELSE DO;
            _NODE_  =                   81;
            _LEAF_  =                   37;
            P_Attrition_Flag0  =      0.0360110803324;
            P_Attrition_Flag1  =     0.96398891966759;
            Q_Attrition_Flag0  =      0.0360110803324;
            Q_Attrition_Flag1  =     0.96398891966759;
            V_Attrition_Flag0  =     0.05882352941176;
            V_Attrition_Flag1  =     0.94117647058823;
            I_Attrition_Flag  = '1' ;
            U_Attrition_Flag  = '1' ;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
      _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ) THEN DO;
        _NODE_  =                   29;
        _LEAF_  =                   44;
        P_Attrition_Flag0  =     0.66666666666666;
        P_Attrition_Flag1  =     0.33333333333333;
        Q_Attrition_Flag0  =     0.66666666666666;
        Q_Attrition_Flag1  =     0.33333333333333;
        V_Attrition_Flag0  =     0.66666666666666;
        V_Attrition_Flag1  =     0.33333333333333;
        I_Attrition_Flag  = '0' ;
        U_Attrition_Flag  = '0' ;
        END;
      ELSE DO;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
              0.43753508527028 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            RANGE_LOG_Total_Trans_Amt  <     0.12518504649037 THEN DO;
            _NODE_  =                   88;
            _LEAF_  =                   42;
            P_Attrition_Flag0  =     0.66666666666666;
            P_Attrition_Flag1  =     0.33333333333333;
            Q_Attrition_Flag0  =     0.66666666666666;
            Q_Attrition_Flag1  =     0.33333333333333;
            V_Attrition_Flag0  =                  0.6;
            V_Attrition_Flag1  =                  0.4;
            I_Attrition_Flag  = '0' ;
            U_Attrition_Flag  = '0' ;
            END;
          ELSE DO;
            _NODE_  =                   89;
            _LEAF_  =                   43;
            P_Attrition_Flag0  =     0.23529411764705;
            P_Attrition_Flag1  =     0.76470588235294;
            Q_Attrition_Flag0  =     0.23529411764705;
            Q_Attrition_Flag1  =     0.76470588235294;
            V_Attrition_Flag0  =                  0.2;
            V_Attrition_Flag1  =                  0.8;
            I_Attrition_Flag  = '1' ;
            U_Attrition_Flag  = '1' ;
            END;
          END;
        ELSE DO;
          _NODE_  =                   50;
          _LEAF_  =                   41;
          P_Attrition_Flag0  =     0.04477611940298;
          P_Attrition_Flag1  =     0.95522388059701;
          Q_Attrition_Flag0  =     0.04477611940298;
          Q_Attrition_Flag1  =     0.95522388059701;
          V_Attrition_Flag0  =                 0.04;
          V_Attrition_Flag1  =                 0.96;
          I_Attrition_Flag  = '1' ;
          U_Attrition_Flag  = '1' ;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.11922630474959 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
        IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
          RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41234945173394 THEN DO;
          _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
           %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('9' ,'8' ) THEN DO;
            _NODE_  =                   94;
            _LEAF_  =                   47;
            P_Attrition_Flag0  =                 0.85;
            P_Attrition_Flag1  =                 0.15;
            Q_Attrition_Flag0  =                 0.85;
            Q_Attrition_Flag1  =                 0.15;
            V_Attrition_Flag0  =                 0.75;
            V_Attrition_Flag1  =                 0.25;
            I_Attrition_Flag  = '0' ;
            U_Attrition_Flag  = '0' ;
            END;
          ELSE DO;
            IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
              RANGE_SQRT_Avg_Utilization_Ratio
                 <     0.54890616290935 THEN DO;
              IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
                    0.38951475728176 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1
                   THEN DO;
                _NODE_  =                  197;
                _LEAF_  =                   49;
                P_Attrition_Flag0  =     0.83333333333333;
                P_Attrition_Flag1  =     0.16666666666666;
                Q_Attrition_Flag0  =     0.83333333333333;
                Q_Attrition_Flag1  =     0.16666666666666;
                V_Attrition_Flag0  =     0.66666666666666;
                V_Attrition_Flag1  =     0.33333333333333;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              ELSE DO;
                _NODE_  =                  196;
                _LEAF_  =                   48;
                P_Attrition_Flag0  =                  0.3;
                P_Attrition_Flag1  =                  0.7;
                Q_Attrition_Flag0  =                  0.3;
                Q_Attrition_Flag1  =                  0.7;
                V_Attrition_Flag0  =                  0.5;
                V_Attrition_Flag1  =                  0.5;
                I_Attrition_Flag  = '1' ;
                U_Attrition_Flag  = '1' ;
                END;
              END;
            ELSE DO;
              IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
                    0.53282607355155 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1
                   THEN DO;
                _NODE_  =                  199;
                _LEAF_  =                   51;
                P_Attrition_Flag0  =     0.66666666666666;
                P_Attrition_Flag1  =     0.33333333333333;
                Q_Attrition_Flag0  =     0.66666666666666;
                Q_Attrition_Flag1  =     0.33333333333333;
                V_Attrition_Flag0  =     0.66666666666666;
                V_Attrition_Flag1  =     0.33333333333333;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              ELSE DO;
                _NODE_  =                  198;
                _LEAF_  =                   50;
                P_Attrition_Flag0  =                0.075;
                P_Attrition_Flag1  =                0.925;
                Q_Attrition_Flag0  =                0.075;
                Q_Attrition_Flag1  =                0.925;
                V_Attrition_Flag0  =     0.06666666666666;
                V_Attrition_Flag1  =     0.93333333333333;
                I_Attrition_Flag  = '1' ;
                U_Attrition_Flag  = '1' ;
                END;
              END;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
                0.99463647199046 <= RANGE_Total_Revolving_Bal  THEN DO;
            IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
                   0.4523299955855 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
              _NODE_  =                  145;
              _LEAF_  =                   56;
              P_Attrition_Flag0  =     0.88888888888888;
              P_Attrition_Flag1  =     0.11111111111111;
              Q_Attrition_Flag0  =     0.88888888888888;
              Q_Attrition_Flag1  =     0.11111111111111;
              V_Attrition_Flag0  =                  0.5;
              V_Attrition_Flag1  =                  0.5;
              I_Attrition_Flag  = '0' ;
              U_Attrition_Flag  = '0' ;
              END;
            ELSE DO;
              _NODE_  =                  144;
              _LEAF_  =                   55;
              P_Attrition_Flag0  =     0.18181818181818;
              P_Attrition_Flag1  =     0.81818181818181;
              Q_Attrition_Flag0  =     0.18181818181818;
              Q_Attrition_Flag1  =     0.81818181818181;
              V_Attrition_Flag0  =                    0;
              V_Attrition_Flag1  =                    1;
              I_Attrition_Flag  = '1' ;
              U_Attrition_Flag  = '1' ;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND
                  0.87422091928403 <= RANGE_SQRT_Avg_Utilization_Ratio
                 THEN DO;
              IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
                    0.45753335515667 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1
                   THEN DO;
                _NODE_  =                  203;
                _LEAF_  =                   54;
                P_Attrition_Flag0  =                0.875;
                P_Attrition_Flag1  =                0.125;
                Q_Attrition_Flag0  =                0.875;
                Q_Attrition_Flag1  =                0.125;
                V_Attrition_Flag0  =                    1;
                V_Attrition_Flag1  =                    0;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              ELSE DO;
                _NODE_  =                  202;
                _LEAF_  =                   53;
                P_Attrition_Flag0  =     0.22222222222222;
                P_Attrition_Flag1  =     0.77777777777777;
                Q_Attrition_Flag0  =     0.22222222222222;
                Q_Attrition_Flag1  =     0.77777777777777;
                V_Attrition_Flag0  =                    0;
                V_Attrition_Flag1  =                    1;
                I_Attrition_Flag  = '1' ;
                U_Attrition_Flag  = '1' ;
                END;
              END;
            ELSE DO;
              _NODE_  =                  142;
              _LEAF_  =                   52;
              P_Attrition_Flag0  =                 0.92;
              P_Attrition_Flag1  =                 0.08;
              Q_Attrition_Flag0  =                 0.92;
              Q_Attrition_Flag1  =                 0.08;
              V_Attrition_Flag0  =     0.89361702127659;
              V_Attrition_Flag1  =      0.1063829787234;
              I_Attrition_Flag  = '0' ;
              U_Attrition_Flag  = '0' ;
              END;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          RANGE_LOG_Total_Trans_Amt  <     0.03539998717758 THEN DO;
          _NODE_  =                   54;
          _LEAF_  =                   45;
          P_Attrition_Flag0  =     0.09090909090909;
          P_Attrition_Flag1  =      0.9090909090909;
          Q_Attrition_Flag0  =     0.09090909090909;
          Q_Attrition_Flag1  =      0.9090909090909;
          V_Attrition_Flag0  =                  0.2;
          V_Attrition_Flag1  =                  0.8;
          I_Attrition_Flag  = '1' ;
          U_Attrition_Flag  = '1' ;
          END;
        ELSE DO;
          _NODE_  =                   55;
          _LEAF_  =                   46;
          P_Attrition_Flag0  =     0.93779160186625;
          P_Attrition_Flag1  =     0.06220839813374;
          Q_Attrition_Flag0  =     0.93779160186625;
          Q_Attrition_Flag1  =     0.06220839813374;
          V_Attrition_Flag0  =     0.95555555555555;
          V_Attrition_Flag1  =     0.04444444444444;
          I_Attrition_Flag  = '0' ;
          U_Attrition_Flag  = '0' ;
          END;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <      0.3183909236815 THEN DO;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
          0.09312695012822 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
      _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('5' ) THEN DO;
        _NODE_  =                   18;
        _LEAF_  =                    5;
        P_Attrition_Flag0  =     0.13333333333333;
        P_Attrition_Flag1  =     0.86666666666666;
        Q_Attrition_Flag0  =     0.13333333333333;
        Q_Attrition_Flag1  =     0.86666666666666;
        V_Attrition_Flag0  =     0.14285714285714;
        V_Attrition_Flag1  =     0.85714285714285;
        I_Attrition_Flag  = '1' ;
        U_Attrition_Flag  = '1' ;
        END;
      ELSE DO;
        _NODE_  =                   19;
        _LEAF_  =                    6;
        P_Attrition_Flag0  =                  0.8;
        P_Attrition_Flag1  =                  0.2;
        Q_Attrition_Flag0  =                  0.8;
        Q_Attrition_Flag1  =                  0.2;
        V_Attrition_Flag0  =                    1;
        V_Attrition_Flag1  =                    0;
        I_Attrition_Flag  = '0' ;
        U_Attrition_Flag  = '0' ;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.04063848760383 THEN DO;
        _NODE_  =                   16;
        _LEAF_  =                    1;
        P_Attrition_Flag0  =                    0;
        P_Attrition_Flag1  =                    1;
        Q_Attrition_Flag0  =                    0;
        Q_Attrition_Flag1  =                    1;
        V_Attrition_Flag0  =                    0;
        V_Attrition_Flag1  =                    0;
        I_Attrition_Flag  = '1' ;
        U_Attrition_Flag  = '1' ;
        END;
      ELSE DO;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
              0.95053635280095 <= RANGE_Total_Revolving_Bal  THEN DO;
          _NODE_  =                   33;
          _LEAF_  =                    4;
          P_Attrition_Flag0  =                    0;
          P_Attrition_Flag1  =                    1;
          Q_Attrition_Flag0  =                    0;
          Q_Attrition_Flag1  =                    1;
          V_Attrition_Flag0  =                    0;
          V_Attrition_Flag1  =                    1;
          I_Attrition_Flag  = '1' ;
          U_Attrition_Flag  = '1' ;
          END;
        ELSE DO;
          IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
            RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.30399187060514 THEN DO;
            _NODE_  =                   58;
            _LEAF_  =                    2;
            P_Attrition_Flag0  =                  0.2;
            P_Attrition_Flag1  =                  0.8;
            Q_Attrition_Flag0  =                  0.2;
            Q_Attrition_Flag1  =                  0.8;
            V_Attrition_Flag0  =     0.14285714285714;
            V_Attrition_Flag1  =     0.85714285714285;
            I_Attrition_Flag  = '1' ;
            U_Attrition_Flag  = '1' ;
            END;
          ELSE DO;
            _NODE_  =                   59;
            _LEAF_  =                    3;
            P_Attrition_Flag0  =     0.87692307692307;
            P_Attrition_Flag1  =     0.12307692307692;
            Q_Attrition_Flag0  =     0.87692307692307;
            Q_Attrition_Flag1  =     0.12307692307692;
            V_Attrition_Flag0  =     0.73333333333333;
            V_Attrition_Flag1  =     0.26666666666666;
            I_Attrition_Flag  = '0' ;
            U_Attrition_Flag  = '0' ;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
      RANGE_Total_Revolving_Bal  <     0.22804926499801 THEN DO;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
            0.34801787120737 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
        _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ,'6' ) THEN DO;
          _NODE_  =                   39;
          _LEAF_  =                   19;
          P_Attrition_Flag0  =     0.01492537313432;
          P_Attrition_Flag1  =     0.98507462686567;
          Q_Attrition_Flag0  =     0.01492537313432;
          Q_Attrition_Flag1  =     0.98507462686567;
          V_Attrition_Flag0  =                    0;
          V_Attrition_Flag1  =                    1;
          I_Attrition_Flag  = '1' ;
          U_Attrition_Flag  = '1' ;
          END;
        ELSE DO;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                0.68728789103993 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
            _NODE_  =                   67;
            _LEAF_  =                   18;
            P_Attrition_Flag0  =                    1;
            P_Attrition_Flag1  =                    0;
            Q_Attrition_Flag0  =                    1;
            Q_Attrition_Flag1  =                    0;
            V_Attrition_Flag0  =                    1;
            V_Attrition_Flag1  =                    0;
            I_Attrition_Flag  = '0' ;
            U_Attrition_Flag  = '0' ;
            END;
          ELSE DO;
            IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
              RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.43258488457259 THEN DO;
              IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
                    0.50504321182854 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1
                   THEN DO;
                _NODE_  =                  161;
                _LEAF_  =                   16;
                P_Attrition_Flag0  =     0.42857142857142;
                P_Attrition_Flag1  =     0.57142857142857;
                Q_Attrition_Flag0  =     0.42857142857142;
                Q_Attrition_Flag1  =     0.57142857142857;
                V_Attrition_Flag0  =                    0;
                V_Attrition_Flag1  =                    1;
                I_Attrition_Flag  = '1' ;
                U_Attrition_Flag  = '1' ;
                END;
              ELSE DO;
                _NODE_  =                  160;
                _LEAF_  =                   15;
                P_Attrition_Flag0  =     0.96551724137931;
                P_Attrition_Flag1  =     0.03448275862068;
                Q_Attrition_Flag0  =     0.96551724137931;
                Q_Attrition_Flag1  =     0.03448275862068;
                V_Attrition_Flag0  =                    1;
                V_Attrition_Flag1  =                    0;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              END;
            ELSE DO;
              _NODE_  =                  109;
              _LEAF_  =                   17;
              P_Attrition_Flag0  =     0.26086956521739;
              P_Attrition_Flag1  =      0.7391304347826;
              Q_Attrition_Flag0  =     0.26086956521739;
              Q_Attrition_Flag1  =      0.7391304347826;
              V_Attrition_Flag0  =     0.28571428571428;
              V_Attrition_Flag1  =     0.71428571428571;
              I_Attrition_Flag  = '1' ;
              U_Attrition_Flag  = '1' ;
              END;
            END;
          END;
        END;
      ELSE DO;
        _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ) THEN DO;
          IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.39278572866989 THEN DO;
            _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
             %DMNORMIP( _ARBFMT_12);
            IF _ARBFMT_12 IN ('4' ) THEN DO;
              _NODE_  =                  105;
              _LEAF_  =                    9;
              P_Attrition_Flag0  =                  0.7;
              P_Attrition_Flag1  =                  0.3;
              Q_Attrition_Flag0  =                  0.7;
              Q_Attrition_Flag1  =                  0.3;
              V_Attrition_Flag0  =                    1;
              V_Attrition_Flag1  =                    0;
              I_Attrition_Flag  = '0' ;
              U_Attrition_Flag  = '0' ;
              END;
            ELSE DO;
              _NODE_  =                  104;
              _LEAF_  =                    8;
              P_Attrition_Flag0  =     0.17073170731707;
              P_Attrition_Flag1  =     0.82926829268292;
              Q_Attrition_Flag0  =     0.17073170731707;
              Q_Attrition_Flag1  =     0.82926829268292;
              V_Attrition_Flag0  =                  0.2;
              V_Attrition_Flag1  =                  0.8;
              I_Attrition_Flag  = '1' ;
              U_Attrition_Flag  = '1' ;
              END;
            END;
          ELSE DO;
            _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
             %DMNORMIP( _ARBFMT_12);
            IF _ARBFMT_12 IN ('0' ) THEN DO;
              _NODE_  =                  106;
              _LEAF_  =                   10;
              P_Attrition_Flag0  =     0.26666666666666;
              P_Attrition_Flag1  =     0.73333333333333;
              Q_Attrition_Flag0  =     0.26666666666666;
              Q_Attrition_Flag1  =     0.73333333333333;
              V_Attrition_Flag0  =                    0;
              V_Attrition_Flag1  =                    1;
              I_Attrition_Flag  = '1' ;
              U_Attrition_Flag  = '1' ;
              END;
            ELSE DO;
              IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                    0.19694236549537 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
                _NODE_  =                  159;
                _LEAF_  =                   14;
                P_Attrition_Flag0  =                0.975;
                P_Attrition_Flag1  =                0.025;
                Q_Attrition_Flag0  =                0.975;
                Q_Attrition_Flag1  =                0.025;
                V_Attrition_Flag0  =                    1;
                V_Attrition_Flag1  =                    0;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              ELSE DO;
                IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                      0.11578300596794 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
                  IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND
                        0.51285981573527 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1
                       THEN DO;
                    _NODE_  =                  279;
                    _LEAF_  =                   13;
                    P_Attrition_Flag0  =                  0.9;
                    P_Attrition_Flag1  =                  0.1;
                    Q_Attrition_Flag0  =                  0.9;
                    Q_Attrition_Flag1  =                  0.1;
                    V_Attrition_Flag0  =     0.66666666666666;
                    V_Attrition_Flag1  =     0.33333333333333;
                    I_Attrition_Flag  = '0' ;
                    U_Attrition_Flag  = '0' ;
                    END;
                  ELSE DO;
                    _NODE_  =                  278;
                    _LEAF_  =                   12;
                    P_Attrition_Flag0  =     0.28571428571428;
                    P_Attrition_Flag1  =     0.71428571428571;
                    Q_Attrition_Flag0  =     0.28571428571428;
                    Q_Attrition_Flag1  =     0.71428571428571;
                    V_Attrition_Flag0  =                  0.4;
                    V_Attrition_Flag1  =                  0.6;
                    I_Attrition_Flag  = '1' ;
                    U_Attrition_Flag  = '1' ;
                    END;
                  END;
                ELSE DO;
                  _NODE_  =                  212;
                  _LEAF_  =                   11;
                  P_Attrition_Flag0  =     0.90566037735849;
                  P_Attrition_Flag1  =      0.0943396226415;
                  Q_Attrition_Flag0  =     0.90566037735849;
                  Q_Attrition_Flag1  =      0.0943396226415;
                  V_Attrition_Flag0  =     0.92307692307692;
                  V_Attrition_Flag1  =     0.07692307692307;
                  I_Attrition_Flag  = '0' ;
                  U_Attrition_Flag  = '0' ;
                  END;
                END;
              END;
            END;
          END;
        ELSE DO;
          _NODE_  =                   36;
          _LEAF_  =                    7;
          P_Attrition_Flag0  =     0.98959687906371;
          P_Attrition_Flag1  =     0.01040312093628;
          Q_Attrition_Flag0  =     0.98959687906371;
          Q_Attrition_Flag1  =     0.01040312093628;
          V_Attrition_Flag0  =     0.97630331753554;
          V_Attrition_Flag1  =     0.02369668246445;
          I_Attrition_Flag  = '0' ;
          U_Attrition_Flag  = '0' ;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
        RANGE_LOG_Total_Trans_Amt  <     0.03340216054825 THEN DO;
        _NODE_  =                   22;
        _LEAF_  =                   20;
        P_Attrition_Flag0  =                    0;
        P_Attrition_Flag1  =                    1;
        Q_Attrition_Flag0  =                    0;
        Q_Attrition_Flag1  =                    1;
        V_Attrition_Flag0  =                    0;
        V_Attrition_Flag1  =                    1;
        I_Attrition_Flag  = '1' ;
        U_Attrition_Flag  = '1' ;
        END;
      ELSE DO;
        IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND
              0.99940405244338 <= RANGE_Total_Revolving_Bal  THEN DO;
          IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND
            RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.36248390962168 THEN DO;
            _NODE_  =                   72;
            _LEAF_  =                   28;
            P_Attrition_Flag0  =     0.27272727272727;
            P_Attrition_Flag1  =     0.72727272727272;
            Q_Attrition_Flag0  =     0.27272727272727;
            Q_Attrition_Flag1  =     0.72727272727272;
            V_Attrition_Flag0  =                    1;
            V_Attrition_Flag1  =                    0;
            I_Attrition_Flag  = '1' ;
            U_Attrition_Flag  = '1' ;
            END;
          ELSE DO;
            IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                   0.5078915992207 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
              IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                RANGE_LOG_Total_Trans_Amt  <     0.69408037642344 THEN DO;
                _NODE_  =                  174;
                _LEAF_  =                   30;
                P_Attrition_Flag0  =     0.31818181818181;
                P_Attrition_Flag1  =     0.68181818181818;
                Q_Attrition_Flag0  =     0.31818181818181;
                Q_Attrition_Flag1  =     0.68181818181818;
                V_Attrition_Flag0  =     0.16666666666666;
                V_Attrition_Flag1  =     0.83333333333333;
                I_Attrition_Flag  = '1' ;
                U_Attrition_Flag  = '1' ;
                END;
              ELSE DO;
                _NODE_  =                  175;
                _LEAF_  =                   31;
                P_Attrition_Flag0  =                    1;
                P_Attrition_Flag1  =                    0;
                Q_Attrition_Flag0  =                    1;
                Q_Attrition_Flag1  =                    0;
                V_Attrition_Flag0  =                    1;
                V_Attrition_Flag1  =                    0;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              END;
            ELSE DO;
              _NODE_  =                  116;
              _LEAF_  =                   29;
              P_Attrition_Flag0  =     0.94267515923566;
              P_Attrition_Flag1  =     0.05732484076433;
              Q_Attrition_Flag0  =     0.94267515923566;
              Q_Attrition_Flag1  =     0.05732484076433;
              V_Attrition_Flag0  =               0.9375;
              V_Attrition_Flag1  =               0.0625;
              I_Attrition_Flag  = '0' ;
              U_Attrition_Flag  = '0' ;
              END;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                0.34036717463282 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
            _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
             %DMNORMIP( _ARBFMT_12);
            IF _ARBFMT_12 IN ('7' ) THEN DO;
              _NODE_  =                  112;
              _LEAF_  =                   25;
              P_Attrition_Flag0  =     0.97766097240473;
              P_Attrition_Flag1  =     0.02233902759526;
              Q_Attrition_Flag0  =     0.97766097240473;
              Q_Attrition_Flag1  =     0.02233902759526;
              V_Attrition_Flag0  =     0.99528301886792;
              V_Attrition_Flag1  =     0.00471698113207;
              I_Attrition_Flag  = '0' ;
              U_Attrition_Flag  = '0' ;
              END;
            ELSE DO;
              IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                RANGE_LOG_Total_Trans_Amt  <     0.39467030301083 THEN DO;
                _NODE_  =                  170;
                _LEAF_  =                   26;
                P_Attrition_Flag0  =     0.83333333333333;
                P_Attrition_Flag1  =     0.16666666666666;
                Q_Attrition_Flag0  =     0.83333333333333;
                Q_Attrition_Flag1  =     0.16666666666666;
                V_Attrition_Flag0  =                    1;
                V_Attrition_Flag1  =                    0;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              ELSE DO;
                _NODE_  =                  171;
                _LEAF_  =                   27;
                P_Attrition_Flag0  =     0.21428571428571;
                P_Attrition_Flag1  =     0.78571428571428;
                Q_Attrition_Flag0  =     0.21428571428571;
                Q_Attrition_Flag1  =     0.78571428571428;
                V_Attrition_Flag0  =     0.28571428571428;
                V_Attrition_Flag1  =     0.71428571428571;
                I_Attrition_Flag  = '1' ;
                U_Attrition_Flag  = '1' ;
                END;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
              RANGE_LOG_Total_Trans_Amt  <     0.17794703865872 THEN DO;
              _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
               %DMNORMIP( _ARBFMT_12);
              IF _ARBFMT_12 IN ('0' ) THEN DO;
                IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND
                      0.08908868992172 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
                  _NODE_  =                  223;
                  _LEAF_  =                   22;
                  P_Attrition_Flag0  =     0.14285714285714;
                  P_Attrition_Flag1  =     0.85714285714285;
                  Q_Attrition_Flag0  =     0.14285714285714;
                  Q_Attrition_Flag1  =     0.85714285714285;
                  V_Attrition_Flag0  =                    0;
                  V_Attrition_Flag1  =                    1;
                  I_Attrition_Flag  = '1' ;
                  U_Attrition_Flag  = '1' ;
                  END;
                ELSE DO;
                  _NODE_  =                  222;
                  _LEAF_  =                   21;
                  P_Attrition_Flag0  =     0.92307692307692;
                  P_Attrition_Flag1  =     0.07692307692307;
                  Q_Attrition_Flag0  =     0.92307692307692;
                  Q_Attrition_Flag1  =     0.07692307692307;
                  V_Attrition_Flag0  =                    1;
                  V_Attrition_Flag1  =                    0;
                  I_Attrition_Flag  = '0' ;
                  U_Attrition_Flag  = '0' ;
                  END;
                END;
              ELSE DO;
                _NODE_  =                  165;
                _LEAF_  =                   23;
                P_Attrition_Flag0  =     0.96840442338072;
                P_Attrition_Flag1  =     0.03159557661927;
                Q_Attrition_Flag0  =     0.96840442338072;
                Q_Attrition_Flag1  =     0.03159557661927;
                V_Attrition_Flag0  =     0.97382198952879;
                V_Attrition_Flag1  =      0.0261780104712;
                I_Attrition_Flag  = '0' ;
                U_Attrition_Flag  = '0' ;
                END;
              END;
            ELSE DO;
              _NODE_  =                  111;
              _LEAF_  =                   24;
              P_Attrition_Flag0  =     0.99786233433091;
              P_Attrition_Flag1  =     0.00213766566908;
              Q_Attrition_Flag0  =     0.99786233433091;
              Q_Attrition_Flag1  =     0.00213766566908;
              V_Attrition_Flag0  =     0.99698340874811;
              V_Attrition_Flag1  =     0.00301659125188;
              I_Attrition_Flag  = '0' ;
              U_Attrition_Flag  = '0' ;
              END;
            END;
          END;
        END;
      END;
    END;
  END;

*****  RESIDUALS R_ *************;
IF  F_Attrition_Flag  NE '0'
AND F_Attrition_Flag  NE '1'  THEN DO;
        R_Attrition_Flag0  = .;
        R_Attrition_Flag1  = .;
 END;
 ELSE DO;
       R_Attrition_Flag0  =  -P_Attrition_Flag0 ;
       R_Attrition_Flag1  =  -P_Attrition_Flag1 ;
       SELECT( F_Attrition_Flag  );
          WHEN( '0'  ) R_Attrition_Flag0  = R_Attrition_Flag0  +1;
          WHEN( '1'  ) R_Attrition_Flag1  = R_Attrition_Flag1  +1;
       END;
 END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

drop _LEAF_;
* Renaming variables for Tree4;
*------------------------------------------------------------*;
* Renaming Posterior variables for Tree4;
*------------------------------------------------------------*;
drop Tree4_P_Attrition_Flag1;
Tree4_P_Attrition_Flag1 = P_Attrition_Flag1;
drop Tree4_P_Attrition_Flag0;
Tree4_P_Attrition_Flag0 = P_Attrition_Flag0;
*------------------------------------------------------------*;
* Renaming _WARN_ variable for Tree4;
*------------------------------------------------------------*;
length Tree4_WARN_ $4;
drop Tree4_WARN_;
Tree4_WARN_ = _WARN_;
*------------------------------------------------------------*;
* TOOL: Model Compare Class;
* TYPE: ASSESS;
* NODE: MdlComp2;
*------------------------------------------------------------*;
drop _temp_;
if (P_Attrition_Flag1 ge 0.98507462686567) then do;
b_Attrition_Flag = 1;
end;
else
if (P_Attrition_Flag1 ge 0.96398891966759) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(2 + 5*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.95522388059701) then do;
b_Attrition_Flag = 7;
end;
else
if (P_Attrition_Flag1 ge 0.925) then do;
b_Attrition_Flag = 8;
end;
else
if (P_Attrition_Flag1 ge 0.89189189189189) then do;
b_Attrition_Flag = 9;
end;
else
if (P_Attrition_Flag1 ge 0.86666666666666) then do;
b_Attrition_Flag = 10;
end;
else
if (P_Attrition_Flag1 ge 0.82926829268292) then do;
b_Attrition_Flag = 11;
end;
else
if (P_Attrition_Flag1 ge 0.76470588235294) then do;
b_Attrition_Flag = 12;
end;
else
if (P_Attrition_Flag1 ge 0.73333333333333) then do;
b_Attrition_Flag = 13;
end;
else
if (P_Attrition_Flag1 ge 0.70714285714285) then do;
b_Attrition_Flag = 14;
end;
else
if (P_Attrition_Flag1 ge 0.6) then do;
b_Attrition_Flag = 15;
end;
else
if (P_Attrition_Flag1 ge 0.33333333333333) then do;
b_Attrition_Flag = 16;
end;
else
if (P_Attrition_Flag1 ge 0.1875) then do;
b_Attrition_Flag = 17;
end;
else
if (P_Attrition_Flag1 ge 0.15) then do;
b_Attrition_Flag = 18;
end;
else
if (P_Attrition_Flag1 ge 0.12307692307692) then do;
b_Attrition_Flag = 19;
end;
else
if (P_Attrition_Flag1 ge 0.0943396226415) then do;
b_Attrition_Flag = 20;
end;
else
if (P_Attrition_Flag1 ge 0.08) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(21 + 2*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.06220839813374) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(23 + 9*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.05732484076433) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(32 + 3*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.03159557661927) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(35 + 9*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.02233902759526) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(44 + 11*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.01040312093628) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(55 + 11*_temp_);
end;
else
if (P_Attrition_Flag1 ge 0.00213766566908) then do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(66 + 33*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_Attrition_Flag = floor(99 + 2*_temp_);
end;
*------------------------------------------------------------*;
* Ensmbl: Average Posteriors of 4 models;
*------------------------------------------------------------*;
P_Attrition_Flag1 = (
Reg_P_Attrition_Flag1 +
AutoNeural2_P_Attrition_Flag1 +
Boost2_P_Attrition_Flag1 +
Tree4_P_Attrition_Flag1
)/4;
P_Attrition_Flag0 = (
Reg_P_Attrition_Flag0 +
AutoNeural2_P_Attrition_Flag0 +
Boost2_P_Attrition_Flag0 +
Tree4_P_Attrition_Flag0
)/4;
*------------------------------------------------------------*;
* Ensmbl: Computing Classification Vars;
*------------------------------------------------------------*;
length I_Attrition_Flag $17;
label I_Attrition_Flag = 'Into: Attrition_Flag';
length _format $200;
drop _format;
_format= ' ';
_p_= 0;
drop _p_;
if P_Attrition_Flag1 > _p_ then do;
_p_= P_Attrition_Flag1;
_format= '1';
end;
if P_Attrition_Flag0 > _p_ then do;
_p_= P_Attrition_Flag0;
_format= '0';
end;
%DMNORMCP(_format,I_Attrition_Flag);
*------------------------------------------------------------*;
* Ensmbl: Producing Unformatted variable;
*------------------------------------------------------------*;
label U_Attrition = "Unnormalized Into: Attrition_Flag";
length U_Attrition $17;
if I_Attrition_Flag = '1' then U_Attrition = '1';
else
if I_Attrition_Flag = '0' then U_Attrition = '0';
*------------------------------------------------------------*;
* Ensmbl: Computing _WARN_ Variable;
*------------------------------------------------------------*;
length _WARN_ $4;
label _WARN_ = 'Warnings';
_WARN_ = '';
if index(REG_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(REG_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(REG_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(REG_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
if index(AUTONEURAL2_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(AUTONEURAL2_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(AUTONEURAL2_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(AUTONEURAL2_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
if index(BOOST2_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(BOOST2_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(BOOST2_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(BOOST2_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
if index(TREE4_WARN_, 'M') and ^index(_WARN_, 'M') then substr(_WARN_, 1, 1) ='M';
if index(TREE4_WARN_, 'U') and ^index(_WARN_, 'U') then substr(_WARN_, 2, 1) ='U';
if index(TREE4_WARN_, 'P') and ^index(_WARN_, 'P') then substr(_WARN_, 3, 1) ='P';
if index(TREE4_WARN_, 'C') and ^index(_WARN_, 'C') then substr(_WARN_, 4, 1) ='C';
*------------------------------------------------------------*;
* Ensmbl: Computing Residual Vars;
*------------------------------------------------------------*;
if
F_Attrition_Flag NE '1'
AND F_Attrition_Flag NE '0'
then do;
R_Attrition_Flag1 = .;
R_Attrition_Flag0 = .;
end;
else do;
R_Attrition_Flag1 = -P_Attrition_Flag1;
R_Attrition_Flag0 = -P_Attrition_Flag0;
SELECT(F_Attrition_Flag);
WHEN('1') R_Attrition_Flag1 = R_Attrition_Flag1 +1;
WHEN('0') R_Attrition_Flag0 = R_Attrition_Flag0 +1;
OTHERWISE;
END;
END;
