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

********** LEAF     1  NODE   353 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

   DROP _BRANCH_;
  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.1193967683;
    END;
  END;

********** LEAF     2  NODE   354 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0193411342;
    END;
  END;

********** LEAF     3  NODE   355 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.03206504;
    END;
  END;

********** LEAF     4  NODE   357 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.47563536629431 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.056914162;
      END;
    END;
  END;

********** LEAF     5  NODE   358 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.47563536629431 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.040885357;
      END;
    END;
  END;

********** LEAF     6  NODE   360 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0927875715;
    END;
  END;

********** LEAF     7  NODE   361 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0201326365;
    END;
  END;

********** LEAF     8  NODE   362 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.0304313;
    END;
  END;

********** LEAF     9  NODE   364 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND 
      RANGE_SQRT_Avg_Utilization_Ratio  <      0.3385469955768 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.042997641;
      END;
    END;
  END;

********** LEAF    10  NODE   365 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Avg_Utilization_Ratio ) AND 
           0.3385469955768 <= RANGE_SQRT_Avg_Utilization_Ratio  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Avg_Utilization_Ratio  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.056284918;
      END;
    END;
  END;

********** LEAF    11  NODE   367 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <      0.1137102836104 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0076658108;
    END;
  END;

********** LEAF    12  NODE   368 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
         0.1137102836104 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18297579900032 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0916239047;
    END;
  END;

********** LEAF    13  NODE   369 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18297579900032 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.29646925275854 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.053935239;
    END;
  END;

********** LEAF    14  NODE   370 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.29646925275854 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.016426205;
    END;
  END;

********** LEAF    15  NODE   372 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'2' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.072925589;
    END;
  END;

********** LEAF    16  NODE   373 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0143294949;
    END;
  END;

********** LEAF    17  NODE   374 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.027482733;
    END;
  END;

********** LEAF    18  NODE   376 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
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
       _ARB_F_ + -0.054978247;
      END;
    END;
  END;

********** LEAF    19  NODE   377 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.47594472272823 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.036588449;
      END;
    END;
  END;

********** LEAF    20  NODE   379 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0766045503;
    END;
  END;

********** LEAF    21  NODE   380 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.45589988081048 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.026607756;
    END;
  END;

********** LEAF    22  NODE   383 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.45589988081048 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72348033373063 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.43614922609676 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.036092739;
      END;
    END;
  END;

********** LEAF    23  NODE   384 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.45589988081048 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72348033373063 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.43614922609676 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.049849776;
      END;
    END;
  END;

********** LEAF    24  NODE   382 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.72348033373063 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.018522496;
    END;
  END;

********** LEAF    25  NODE   386 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0589243819;
    END;
  END;

********** LEAF    26  NODE   387 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0077282175;
    END;
  END;

********** LEAF    27  NODE   388 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.027224951;
    END;
  END;

********** LEAF    28  NODE   390 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.47841237282641 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.05358504;
      END;
    END;
  END;

********** LEAF    29  NODE   391 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.47841237282641 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033779327;
      END;
    END;
  END;

********** LEAF    30  NODE   393 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.22328168454509 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0650147501;
    END;
  END;

********** LEAF    31  NODE   396 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.22328168454509 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71493841875248 THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41689543633867 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.016193826;
      END;
    END;
  END;

********** LEAF    32  NODE   397 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.22328168454509 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71493841875248 THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.41689543633867 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.047619164;
      END;
    END;
  END;

********** LEAF    33  NODE   395 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71493841875248 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.018562978;
    END;
  END;

********** LEAF    34  NODE   399 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38007024104385 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0625184108;
    END;
  END;

********** LEAF    35  NODE   400 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.38007024104385 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41332800304157 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.004592871;
    END;
  END;

********** LEAF    36  NODE   403 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41332800304157 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46251516773049 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.51430274135876 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.008138865;
      END;
    END;
  END;

