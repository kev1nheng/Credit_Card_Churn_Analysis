*;
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
