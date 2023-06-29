LENGTH _UFormat $ 32;
_UFormat = ' ';
LENGTH _WARN_ $4;
LABEL _WARN_ = 'Warnings';
_WARN_ = '    ';
_nInputMiss = 0;
_nInputOutRange = 0;
 
/******************************************************************************/
/*                    Calculate Standardized Inputs                           */
/******************************************************************************/
 
_I1 = RANGE_LOG_Total_Trans_Amt;
IF MISSING(RANGE_LOG_Total_Trans_Amt) THEN DO;
    _I1 = 0.26846267058842; /* impute average value */
    _nInputMiss = 1;
END;
_I1 = 2 * ( _I1 ) / 0.99999999994221 - 1;
 
_I2 = RANGE_SQRT_Avg_Utilization_Ratio;
IF MISSING(RANGE_SQRT_Avg_Utilization_Ratio) THEN DO;
    _I2 = 0.42138171279265; /* impute average value */
    _nInputMiss = 1;
END;
_I2 = 2 * ( _I2 ) / 0.99799598996989 - 1;
 
_I3 = RANGE_SQRT_Total_Amt_Chng_Q4_Q1;
IF MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1) THEN DO;
    _I3 = 0.46841281572611; /* impute average value */
    _nInputMiss = 1;
END;
_I3 = 2 * ( _I3 ) / 1 - 1;
 
_I4 = RANGE_SQRT_Total_Ct_Chng_Q4_Q1;
IF MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1) THEN DO;
    _I4 = 0.43231770050692; /* impute average value */
    _nInputMiss = 1;
END;
_I4 = 2 * ( _I4 ) / 1 - 1;
 
_I5 = RANGE_Total_Revolving_Bal;
IF MISSING(RANGE_Total_Revolving_Bal) THEN DO;
    _I5 = 0.46336482205213; /* impute average value */
    _nInputMiss = 1;
END;
_I5 = 2 * ( _I5 ) / 1 - 1;
 
_I6_0 = 0;
_I6_1 = 0;
_I6_2 = 0;
_I6_3 = 0;
_I6_4 = 0;
_I6_5 = 0;
_I6_6 = 0;
_I6_7 = 0;
_I6_8 = 0;
_I6_9 = 0;
_I6_10 = 0;
IF MISSING(G_Customer_Age) THEN DO;
    _I6_6 = 1; /* impute most frequent level */
    _nInputMiss = 1;
END;
ELSE DO;
    _UFormat = LEFT(UPCASE(PUT( G_Customer_Age, BEST. )));
    SELECT ( _UFormat );
        WHEN ( "0" ) _I6_0 = 1;
        WHEN ( "1" ) _I6_1 = 1;
        WHEN ( "2" ) _I6_2 = 1;
        WHEN ( "3" ) _I6_3 = 1;
        WHEN ( "4" ) _I6_4 = 1;
        WHEN ( "5" ) _I6_5 = 1;
        WHEN ( "6" ) _I6_6 = 1;
        WHEN ( "7" ) _I6_7 = 1;
        WHEN ( "8" ) _I6_8 = 1;
        WHEN ( "9" ) _I6_9 = 1;
        WHEN ( "10" ) _I6_10 = 1;
        OTHERWISE DO;
            _I6_6 = 1; /* impute most frequent level */
            _nInputOutRange = 1;
        END;
    END;
END;
 
_I7_0 = 0;
_I7_1 = 0;
_I7_2 = 0;
_I7_3 = 0;
_I7_4 = 0;
IF MISSING(G_Months_Inactive_12_mon) THEN DO;
    _I7_2 = 1; /* impute most frequent level */
    _nInputMiss = 1;
END;
ELSE DO;
    _UFormat = LEFT(UPCASE(PUT( G_Months_Inactive_12_mon, BEST. )));
    SELECT ( _UFormat );
        WHEN ( "0" ) _I7_0 = 1;
        WHEN ( "1" ) _I7_1 = 1;
        WHEN ( "2" ) _I7_2 = 1;
        WHEN ( "3" ) _I7_3 = 1;
        WHEN ( "4" ) _I7_4 = 1;
        OTHERWISE DO;
            _I7_2 = 1; /* impute most frequent level */
            _nInputOutRange = 1;
        END;
    END;
END;
 
_I8_0 = 0;
_I8_1 = 0;
_I8_2 = 0;
IF MISSING(G_Total_Relationship_Count) THEN DO;
    _I8_2 = 1; /* impute most frequent level */
    _nInputMiss = 1;
END;
ELSE DO;
    _UFormat = LEFT(UPCASE(PUT( G_Total_Relationship_Count, BEST. )));
    SELECT ( _UFormat );
        WHEN ( "0" ) _I8_0 = 1;
        WHEN ( "1" ) _I8_1 = 1;
        WHEN ( "2" ) _I8_2 = 1;
        OTHERWISE DO;
            _I8_2 = 1; /* impute most frequent level */
            _nInputOutRange = 1;
        END;
    END;