********** LEAF    37  NODE   404 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41332800304157 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46251516773049 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.51430274135876 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.042151713;
      END;
    END;
  END;

********** LEAF    38  NODE   402 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.46251516773049 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.028393534;
    END;
  END;

********** LEAF    39  NODE   406 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0464227687;
    END;
  END;

********** LEAF    40  NODE   407 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0047595697;
    END;
  END;

********** LEAF    41  NODE   408 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.023688241;
    END;
  END;

********** LEAF    42  NODE   410 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45399557997049 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.051685656;
      END;
    END;
  END;

********** LEAF    43  NODE   411 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.45399557997049 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.032028706;
      END;
    END;
  END;

********** LEAF    44  NODE   413 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10153023316733 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013883133;
    END;
  END;

********** LEAF    45  NODE   414 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10153023316733 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.17815989879514 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0536136538;
    END;
  END;

********** LEAF    46  NODE   416 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.17815989879514 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.46277373224526 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.045321156;
      END;
    END;
  END;

********** LEAF    47  NODE   417 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.17815989879514 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.46277373224526 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49534183550857 THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.042063862;
      END;
    END;
  END;

********** LEAF    48  NODE   418 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.17815989879514 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.49534183550857 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    3; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0070962784;
      END;
    END;
  END;

********** LEAF    49  NODE   420 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.21156138259833 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.051178547;
    END;
  END;

********** LEAF    50  NODE   421 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.21156138259833 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.43365117203019 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.017133255;
    END;
  END;

********** LEAF    51  NODE   424 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.43365117203019 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71672626142232 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.25375400262117 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.037486645;
      END;
    END;
  END;

********** LEAF    52  NODE   425 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.43365117203019 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71672626142232 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.25375400262117 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.048294778;
      END;
    END;
  END;

********** LEAF    53  NODE   423 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71672626142232 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.011700026;
    END;
  END;

********** LEAF    54  NODE   427 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37400014963323 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0502854749;
    END;
  END;

********** LEAF    55  NODE   428 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41055002070908 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0060755541;
    END;
  END;

********** LEAF    56  NODE   431 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41055002070908 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45798124109902 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.51410409217322 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010940759;
      END;
    END;
  END;

********** LEAF    57  NODE   432 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41055002070908 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45798124109902 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.51410409217322 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033918035;
      END;
    END;
  END;

********** LEAF    58  NODE   430 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.45798124109902 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.028693926;
    END;
  END;

********** LEAF    59  NODE   434 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.11330223106746 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007878507;
    END;
  END;

********** LEAF    60  NODE   435 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.11330223106746 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.19785293336799 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0469508666;
    END;
  END;

********** LEAF    61  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19785293336799 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33108138804637 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <      0.2876520169924 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.054183093;
      END;
    END;
  END;

********** LEAF    62  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19785293336799 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33108138804637 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
           0.2876520169924 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034616122;
      END;
    END;
  END;

********** LEAF    63  NODE   437 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.33108138804637 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.028439813;
    END;
  END;

********** LEAF    64  NODE   441 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <      0.2367898291617 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0416646047;
    END;
  END;

********** LEAF    65  NODE   442 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
         0.2367898291617 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <      0.4471593166468 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.021049625;
    END;
  END;

********** LEAF    66  NODE   445 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
         0.4471593166468 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71652761223678 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.25691456447786 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.039562535;
      END;
    END;
  END;

********** LEAF    67  NODE   446 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
         0.4471593166468 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71652761223678 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.25691456447786 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.045480106;
      END;
    END;
  END;

********** LEAF    68  NODE   444 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71652761223678 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.011203074;
    END;
  END;

********** LEAF    69  NODE   448 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0396845305;
    END;
  END;

********** LEAF    70  NODE   449 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.58422725466825 THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.029939283;
    END;
  END;

********** LEAF    71  NODE   450 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.58422725466825 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71771950735001 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.035547668;
    END;
  END;

