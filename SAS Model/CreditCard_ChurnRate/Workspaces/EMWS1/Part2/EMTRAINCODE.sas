*------------------------------------------------------------*;
* Part2: Retrieving stratification variable(s) levels;
*------------------------------------------------------------*;
proc freq data=EMWS1.Meta2_TRAIN noprint;
format
Attrition_Flag $CHAR17.
;
table
Attrition_Flag
/out=WORK.Part2_FREQ(drop=percent);
run;
proc sort data=WORK.Part2_FREQ;
by descending count;
run;
* Part2: Retrieving levels that meet minimum requirement;
data WORK.Part2_FREQ2(keep = count);
set WORK.Part2_FREQ;
where (.01 * 70 * count) >= 3;
run;
*------------------------------------------------------------*;
* Part2: Create stratified partitioning;
*------------------------------------------------------------*;
data
EMWS1.Part2_TRAIN(label="")
EMWS1.Part2_VALIDATE(label="")
EMWS1.Part2_TEST(label="")
;
retain _seed_ 78354;
drop _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
label _dataobs_ = "%sysfunc(sasmsg(sashelp.dmine, sample_dataobs_vlabel, NOQUOTE))";
_dataobs_ = _N_;
drop _c00:;
set EMWS1.Meta2_TRAIN;
length _Pformat1 $67;
drop _Pformat1;
_Pformat1 = strip(put(Attrition_Flag, $CHAR17.));
if
_Pformat1 = '0'
then do;
if (8500+1-_C000004)*_genvalue_ <= (5950 - _C000001) then do;
_C000001 + 1;
output EMWS1.Part2_TRAIN;
end;
else do;
if (8500+1-_C000004)*_genvalue_ <= (5950 - _C000001 + 1700 - _C000002) then do;
_C000002 + 1;
output EMWS1.Part2_VALIDATE;
end;
else do;
_C000003 + 1;
output EMWS1.Part2_TEST;
end;
end;
_C000004+1;
end;
else if
_Pformat1 = '1'
then do;
if (1627+1-_C000008)*_genvalue_ <= (1139 - _C000005) then do;
_C000005 + 1;
output EMWS1.Part2_TRAIN;
end;
else do;
if (1627+1-_C000008)*_genvalue_ <= (1139 - _C000005 + 325 - _C000006) then do;
_C000006 + 1;
output EMWS1.Part2_VALIDATE;
end;
else do;
_C000007 + 1;
output EMWS1.Part2_TEST;
end;
end;
_C000008+1;
end;
run;