END;
 
_I9_0 = 0;
_I9_1 = 0;
_I9_2 = 0;
_I9_3 = 0;
_I9_4 = 0;
_I9_5 = 0;
_I9_6 = 0;
_I9_7 = 0;
IF MISSING(G_Total_Trans_Ct) THEN DO;
    _I9_7 = 1; /* impute most frequent level */
    _nInputMiss = 1;
END;
ELSE DO;
    _UFormat = LEFT(UPCASE(PUT( G_Total_Trans_Ct, BEST. )));
    SELECT ( _UFormat );
        WHEN ( "0" ) _I9_0 = 1;
        WHEN ( "1" ) _I9_1 = 1;
        WHEN ( "2" ) _I9_2 = 1;
        WHEN ( "3" ) _I9_3 = 1;
        WHEN ( "4" ) _I9_4 = 1;
        WHEN ( "5" ) _I9_5 = 1;
        WHEN ( "6" ) _I9_6 = 1;
        WHEN ( "7" ) _I9_7 = 1;
        OTHERWISE DO;
            _I9_7 = 1; /* impute most frequent level */
            _nInputOutRange = 1;
        END;
    END;
END;
 
/******************************************************************************/
/*                              Set _WARN_ Value                              */
/******************************************************************************/
IF ( _nInputMiss GT 0) THEN DO;
    SUBSTR( _WARN_, 1, 1) = 'M';
END;
IF ( _nInputOutRange GT 0) THEN DO;
    SUBSTR( _WARN_, 2, 1) = 'U';
END;
 
/******************************************************************************/
/*                   Calculate Output of Hidden Layer 1                       */
/******************************************************************************/
 
_H1 = -0.0497837944031
    + 2.87868898599161 * _I1
    + 0.16063372756462 * _I2
    - 0.49030529018355 * _I3
    - 2.47244064996832 * _I4
    + 1.30637034552203 * _I5
    + 0.23528586564228 * _I6_0
    + 0.26974689764919 * _I6_1
    - 0.07349823573787 * _I6_2
    + 0.16214916198249 * _I6_3
    + 0.27012524162385 * _I6_4
    + 0.32603335250487 * _I6_5
    + 0.26181228964426 * _I6_6
    + 0.143924528524 * _I6_7
    - 0.23685564369312 * _I6_8
    - 0.82763977920721 * _I6_9
    - 0.64683461376163 * _I6_10
    + 1.08759021322259 * _I7_0
    + 0.21622342803964 * _I7_1
    - 0.13939963447866 * _I7_2
    - 0.20808641757215 * _I7_3
    - 1.00237786994091 * _I7_4
    + 0.19533521889067 * _I8_0
    + 0.04292191572239 * _I8_1
    - 0.28110758697167 * _I8_2
    + 3.4988685884969 * _I9_0
    + 0.74341623880574 * _I9_1
    + 1.05107847137329 * _I9_2
    + 0.61285138014397 * _I9_3
    + 0.32628342613665 * _I9_4
    - 0.07626093385477 * _I9_5
    + 0.38690662702643 * _I9_6
    - 6.6127243083323 * _I9_7;
IF ( _H1 GE 0 ) THEN DO;
    _H1 = EXP( -2 * _H1 );
    _H1 = ( 1 - _H1 ) / ( 1 + _H1 );
END;
ELSE DO;
    _H1 = EXP( 2 * _H1 );
    _H1 = ( _H1 - 1 ) / ( _H1 + 1 );
END;
 
_H2 = 1.83543549081065
    + 3.7783245643669 * _I1
    - 0.45347521325884 * _I2
    - 0.57027148710928 * _I3
    - 0.8277716384752 * _I4
    - 0.08136016614353 * _I5
    + 0.06679985745167 * _I6_0
    + 0.13154981728072 * _I6_1
    + 0.43124910346702 * _I6_2
    + 0.06316906722596 * _I6_3
    + 0.32142995163961 * _I6_4
    + 0.23779352451111 * _I6_5
    - 0.12561811951488 * _I6_6
    + 0.0474319212792 * _I6_7
    + 0.24576475116744 * _I6_8
    + 0.72124212244433 * _I6_9
    - 0.30429122771585 * _I6_10
    + 0.50507601560678 * _I7_0
    + 0.32573900043651 * _I7_1
    + 0.54468433063343 * _I7_2
    + 0.24409377533973 * _I7_3
    + 0.21355245825873 * _I7_4
    + 0.67614772734632 * _I8_0
    + 0.50729669251011 * _I8_1
    + 0.68568050900919 * _I8_2
    + 1.3084545575448 * _I9_0
    + 1.13758316030701 * _I9_1
    + 0.27137451357768 * _I9_2
    + 0.75533210062631 * _I9_3
    + 1.26346468811037 * _I9_4
    + 1.66500129976712 * _I9_5
    - 2.87715842442406 * _I9_6
    - 1.66528868253522 * _I9_7;