********** LEAF    72  NODE   451 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71771950735001 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013021146;
    END;
  END;

********** LEAF    73  NODE   453 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37579564877589 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0407570888;
    END;
  END;

********** LEAF    74  NODE   454 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41218633863909 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0022747857;
    END;
  END;

********** LEAF    75  NODE   457 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46251516773049 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'5' ,'4' ,'6' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'3' ,'2' ,'5' ,'4' ,'6' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0004720319;
      END;
    END;
  END;

********** LEAF    76  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46251516773049 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.044260321;
      END;
    END;
  END;

********** LEAF    77  NODE   456 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.46251516773049 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.028434454;
    END;
  END;

********** LEAF    78  NODE   460 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'2' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.030230873;
    END;
  END;

********** LEAF    79  NODE   461 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.007767537;
    END;
  END;

********** LEAF    80  NODE   462 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.020860849;
    END;
  END;

********** LEAF    81  NODE   464 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <      0.3214785367581 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.05510219;
      END;
    END;
  END;

********** LEAF    82  NODE   465 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
           0.3214785367581 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.016635975;
      END;
    END;
  END;

********** LEAF    83  NODE   467 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23659117997616 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.031479163;
    END;
  END;

********** LEAF    84  NODE   468 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23659117997616 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.45192689709972 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.014010073;
    END;
  END;

********** LEAF    85  NODE   471 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.45192689709972 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72864521255462 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.25530151626279 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033356053;
      END;
    END;
  END;

********** LEAF    86  NODE   472 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.45192689709972 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72864521255462 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.25530151626279 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.04127161;
      END;
    END;
  END;

********** LEAF    87  NODE   470 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.72864521255462 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.012686224;
    END;
  END;

********** LEAF    88  NODE   474 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37507848052683 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0366493612;
    END;
  END;

********** LEAF    89  NODE   475 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37507848052683 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41202309644793 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0023015977;
    END;
  END;

********** LEAF    90  NODE   478 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45886225816986 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.27801948740177 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.023122916;
      END;
    END;
  END;

********** LEAF    91  NODE   479 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45886225816986 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.27801948740177 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.014025098;
      END;
    END;
  END;

********** LEAF    92  NODE   477 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.45886225816986 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.023161359;
    END;
  END;

********** LEAF    93  NODE   481 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.09965874182745 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.006559751;
    END;
  END;

********** LEAF    94  NODE   482 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.09965874182745 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18294045528683 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0308158493;
    END;
  END;

********** LEAF    95  NODE   485 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.34017694585524 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.36452125546285 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.044411823;
      END;
    END;
  END;

********** LEAF    96  NODE   486 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.34017694585524 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.36452125546285 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.045487162;
      END;
    END;
  END;

********** LEAF    97  NODE   484 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.34017694585524 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0422208486;
    END;
  END;

********** LEAF    98  NODE   491 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
      RANGE_LOG_Total_Trans_Amt  <      0.1292050350046 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.032424067;
      END;
    END;
  END;

********** LEAF    99  NODE   493 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
           0.1292050350046 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_on_book , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ,'3' ,'0' ) THEN DO;
         _BRANCH_ =    1; 
        END; 

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0062396409;
        END;
      END;
    END;
  END;

