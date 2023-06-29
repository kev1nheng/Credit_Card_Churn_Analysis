*;
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
