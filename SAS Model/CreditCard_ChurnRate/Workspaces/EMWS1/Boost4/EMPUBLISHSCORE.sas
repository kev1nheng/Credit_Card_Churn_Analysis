****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
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
label I_Attrition_Flag = 'Into: Attrition_Flag' ;
label U_Attrition_Flag = 'Unnormalized Into: Attrition_Flag' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_17 $     17; DROP _ARBFMT_17; 
_ARBFMT_17 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


 DROP _ARB_F_;
 DROP _ARB_BADF_;
     _ARB_F_ = -0.826536227;
     _ARB_BADF_ = 0;
******             ASSIGN OBSERVATION TO NODE             ******;
 DROP _ARB_P_;
 _ARB_P_ = 0;
 DROP _ARB_PPATH_; _ARB_PPATH_ = 1;

********** LEAF     1  NODE   339 ***************;
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

********** LEAF     2  NODE   340 ***************;
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

********** LEAF     3  NODE   341 ***************;
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

********** LEAF     4  NODE   343 ***************;
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

********** LEAF     5  NODE   344 ***************;
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

********** LEAF     6  NODE   346 ***************;
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

********** LEAF     7  NODE   347 ***************;
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

********** LEAF     8  NODE   348 ***************;
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

********** LEAF     9  NODE   350 ***************;
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

********** LEAF    10  NODE   351 ***************;
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

********** LEAF    11  NODE   353 ***************;
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

********** LEAF    12  NODE   354 ***************;
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

********** LEAF    13  NODE   355 ***************;
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

********** LEAF    14  NODE   356 ***************;
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

********** LEAF    15  NODE   358 ***************;
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

********** LEAF    16  NODE   359 ***************;
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

********** LEAF    17  NODE   360 ***************;
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

********** LEAF    18  NODE   362 ***************;
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

********** LEAF    19  NODE   363 ***************;
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

********** LEAF    20  NODE   365 ***************;
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

********** LEAF    21  NODE   366 ***************;
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

********** LEAF    22  NODE   369 ***************;
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

********** LEAF    23  NODE   370 ***************;
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

********** LEAF    24  NODE   368 ***************;
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

********** LEAF    25  NODE   372 ***************;
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

********** LEAF    26  NODE   373 ***************;
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

********** LEAF    27  NODE   374 ***************;
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

********** LEAF    28  NODE   376 ***************;
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

********** LEAF    29  NODE   377 ***************;
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

********** LEAF    30  NODE   379 ***************;
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

********** LEAF    31  NODE   382 ***************;
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

********** LEAF    32  NODE   383 ***************;
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

********** LEAF    33  NODE   381 ***************;
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

********** LEAF    34  NODE   385 ***************;
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

********** LEAF    35  NODE   386 ***************;
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

********** LEAF    36  NODE   387 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41332800304157 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.43738215953835 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.025863976;
    END;
  END;

********** LEAF    37  NODE   388 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.43738215953835 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46251516773049 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.024726645;
    END;
  END;

********** LEAF    38  NODE   389 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.46251516773049 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    5; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 5;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.028393534;
    END;
  END;

********** LEAF    39  NODE   391 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0463908113;
    END;
  END;

********** LEAF    40  NODE   392 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0047573235;
    END;
  END;

********** LEAF    41  NODE   393 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.023638735;
    END;
  END;

********** LEAF    42  NODE   395 ***************;
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
       _ARB_F_ + -0.051653693;
      END;
    END;
  END;

********** LEAF    43  NODE   396 ***************;
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
       _ARB_F_ + -0.032015517;
      END;
    END;
  END;

********** LEAF    44  NODE   398 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10153023316733 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013922983;
    END;
  END;

********** LEAF    45  NODE   399 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10153023316733 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.17815989879514 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.053617401;
    END;
  END;

********** LEAF    46  NODE   401 ***************;
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
       _ARB_F_ + -0.045301541;
      END;
    END;
  END;

********** LEAF    47  NODE   402 ***************;
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
       _ARB_F_ + -0.042038737;
      END;
    END;
  END;

********** LEAF    48  NODE   403 ***************;
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
       _ARB_F_ + 0.0071987913;
      END;
    END;
  END;

********** LEAF    49  NODE   405 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.21156138259833 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0518471152;
    END;
  END;

********** LEAF    50  NODE   406 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.21156138259833 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.43365117203019 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.016763974;
    END;
  END;