********** LEAF   100  NODE   494 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
           0.1292050350046 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_on_book , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ,'4' ,'6' ,'5' ,'8' ,'1' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( G_Months_on_book  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '2' ,'3' ,'0' ,'7' ,'4' ,'6' ,'5' ,'8' ,'1' 
           ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.026953144;
        END;
      END;
    END;
  END;

********** LEAF   101  NODE   489 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0535903169;
    END;
  END;

********** LEAF   102  NODE   490 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.000023976;
    END;
  END;

********** LEAF   103  NODE   496 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.09943399963542 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.009173152;
    END;
  END;

********** LEAF   104  NODE   497 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.09943399963542 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18202095894905 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0270383555;
    END;
  END;

********** LEAF   105  NODE   498 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18202095894905 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.26227837236792 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.049012714;
    END;
  END;

********** LEAF   106  NODE   500 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.26227837236792 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 4;
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
       _ARB_F_ + -0.038168065;
      END;
    END;
  END;

********** LEAF   107  NODE   501 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.26227837236792 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.48422264453698 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.023231577;
      END;
    END;
  END;

********** LEAF   108  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <      0.2367898291617 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0271123376;
    END;
  END;

********** LEAF   109  NODE   504 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
         0.2367898291617 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.58820023837902 THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.021529651;
    END;
  END;

********** LEAF   110  NODE   505 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.58820023837902 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72129519268971 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.033645289;
    END;
  END;

********** LEAF   111  NODE   506 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.72129519268971 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.011117285;
    END;
  END;

********** LEAF   112  NODE   508 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.09913428890869 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007837053;
    END;
  END;

********** LEAF   113  NODE   509 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.09913428890869 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.19956640151816 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.023586636;
    END;
  END;

********** LEAF   114  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19956640151816 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.39511323003575 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.051562961;
      END;
    END;
  END;

********** LEAF   115  NODE   513 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19956640151816 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.39511323003575 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.045337527;
      END;
    END;
  END;

********** LEAF   116  NODE   511 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.32884643312443 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0293863058;
    END;
  END;

********** LEAF   117  NODE   515 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.11567478042845 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007316168;
    END;
  END;

********** LEAF   118  NODE   516 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.11567478042845 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.19722298137012 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0285848683;
    END;
  END;

********** LEAF   119  NODE   519 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19722298137012 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33372692627949 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <      0.3865713150576 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.04101052;
      END;
    END;
  END;

********** LEAF   120  NODE   520 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19722298137012 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33372692627949 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
           0.3865713150576 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.037308266;
      END;
    END;
  END;

********** LEAF   121  NODE   518 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.33372692627949 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0251244383;
    END;
  END;

********** LEAF   122  NODE   522 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10608650915463 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.00794971;
    END;
  END;

********** LEAF   123  NODE   523 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10608650915463 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18294045528683 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0232547343;
    END;
  END;

********** LEAF   124  NODE   526 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.35617798967024 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.03924724;
      END;
    END;
  END;

********** LEAF   125  NODE   527 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.35617798967024 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.037132519;
      END;
    END;
  END;

********** LEAF   126  NODE   525 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.32884643312443 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0224619183;
    END;
  END;

********** LEAF   127  NODE   529 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.24056416368692 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0249785079;
    END;
  END;

********** LEAF   128  NODE   530 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.24056416368692 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.46344854986094 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013250929;
    END;
  END;

********** LEAF   129  NODE   533 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.46344854986094 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.79916567342073 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.23177584524573 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028939668;
      END;
    END;
  END;

********** LEAF   130  NODE   534 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.46344854986094 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.79916567342073 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.23177584524573 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.038225233;
      END;
    END;
  END;

********** LEAF   131  NODE   532 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.79916567342073 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0091307573;
    END;
  END;

********** LEAF   132  NODE   536 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0247610001;
    END;
  END;

********** LEAF   133  NODE   537 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.44437822804926 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.010352495;
    END;
  END;

********** LEAF   134  NODE   540 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.44437822804926 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72924116011124 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.25661225117773 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.031194811;
      END;
    END;
  END;

********** LEAF   135  NODE   541 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.44437822804926 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72924116011124 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.25661225117773 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.041064295;
      END;
    END;
  END;

********** LEAF   136  NODE   539 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.72924116011124 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008014173;
    END;
  END;

********** LEAF   137  NODE   543 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37579564877589 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.031356081;
    END;
  END;

********** LEAF   138  NODE   544 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41202309644793 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.001867509;
    END;
  END;

********** LEAF   139  NODE   547 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45842203183145 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.52602304330552 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.011801723;
      END;
    END;
  END;

********** LEAF   140  NODE   548 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45842203183145 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.52602304330552 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.023789276;
      END;
    END;
  END;

********** LEAF   141  NODE   546 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.45842203183145 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.019936269;
    END;
  END;

********** LEAF   142  NODE   553 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
      RANGE_LOG_Total_Trans_Amt  <     0.12755282766955 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030949184;
      END;
    END;
  END;

********** LEAF   143  NODE   555 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.12755282766955 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ,'4' ,'3' ,'1' ,'2' ) THEN DO;
         _BRANCH_ =    1; 
        END; 

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0109157756;
        END;
      END;
    END;
  END;