IF ( _H2 GE 0 ) THEN DO;
    _H2 = EXP( -2 * _H2 );
    _H2 = ( 1 - _H2 ) / ( 1 + _H2 );
END;
ELSE DO;
    _H2 = EXP( 2 * _H2 );
    _H2 = ( _H2 - 1 ) / ( _H2 + 1 );
END;
 
_H3 = 0.69506951652756
    - 1.47209478932412 * _I1
    - 1.16265728185804 * _I2
    + 0.9090683645627 * _I3
    + 2.35147897548686 * _I4
    + 3.30074578620084 * _I5
    - 0.31150547033793 * _I6_0
    - 0.76698753202567 * _I6_1
    - 0.17091045611845 * _I6_2
    - 0.33247436404483 * _I6_3
    + 0.15940016412827 * _I6_4
    - 0.0022155408578 * _I6_5
    - 0.11779165120942 * _I6_6
    + 0.03308267873366 * _I6_7
    + 0.33366973995059 * _I6_8
    + 1.65805295451413 * _I6_9
    + 0.27855621983567 * _I6_10
    - 0.16915466717604 * _I7_0
    + 0.00751172119554 * _I7_1
    - 0.00608962150266 * _I7_2
    + 0.06275301181757 * _I7_3
    + 0.86540273655389 * _I7_4
    - 0.92875364520664 * _I8_0
    + 0.67064872147019 * _I8_1
    + 1.01455195113271 * _I8_2
    - 1.87639047377756 * _I9_0
    - 0.96649938776339 * _I9_1
    - 0.74179014574167 * _I9_2
    - 0.78646800017147 * _I9_3
    - 0.16874396104659 * _I9_4
    - 0.01961079007072 * _I9_5
    - 0.05675387508415 * _I9_6
    + 5.30553811432309 * _I9_7;
IF ( _H3 GE 0 ) THEN DO;
    _H3 = EXP( -2 * _H3 );
    _H3 = ( 1 - _H3 ) / ( 1 + _H3 );
END;
ELSE DO;
    _H3 = EXP( 2 * _H3 );
    _H3 = ( _H3 - 1 ) / ( _H3 + 1 );
END;
 
/******************************************************************************/
/*                   Calculate Output of Target Layer                         */
/******************************************************************************/
 
_T1_0 = 0.71994596163167
    + 3.25325330121454 * _H1
    + 2.71249042677312 * _H2
    - 2.93824602585615 * _H3;
LABEL P_Attrition_Flag1 = "Predicted: Attrition_Flag=1";
IF ABS(_T1_0) < 36 THEN
    P_Attrition_Flag1 = 1.0 / (1.0 + EXP(-_T1_0));
ELSE
    IF _T1_0 < 0 THEN
        P_Attrition_Flag1 = 0;
    ELSE
        P_Attrition_Flag1 = 1;
LABEL P_Attrition_Flag0 = "Predicted: Attrition_Flag=0";
P_Attrition_Flag0 = 1.0 - P_Attrition_Flag1;
 
/******************************************************************************/
/*                        Drop temporary variables                            */
/******************************************************************************/
DROP _UFormat _nInputMiss _nInputOutRange;
DROP _I1 _I2 _I3 _I4 _I5 _I6_0 _I6_1 _I6_2 _I6_3 _I6_4;
DROP _I6_5 _I6_6 _I6_7 _I6_8 _I6_9 _I6_10 _I7_0 _I7_1 _I7_2 _I7_3;
DROP _I7_4 _I8_0 _I8_1 _I8_2 _I9_0 _I9_1 _I9_2 _I9_3 _I9_4 _I9_5;
DROP _I9_6 _I9_7;
DROP _H1 _H2 _H3;
DROP _T1_0;
*------------------------------------------------------------*;
*Computing Classification Vars: Attrition_Flag;
*------------------------------------------------------------*;
length _format200 $200;
drop _format200;
_format200= ' ' ;
length _p_ 8;
_p_= 0 ;
drop _p_ ;
if P_Attrition_Flag1 - _p_ > 1e-8 then do ;
   _p_= P_Attrition_Flag1 ;
   _format200='1';
end;
if P_Attrition_Flag0 - _p_ > 1e-8 then do ;
   _p_= P_Attrition_Flag0 ;
   _format200='0';
end;
I_Attrition_Flag=dmnorm(_format200,32); ;
if I_Attrition_Flag='1' then
U_Attrition_Flag='1';
if I_Attrition_Flag='0' then
U_Attrition_Flag='0';