********** LEAF    51  NODE   407 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.43365117203019 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.57707588398887 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.044601333;
    END;
  END;

********** LEAF    52  NODE   408 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.57707588398887 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71672626142232 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.038354034;
    END;
  END;

********** LEAF    53  NODE   409 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71672626142232 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    5; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.012138572;
    END;
  END;

********** LEAF    54  NODE   411 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37400014963323 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0503547823;
    END;
  END;

********** LEAF    55  NODE   412 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37400014963323 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41055002070908 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0060467081;
    END;
  END;

********** LEAF    56  NODE   413 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41055002070908 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <      0.4344481465894 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.01894341;
    END;
  END;

********** LEAF    57  NODE   414 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
         0.4344481465894 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45798124109902 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.024123914;
    END;
  END;

********** LEAF    58  NODE   415 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.45798124109902 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    5; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 5;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.028705074;
    END;
  END;

********** LEAF    59  NODE   417 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.11330223106746 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007857393;
    END;
  END;

********** LEAF    60  NODE   418 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.11330223106746 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.19785293336799 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0470529576;
    END;
  END;

********** LEAF    61  NODE   421 ***************;
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
       _ARB_F_ + -0.054122326;
      END;
    END;
  END;

********** LEAF    62  NODE   422 ***************;
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
       _ARB_F_ + -0.034660641;
      END;
    END;
  END;

********** LEAF    63  NODE   420 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.33108138804637 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0282012888;
    END;
  END;

********** LEAF    64  NODE   424 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <      0.2367898291617 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0425332399;
    END;
  END;

********** LEAF    65  NODE   425 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
         0.2367898291617 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <      0.4471593166468 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.020519168;
    END;
  END;

********** LEAF    66  NODE   428 ***************;
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
       _ARB_F_ + -0.039499051;
      END;
    END;
  END;

********** LEAF    67  NODE   429 ***************;
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
       _ARB_F_ + -0.045806182;
      END;
    END;
  END;

********** LEAF    68  NODE   427 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71652761223678 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.011888006;
    END;
  END;

********** LEAF    69  NODE   431 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0404639265;
    END;
  END;

********** LEAF    70  NODE   432 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.44755661501787 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.018383961;
    END;
  END;

********** LEAF    71  NODE   435 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.44755661501787 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72010329757648 THEN DO;
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
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.035364185;
      END;
    END;
  END;

********** LEAF    72  NODE   436 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.44755661501787 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72010329757648 THEN DO;
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

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.046873041;
      END;
    END;
  END;

********** LEAF    73  NODE   434 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.72010329757648 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013267188;
    END;
  END;

********** LEAF    74  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37579564877589 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0406963105;
    END;
  END;

********** LEAF    75  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41218633863909 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0022089661;
    END;
  END;

********** LEAF    76  NODE   440 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.43614922609676 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.017061682;
    END;
  END;

********** LEAF    77  NODE   441 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.43614922609676 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46251516773049 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.017222423;
    END;
  END;

********** LEAF    78  NODE   442 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.46251516773049 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    5; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 5;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.028481184;
    END;
  END;

********** LEAF    79  NODE   444 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'2' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0305095548;
    END;
  END;

********** LEAF    80  NODE   445 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0081650963;
    END;
  END;

********** LEAF    81  NODE   446 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.020303395;
    END;
  END;

********** LEAF    82  NODE   448 ***************;
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
       _ARB_F_ + -0.055144251;
      END;
    END;
  END;

********** LEAF    83  NODE   449 ***************;
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
       _ARB_F_ + -0.017505379;
      END;
    END;
  END;

********** LEAF    84  NODE   451 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23659117997616 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0320912604;
    END;
  END;

********** LEAF    85  NODE   452 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23659117997616 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.45192689709972 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.014410949;
    END;
  END;

********** LEAF    86  NODE   455 ***************;
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
       _ARB_F_ + -0.032998606;
      END;
    END;
  END;

********** LEAF    87  NODE   456 ***************;
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
       _ARB_F_ + -0.041470854;
      END;
    END;
  END;

********** LEAF    88  NODE   454 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.72864521255462 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013203955;
    END;
  END;

********** LEAF    89  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37507848052683 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.036481852;
    END;
  END;

********** LEAF    90  NODE   459 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37507848052683 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41202309644793 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0021965381;
    END;
  END;

********** LEAF    91  NODE   460 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.43522223389962 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.017690107;
    END;
  END;