********** LEAF   144  NODE   556 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.12755282766955 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('6' ,'7' ,'9' ,'8' ,'10' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( G_Customer_Age  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '5' ,'4' ,'3' ,'1' ,'2' ,'6' ,'7' ,'9' ,'8' ,'10' 
           ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.020618024;
        END;
      END;
    END;
  END;

********** LEAF   145  NODE   551 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.039158438;
    END;
  END;

********** LEAF   146  NODE   552 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0012254164;
    END;
  END;

********** LEAF   147  NODE   561 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
      RANGE_LOG_Total_Trans_Amt  <     0.13685395488046 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.027558312;
      END;
    END;
  END;

********** LEAF   148  NODE   562 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.13685395488046 <= RANGE_LOG_Total_Trans_Amt  AND
      RANGE_LOG_Total_Trans_Amt  <     0.27357747642224 THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.013146492;
      END;
    END;
  END;

********** LEAF   149  NODE   563 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.27357747642224 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    3; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0113023728;
      END;
    END;
  END;

********** LEAF   150  NODE   559 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0399100693;
    END;
  END;

********** LEAF   151  NODE   560 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.001853006;
    END;
  END;

********** LEAF   152  NODE   565 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0270394533;
    END;
  END;

********** LEAF   153  NODE   566 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0098356982;
    END;
  END;

********** LEAF   154  NODE   567 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.015973234;
    END;
  END;

********** LEAF   155  NODE   569 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'0' ,'4' ,'2' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45399557997049 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.048882708;
      END;
    END;
  END;

********** LEAF   156  NODE   570 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'0' ,'4' ,'2' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.45399557997049 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.021397492;
      END;
    END;
  END;

********** LEAF   157  NODE   572 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.042935198;
    END;
  END;

********** LEAF   158  NODE   575 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0163480146;
      END;
    END;
  END;

********** LEAF   159  NODE   576 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ) THEN DO;
     _BRANCH_ =    2; 
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
       _ARB_F_ + -0.023974357;
      END;
    END;
  END;

********** LEAF   160  NODE   577 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 3;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1' 
       ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'2' ,'0' ,'5' ,'4' ,'6' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'2' ,'0' ,'5' ,'4' ,'6' ,'3' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0335432017;
      END;
    END;
  END;

********** LEAF   161  NODE   578 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 3;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1' 
       ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.014709898;
      END;
    END;
  END;

********** LEAF   162  NODE   580 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'2' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0227917662;
    END;
  END;

********** LEAF   163  NODE   581 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0032553309;
    END;
  END;

********** LEAF   164  NODE   582 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013015801;
    END;
  END;

********** LEAF   165  NODE   584 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45399557997049 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.047067439;
      END;
    END;
  END;

********** LEAF   166  NODE   585 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.45399557997049 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.012479595;
      END;
    END;
  END;

********** LEAF   167  NODE   587 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37829503093173 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0242150021;
    END;
  END;

********** LEAF   168  NODE   588 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37829503093173 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41202309644793 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.003587336;
    END;
  END;

********** LEAF   169  NODE   591 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.47030848499762 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0074776761;
      END;
    END;
  END;

********** LEAF   170  NODE   592 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.47030848499762 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
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
       _ARB_F_ + -0.030486201;
      END;
    END;
  END;

********** LEAF   171  NODE   590 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.47030848499762 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.024436835;
    END;
  END;

********** LEAF   172  NODE   594 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0208222428;
    END;
  END;

********** LEAF   173  NODE   595 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.45589988081048 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007337912;
    END;
  END;

********** LEAF   174  NODE   598 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.45589988081048 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <      0.7264600715137 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.25169928780321 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.029142992;
      END;
    END;
  END;

********** LEAF   175  NODE   599 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.45589988081048 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <      0.7264600715137 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.25169928780321 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033420781;
      END;
    END;
  END;

********** LEAF   176  NODE   597 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
         0.7264600715137 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007629084;
    END;
  END;

********** LEAF   177  NODE   604 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
       _ARB_F_ + -0.026854163;
      END;
    END;
  END;

********** LEAF   178  NODE   606 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
         _BRANCH_ =    1; 
        END; 

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.011092428;
        END;
      END;
    END;
  END;

********** LEAF   179  NODE   607 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
         _ARB_F_ + -0.024531844;
        END;
      END;
    END;
  END;

********** LEAF   180  NODE   602 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0374567332;
    END;
  END;

********** LEAF   181  NODE   603 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0007615472;
    END;
  END;

********** LEAF   182  NODE   609 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0229296234;
    END;
  END;

********** LEAF   183  NODE   610 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0025555724;
    END;
  END;

********** LEAF   184  NODE   611 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.010099181;
    END;
  END;

********** LEAF   185  NODE   613 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'0' ,'4' ,'2' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.44410211300243 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.047935493;
      END;
    END;
  END;

********** LEAF   186  NODE   614 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'0' ,'4' ,'2' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.44410211300243 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.01769387;
      END;
    END;
  END;

********** LEAF   187  NODE   616 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.038374465;
    END;
  END;

********** LEAF   188  NODE   619 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.008649797;
      END;
    END;
  END;

********** LEAF   189  NODE   620 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ) THEN DO;
     _BRANCH_ =    2; 
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
       _ARB_F_ + -0.021816739;
      END;
    END;
  END;