********** LEAF    92  NODE   461 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.43522223389962 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45886225816986 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.021117183;
    END;
  END;

********** LEAF    93  NODE   462 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.45886225816986 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    5; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 5;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.02324544;
    END;
  END;

********** LEAF    94  NODE   464 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.09965874182745 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.006438314;
    END;
  END;

********** LEAF    95  NODE   465 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.09965874182745 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18294045528683 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0309669212;
    END;
  END;

********** LEAF    96  NODE   468 ***************;
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
       _ARB_F_ + -0.044252848;
      END;
    END;
  END;

********** LEAF    97  NODE   469 ***************;
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
       _ARB_F_ + -0.045571781;
      END;
    END;
  END;

********** LEAF    98  NODE   467 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.34017694585524 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0412611701;
    END;
  END;

********** LEAF    99  NODE   474 ***************;
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
       _ARB_F_ + -0.032319801;
      END;
    END;
  END;

********** LEAF   100  NODE   476 ***************;
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
         _ARB_F_ + 0.0062519182;
        END;
      END;
    END;
  END;

********** LEAF   101  NODE   477 ***************;
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
         _ARB_F_ + -0.026956085;
        END;
      END;
    END;
  END;

********** LEAF   102  NODE   472 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0532145192;
    END;
  END;

********** LEAF   103  NODE   473 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.000099642;
    END;
  END;

********** LEAF   104  NODE   479 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0280841011;
    END;
  END;

********** LEAF   105  NODE   482 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71533571712355 THEN DO;
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
       _ARB_F_ + -0.038796779;
      END;
    END;
  END;

********** LEAF   106  NODE   483 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71533571712355 THEN DO;
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
       _ARB_F_ + -0.008012243;
      END;
    END;
  END;

********** LEAF   107  NODE   481 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71533571712355 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.009693018;
    END;
  END;

********** LEAF   108  NODE   485 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0238358444;
    END;
  END;

********** LEAF   109  NODE   486 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0100997549;
    END;
  END;

********** LEAF   110  NODE   487 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.012726249;
    END;
  END;

********** LEAF   111  NODE   489 ***************;
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
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45369894767687 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.050615719;
      END;
    END;
  END;

********** LEAF   112  NODE   490 ***************;
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
          0.45369894767687 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030550959;
      END;
    END;
  END;

********** LEAF   113  NODE   492 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.09913428890869 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.010115196;
    END;
  END;

********** LEAF   114  NODE   493 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.09913428890869 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.19956640151816 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0247296216;
    END;
  END;

********** LEAF   115  NODE   496 ***************;
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
       _ARB_F_ + -0.051703825;
      END;
    END;
  END;

********** LEAF   116  NODE   497 ***************;
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
       _ARB_F_ + -0.045579137;
      END;
    END;
  END;

********** LEAF   117  NODE   495 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.32884643312443 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0321644373;
    END;
  END;

********** LEAF   118  NODE   499 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10888037171525 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.00916524;
    END;
  END;

********** LEAF   119  NODE   500 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10888037171525 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18294045528683 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0270732865;
    END;
  END;

********** LEAF   120  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33372692627949 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.37107667858561 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.037885968;
      END;
    END;
  END;

********** LEAF   121  NODE   504 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33372692627949 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.37107667858561 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.03642532;
      END;
    END;
  END;

********** LEAF   122  NODE   502 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.33372692627949 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0272601901;
    END;
  END;

********** LEAF   123  NODE   506 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10608650915463 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.009411183;
    END;
  END;

********** LEAF   124  NODE   507 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10608650915463 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18294045528683 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0244907365;
    END;
  END;

********** LEAF   125  NODE   508 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18294045528683 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.26036980054948 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.041996944;
    END;
  END;

********** LEAF   126  NODE   509 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.26036980054948 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.32884643312443 THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.036179998;
    END;
  END;

********** LEAF   127  NODE   510 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.32884643312443 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    5; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0243593307;
    END;
  END;

********** LEAF   128  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.24056416368692 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.02536504;
    END;
  END;

********** LEAF   129  NODE   513 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.24056416368692 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.46344854986094 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013242278;
    END;
  END;

********** LEAF   130  NODE   514 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.46344854986094 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.59972189114024 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.038591017;
    END;
  END;

********** LEAF   131  NODE   515 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.59972189114024 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.79916567342073 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.027966751;
    END;
  END;