********** LEAF   190  NODE   621 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 3;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1' 
       ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ,'5' ,'4' ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0300235251;
      END;
    END;
  END;

********** LEAF   191  NODE   622 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 3;
    ELSE IF _ARBFMT_12 NOTIN (
      '4' ,'3' ,'2' ,'0' ,'1' 
       ) THEN _BRANCH_ = 3;
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
        '1' ,'3' ,'2' ,'0' ,'5' ,'4' ,'6' ,'7' 
         ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.004952416;
      END;
    END;
  END;

********** LEAF   192  NODE   624 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.12118330137439 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.010657601;
    END;
  END;

********** LEAF   193  NODE   625 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.12118330137439 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.20834656616982 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0237703272;
    END;
  END;

********** LEAF   194  NODE   628 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.20834656616982 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33372692627949 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.38776321017083 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.041390873;
      END;
    END;
  END;

********** LEAF   195  NODE   629 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.20834656616982 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33372692627949 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.38776321017083 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.038250869;
      END;
    END;
  END;

********** LEAF   196  NODE   627 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.33372692627949 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0290984681;
    END;
  END;

********** LEAF   197  NODE   634 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
      RANGE_LOG_Total_Trans_Amt  <     0.13045211172074 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.026077689;
      END;
    END;
  END;

********** LEAF   198  NODE   635 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.13045211172074 <= RANGE_LOG_Total_Trans_Amt  AND
      RANGE_LOG_Total_Trans_Amt  <     0.27284688020091 THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.015909269;
      END;
    END;
  END;

********** LEAF   199  NODE   636 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.27284688020091 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    3; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0223550532;
      END;
    END;
  END;

********** LEAF   200  NODE   632 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.03162802;
    END;
  END;