********** LEAF   132  NODE   516 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.79916567342073 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    5; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0083228361;
    END;
  END;

********** LEAF   133  NODE   518 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0252168548;
    END;
  END;

********** LEAF   134  NODE   519 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.44437822804926 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.010294527;
    END;
  END;

********** LEAF   135  NODE   520 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.44437822804926 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.59177592371871 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.03497123;
    END;
  END;

********** LEAF   136  NODE   521 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.59177592371871 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.72924116011124 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.032656706;
    END;
  END;

********** LEAF   137  NODE   522 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.72924116011124 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    5; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008688463;
    END;
  END;

********** LEAF   138  NODE   524 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37579564877589 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0305938405;
    END;
  END;

********** LEAF   139  NODE   525 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37579564877589 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41202309644793 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.001861105;
    END;
  END;

********** LEAF   140  NODE   526 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.43553145052386 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.016419497;
    END;
  END;

********** LEAF   141  NODE   527 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.43553145052386 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45842203183145 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.0155642;
    END;
  END;

********** LEAF   142  NODE   528 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.45842203183145 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    5; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 5;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.0201485;
    END;
  END;

********** LEAF   143  NODE   530 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.04142898;
    END;
  END;

********** LEAF   144  NODE   533 ***************;
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
       _ARB_F_ + 0.0059042731;
      END;
    END;
  END;

********** LEAF   145  NODE   534 ***************;
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
       _ARB_F_ + -0.020480437;
      END;
    END;
  END;

********** LEAF   146  NODE   535 ***************;
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
       _ARB_F_ + 0.0327882643;
      END;
    END;
  END;

********** LEAF   147  NODE   536 ***************;
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
       _ARB_F_ + -0.009830314;
      END;
    END;
  END;

********** LEAF   148  NODE   541 ***************;
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
       _ARB_F_ + -0.02994113;
      END;
    END;
  END;

********** LEAF   149  NODE   542 ***************;
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
       _ARB_F_ + -0.013404249;
      END;
    END;
  END;

********** LEAF   150  NODE   543 ***************;
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
       _ARB_F_ + 0.0133537272;
      END;
    END;
  END;

********** LEAF   151  NODE   539 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0461062188;
    END;
  END;

********** LEAF   152  NODE   540 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.002541661;
    END;
  END;

********** LEAF   153  NODE   545 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0246101424;
    END;
  END;

********** LEAF   154  NODE   546 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0079080749;
    END;
  END;

********** LEAF   155  NODE   547 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.014092787;
    END;
  END;

********** LEAF   156  NODE   549 ***************;
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
       _ARB_F_ + -0.047586991;
      END;
    END;
  END;

********** LEAF   157  NODE   550 ***************;
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
       _ARB_F_ + -0.019302083;
      END;
    END;
  END;

********** LEAF   158  NODE   552 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.041290526;
    END;
  END;

********** LEAF   159  NODE   555 ***************;
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
       _ARB_F_ + 0.0156194344;
      END;
    END;
  END;

********** LEAF   160  NODE   556 ***************;
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
       _ARB_F_ + -0.022745184;
      END;
    END;
  END;

********** LEAF   161  NODE   557 ***************;
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
       _ARB_F_ + 0.0302552133;
      END;
    END;
  END;

********** LEAF   162  NODE   558 ***************;
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
       _ARB_F_ + -0.014419185;
      END;
    END;
  END;

********** LEAF   163  NODE   563 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.13063543214166 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028924517;
      END;
    END;
  END;

********** LEAF   164  NODE   565 ***************;
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
          0.13063543214166 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
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
         _ARB_F_ + 0.0078785175;
        END;
      END;
    END;
  END;

********** LEAF   165  NODE   566 ***************;
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
          0.13063543214166 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_12 = PUT( G_Months_on_book , BEST12.);
       %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('0' ,'7' ,'4' ,'6' ,'5' ,'8' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( G_Months_on_book  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_12 NOTIN (
          '2' ,'3' ,'1' ,'0' ,'7' ,'4' ,'6' ,'5' ,'8' 
           ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.017327753;
        END;
      END;
    END;
  END;

********** LEAF   166  NODE   561 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0411106024;
    END;
  END;

********** LEAF   167  NODE   562 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.004504474;
    END;
  END;

********** LEAF   168  NODE   568 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37829503093173 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0242125552;
    END;
  END;

********** LEAF   169  NODE   569 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37829503093173 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41202309644793 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.003647073;
    END;
  END;

********** LEAF   170  NODE   572 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46280614936307 THEN DO;
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
       _ARB_F_ + 0.0065768758;
      END;
    END;
  END;

********** LEAF   171  NODE   573 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41202309644793 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.46280614936307 THEN DO;
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
       _ARB_F_ + -0.040570009;
      END;
    END;
  END;

********** LEAF   172  NODE   571 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.46280614936307 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.021761892;
    END;
  END;

********** LEAF   173  NODE   575 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0213634208;
    END;
  END;

********** LEAF   174  NODE   576 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23083035359555 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.45589988081048 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007147709;
    END;
  END;

********** LEAF   175  NODE   579 ***************;
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
       _ARB_F_ + -0.02851747;
      END;
    END;
  END;

********** LEAF   176  NODE   580 ***************;
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
       _ARB_F_ + -0.034406933;
      END;
    END;
  END;

********** LEAF   177  NODE   578 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
         0.7264600715137 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008149432;
    END;
  END;

********** LEAF   178  NODE   582 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10153023316733 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.005616311;
    END;
  END;

********** LEAF   179  NODE   583 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10153023316733 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.18297579900032 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0196531029;
    END;
  END;

********** LEAF   180  NODE   584 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18297579900032 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.28827656854905 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.045034108;
    END;
  END;

********** LEAF   181  NODE   585 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.28827656854905 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0077320596;
    END;
  END;

********** LEAF   182  NODE   590 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.13480845937774 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.026785828;
      END;
    END;
  END;

********** LEAF   183  NODE   591 ***************;
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
          0.13480845937774 <= RANGE_LOG_Total_Trans_Amt  AND
      RANGE_LOG_Total_Trans_Amt  <     0.27580019873886 THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.017843414;
      END;
    END;
  END;

********** LEAF   184  NODE   592 ***************;
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
          0.27580019873886 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    3; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0140487615;
      END;
    END;
  END;

********** LEAF   185  NODE   588 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0361506872;
    END;
  END;

********** LEAF   186  NODE   589 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.000338294;
    END;
  END;

********** LEAF   187  NODE   594 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.036257982;
    END;
  END;

********** LEAF   188  NODE   597 ***************;
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
       _ARB_F_ + 0.0093723628;
      END;
    END;
  END;

********** LEAF   189  NODE   598 ***************;
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
       _ARB_F_ + -0.021549334;
      END;
    END;
  END;

********** LEAF   190  NODE   599 ***************;
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
       _ARB_F_ + 0.0287832499;
      END;
    END;
  END;

********** LEAF   191  NODE   600 ***************;
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
       _ARB_F_ + -0.006927965;
      END;
    END;
  END;

********** LEAF   192  NODE   602 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.12118330137439 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.009891049;
    END;
  END;

********** LEAF   193  NODE   603 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.12118330137439 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.20834656616982 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0259420002;
    END;
  END;

********** LEAF   194  NODE   604 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.20834656616982 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.28748761779233 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.052026885;
    END;
  END;

********** LEAF   195  NODE   605 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.28748761779233 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33372692627949 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.025519441;
    END;
  END;

********** LEAF   196  NODE   606 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.33372692627949 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    5; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0233605764;
    END;
  END;

********** LEAF   197  NODE   608 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37291870065053 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0221198811;
    END;
  END;

********** LEAF   198  NODE   609 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37291870065053 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41218633863909 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.004664518;
    END;
  END;

********** LEAF   199  NODE   612 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <      0.4601806909446 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.52363925307906 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001931419;
      END;
    END;
  END;

********** LEAF   200  NODE   613 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <      0.4601806909446 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.52363925307906 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.021048435;
      END;
    END;
  END;

********** LEAF   201  NODE   611 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
         0.4601806909446 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.014924672;
    END;
  END;

********** LEAF   202  NODE   615 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0214893982;
    END;
  END;

********** LEAF   203  NODE   616 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0047016647;
    END;
  END;

********** LEAF   204  NODE   617 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.006833307;
    END;
  END;

********** LEAF   205  NODE   619 ***************;
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
       _ARB_F_ + -0.047065926;
      END;
    END;
  END;

********** LEAF   206  NODE   620 ***************;
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
       _ARB_F_ + -0.01289986;
      END;
    END;
  END;

********** LEAF   207  NODE   622 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38934363250998 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0198074997;
    END;
  END;

********** LEAF   208  NODE   623 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.38934363250998 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.42043260050399 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.00887555;
    END;
  END;

********** LEAF   209  NODE   624 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.42043260050399 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.44772503270882 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.013250706;
    END;
  END;

********** LEAF   210  NODE   625 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.44772503270882 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  AND
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.47287771633974 THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.012218026;
    END;
  END;

********** LEAF   211  NODE   626 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.47287771633974 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
     _BRANCH_ =    5; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.020329882;
    END;
  END;

********** LEAF   212  NODE   628 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.10153023316733 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.012417778;
    END;
  END;

********** LEAF   213  NODE   629 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.10153023316733 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.19785293336799 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0156130601;
    END;
  END;

********** LEAF   214  NODE   632 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19785293336799 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33044318271358 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.38676996424314 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.035481364;
      END;
    END;
  END;

********** LEAF   215  NODE   633 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19785293336799 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.33044318271358 THEN DO;
     _BRANCH_ =    3; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 3;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.38676996424314 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.026847461;
      END;
    END;
  END;

********** LEAF   216  NODE   631 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.33044318271358 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0229145704;
    END;
  END;

********** LEAF   217  NODE   638 ***************;
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
       _ARB_F_ + -0.030672735;
      END;
    END;
  END;

********** LEAF   218  NODE   640 ***************;
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
         _ARB_F_ + 0.0243821094;
        END;
      END;
    END;
  END;

********** LEAF   219  NODE   641 ***************;
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
         _ARB_F_ + -0.015098474;
        END;
      END;
    END;
  END;

********** LEAF   220  NODE   636 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0319350415;
    END;
  END;

********** LEAF   221  NODE   637 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007026847;
    END;
  END;

********** LEAF   222  NODE   643 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23023440603893 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.019345707;
    END;
  END;

********** LEAF   223  NODE   647 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23023440603893 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.58144616607071 THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.25919661996376 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.017639585;
      END;
    END;
  END;

********** LEAF   224  NODE   648 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23023440603893 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.58144616607071 THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.25919661996376 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030334457;
      END;
    END;
  END;

********** LEAF   225  NODE   645 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.58144616607071 <= RANGE_Total_Revolving_Bal  AND
    RANGE_Total_Revolving_Bal  <     0.71732220897894 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.019994292;
    END;
  END;

********** LEAF   226  NODE   646 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.71732220897894 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    4; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.00761651;
    END;
  END;

********** LEAF   227  NODE   653 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.12766303277562 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.026429059;
      END;
    END;
  END;

********** LEAF   228  NODE   655 ***************;
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
          0.12766303277562 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
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
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( G_Contacts_Count_12_mon  ) THEN _BRANCH_ = 1;
        ELSE IF _ARBFMT_12 NOTIN (
          '2' ,'1' ,'0' ,'3' ,'4' 
           ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0097617375;
        END;
      END;
    END;
  END;

********** LEAF   229  NODE   656 ***************;
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
          0.12766303277562 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
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

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.020967876;
        END;
      END;
    END;
  END;

********** LEAF   230  NODE   651 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0291285499;
    END;
  END;

********** LEAF   231  NODE   652 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.00713609;
    END;
  END;

********** LEAF   232  NODE   658 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.11578589657774 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007287892;
    END;
  END;

********** LEAF   233  NODE   659 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.11578589657774 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.19785293336799 THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0186430542;
    END;
  END;

********** LEAF   234  NODE   660 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.19785293336799 <= RANGE_LOG_Total_Trans_Amt  AND
    RANGE_LOG_Total_Trans_Amt  <     0.28752049823176 THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.05050925;
    END;
  END;

********** LEAF   235  NODE   661 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.28752049823176 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    4; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 4;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0064730279;
    END;
  END;

********** LEAF   236  NODE   663 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'0' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0193860875;
    END;
  END;

********** LEAF   237  NODE   664 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'5' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0052964767;
    END;
  END;

********** LEAF   238  NODE   665 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ) THEN DO;
     _BRANCH_ =    3; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.000135585;
    END;
  END;

********** LEAF   239  NODE   667 ***************;
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
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Amt_Chng_Q4_Q1  <     0.47841237282641 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Amt_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.050123636;
      END;
    END;
  END;

********** LEAF   240  NODE   668 ***************;
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
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.47841237282641 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.009631283;
      END;
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

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