********** LEAF   201  NODE   633 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0017685837;
    END;
  END;

********** LEAF   202  NODE   638 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37364001442876 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0229908124;
    END;
  END;

********** LEAF   203  NODE   639 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37364001442876 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41218633863909 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0044258403;
    END;
  END;

********** LEAF   204  NODE   642 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45930220312304 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.27957425922232 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.015360817;
      END;
    END;
  END;

********** LEAF   205  NODE   643 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45930220312304 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.27957425922232 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.00648461;
      END;
    END;
  END;

********** LEAF   206  NODE   641 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.45930220312304 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.017898234;
    END;
  END;

********** LEAF   207  NODE   645 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0176041075;
    END;
  END;

********** LEAF   208  NODE   646 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.44914580850218 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.01498236;
    END;
  END;

********** LEAF   209  NODE   649 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.44914580850218 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.79280889948351 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.22468389049928 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.023647832;
      END;
    END;
  END;

********** LEAF   210  NODE   650 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.44914580850218 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.79280889948351 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.22468389049928 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.036922894;
      END;
    END;
  END;

********** LEAF   211  NODE   648 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.79280889948351 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0047368757;
    END;
  END;

********** LEAF   212  NODE   652 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'2' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0197936506;
    END;
  END;

********** LEAF   213  NODE   653 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0042005238;
    END;
  END;

********** LEAF   214  NODE   654 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.01038907;
    END;
  END;

********** LEAF   215  NODE   656 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45340212131549 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.047463254;
      END;
    END;
  END;

********** LEAF   216  NODE   657 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 4;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'2' ,'0' ,'4' ,'3' ,'5' ,'6' ,'7' 
       ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.45340212131549 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010008064;
      END;
    END;
  END;

********** LEAF   217  NODE   662 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
      RANGE_LOG_Total_Trans_Amt  <     0.12659732929932 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.029264487;
      END;
    END;
  END;

********** LEAF   218  NODE   664 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.12659732929932 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ,'4' ,'3' ,'1' ,'2' ) THEN DO;
         _BRANCH_ =    1; 
        END; 

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0201576494;
        END;
      END;
    END;
  END;

********** LEAF   219  NODE   665 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

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
          0.12659732929932 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Customer_Age , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('6' ,'7' ,'9' ,'8' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( G_Customer_Age  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '5' ,'4' ,'3' ,'1' ,'2' ,'6' ,'7' ,'9' ,'8' 
           ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.014432544;
        END;
      END;
    END;
  END;

********** LEAF   220  NODE   660 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.032243843;
    END;
  END;

********** LEAF   221  NODE   661 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007475751;
    END;
  END;

********** LEAF   222  NODE   667 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10876872241482 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008651167;
    END;
  END;

********** LEAF   223  NODE   668 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10876872241482 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18071151953188 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0199030658;
    END;
  END;

********** LEAF   224  NODE   670 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18071151953188 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.46340941089837 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.035542803;
      END;
    END;
  END;

********** LEAF   225  NODE   671 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18071151953188 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.46340941089837 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  AND
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.49652899580759 THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.035366823;
      END;
    END;
  END;

********** LEAF   226  NODE   672 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18071151953188 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.49652899580759 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    3; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0240643524;
      END;
    END;
  END;

********** LEAF   227  NODE   674 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37074633919521 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0205557988;
    END;
  END;

********** LEAF   228  NODE   675 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37074633919521 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.42075268636862 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.002847955;
    END;
  END;

********** LEAF   229  NODE   678 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.42075268636862 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <      0.4754330638017 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.28998448319725 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.021851837;
      END;
    END;
  END;

********** LEAF   230  NODE   679 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.42075268636862 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <      0.4754330638017 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.28998448319725 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0045082804;
      END;
    END;
  END;

********** LEAF   231  NODE   677 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
         0.4754330638017 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.024849251;
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

