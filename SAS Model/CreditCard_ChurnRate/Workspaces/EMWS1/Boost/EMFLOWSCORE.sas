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

********** LEAF     1  NODE   280 ***************;
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

********** LEAF     2  NODE   282 ***************;
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

********** LEAF     3  NODE   283 ***************;
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
       _ARB_F_ + -0.045002475;
      END;
    END;
  END;

********** LEAF     4  NODE   285 ***************;
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

********** LEAF     5  NODE   287 ***************;
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
       _ARB_F_ + 0.0073634437;
      END;
    END;
  END;

********** LEAF     6  NODE   288 ***************;
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
       _ARB_F_ + -0.044957793;
      END;
    END;
  END;

********** LEAF     7  NODE   292 ***************;
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
      RANGE_Total_Revolving_Bal  <     0.40246324990067 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.1292863098;
      END;
    END;
  END;

********** LEAF     8  NODE   293 ***************;
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
          0.40246324990067 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.00882019;
      END;
    END;
  END;

********** LEAF     9  NODE   294 ***************;
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
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.28449225290293 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.055964725;
      END;
    END;
  END;

********** LEAF    10  NODE   295 ***************;
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
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.28449225290293 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033424841;
      END;
    END;
  END;

********** LEAF    11  NODE   297 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0587328237;
    END;
  END;

********** LEAF    12  NODE   299 ***************;
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
      RANGE_Total_Revolving_Bal  <     0.23639253079062 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.004494823;
      END;
    END;
  END;

********** LEAF    13  NODE   300 ***************;
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
          0.23639253079062 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.041563891;
      END;
    END;
  END;

********** LEAF    14  NODE   302 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0591616108;
    END;
  END;

********** LEAF    15  NODE   304 ***************;
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
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.39738641754008 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0066036617;
      END;
    END;
  END;

********** LEAF    16  NODE   305 ***************;
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
      IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
          0.39738641754008 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.040893641;
      END;
    END;
  END;

********** LEAF    17  NODE   307 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0607016372;
    END;
  END;

********** LEAF    18  NODE   309 ***************;
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
       _ARB_F_ + 0.0096515828;
      END;
    END;
  END;

********** LEAF    19  NODE   310 ***************;
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
       _ARB_F_ + -0.03957683;
      END;
    END;
  END;

********** LEAF    20  NODE   312 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.22328168454509 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.051621118;
    END;
  END;

********** LEAF    21  NODE   314 ***************;
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
       _ARB_F_ + -0.001832495;
      END;
    END;
  END;

********** LEAF    22  NODE   315 ***************;
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
       _ARB_F_ + -0.040870746;
      END;
    END;
  END;

********** LEAF    23  NODE   317 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37651145098461 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0624901545;
    END;
  END;

********** LEAF    24  NODE   319 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37651145098461 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
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
       _ARB_F_ + 0.0113808909;
      END;
    END;
  END;

********** LEAF    25  NODE   320 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.37651145098461 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
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
       _ARB_F_ + -0.035900741;
      END;
    END;
  END;

********** LEAF    26  NODE   322 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0486316759;
    END;
  END;

********** LEAF    27  NODE   324 ***************;
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
       _ARB_F_ + 0.0068153143;
      END;
    END;
  END;

********** LEAF    28  NODE   325 ***************;
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
       _ARB_F_ + -0.037005899;
      END;
    END;
  END;

********** LEAF    29  NODE   327 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37579564877589 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0491242624;
    END;
  END;

********** LEAF    30  NODE   329 ***************;
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
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <      0.2290425109257 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0124653528;
      END;
    END;
  END;

********** LEAF    31  NODE   330 ***************;
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
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
           0.2290425109257 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033897828;
      END;
    END;
  END;

********** LEAF    32  NODE   332 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0411382395;
    END;
  END;

********** LEAF    33  NODE   334 ***************;
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
       _ARB_F_ + 0.0108038695;
      END;
    END;
  END;

********** LEAF    34  NODE   335 ***************;
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
       _ARB_F_ + -0.035042206;
      END;
    END;
  END;

********** LEAF    35  NODE   337 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37400014963323 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0420748614;
    END;
  END;

********** LEAF    36  NODE   339 ***************;
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
      RANGE_Total_Revolving_Bal  <     0.22745331744139 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0108765432;
      END;
    END;
  END;

********** LEAF    37  NODE   340 ***************;
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
          0.22745331744139 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.03079688;
      END;
    END;
  END;

********** LEAF    38  NODE   342 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37829503093173 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.039860338;
    END;
  END;

********** LEAF    39  NODE   344 ***************;
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
       _ARB_F_ + -0.025865155;
      END;
    END;
  END;

********** LEAF    40  NODE   345 ***************;
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
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0179631831;
      END;
    END;
  END;

********** LEAF    41  NODE   347 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <      0.2367898291617 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0327195927;
    END;
  END;

********** LEAF    42  NODE   349 ***************;
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
       _ARB_F_ + -0.035735459;
      END;
    END;
  END;

********** LEAF    43  NODE   350 ***************;
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
       _ARB_F_ + 0.0090009064;
      END;
    END;
  END;

********** LEAF    44  NODE   352 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23083035359555 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.031288934;
    END;
  END;

********** LEAF    45  NODE   354 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.11704463133173 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.035344628;
      END;
    END;
  END;

********** LEAF    46  NODE   355 ***************;
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
          0.11704463133173 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.015694819;
      END;
    END;
  END;

********** LEAF    47  NODE   357 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0302780594;
    END;
  END;

********** LEAF    48  NODE   359 ***************;
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
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.33251631758181 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.0275258;
      END;
    END;
  END;

********** LEAF    49  NODE   360 ***************;
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
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.33251631758181 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0315373145;
      END;
    END;
  END;

********** LEAF    50  NODE   364 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.11704463133173 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.007081465;
      END;
    END;
  END;

********** LEAF    51  NODE   365 ***************;
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
          0.11704463133173 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0572020613;
      END;
    END;
  END;

********** LEAF    52  NODE   366 ***************;
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
       _ARB_F_ + -0.046440887;
      END;
    END;
  END;

********** LEAF    53  NODE   367 ***************;
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
       _ARB_F_ + 0.0036232423;
      END;
    END;
  END;

********** LEAF    54  NODE   369 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23659117997616 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0247549162;
    END;
  END;

********** LEAF    55  NODE   371 ***************;
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
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( G_Total_Relationship_Count  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'0' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033968157;
      END;
    END;
  END;

********** LEAF    56  NODE   372 ***************;
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
    _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'0' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.000769967;
      END;
    END;
  END;

********** LEAF    57  NODE   374 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0246140389;
    END;
  END;

********** LEAF    58  NODE   376 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.28485466158475 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.036535165;
      END;
    END;
  END;

********** LEAF    59  NODE   377 ***************;
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
          0.28485466158475 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.01120403;
      END;
    END;
  END;

********** LEAF    60  NODE   379 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'2' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0269222273;
    END;
  END;

********** LEAF    61  NODE   381 ***************;
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
       _ARB_F_ + 0.0056048083;
      END;
    END;
  END;

********** LEAF    62  NODE   382 ***************;
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
       _ARB_F_ + -0.034211758;
      END;
    END;
  END;

********** LEAF    63  NODE   386 ***************;
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
       _ARB_F_ + -0.029783827;
      END;
    END;
  END;

********** LEAF    64  NODE   387 ***************;
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
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'0' ,'1' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0073585321;
      END;
    END;
  END;

********** LEAF    65  NODE   385 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0460783089;
    END;
  END;

********** LEAF    66  NODE   391 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.10586276227051 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.0066263;
      END;
    END;
  END;

********** LEAF    67  NODE   392 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'4' ,'2' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.10586276227051 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0441400599;
      END;
    END;
  END;

********** LEAF    68  NODE   393 ***************;
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
       _ARB_F_ + -0.039865752;
      END;
    END;
  END;

********** LEAF    69  NODE   394 ***************;
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
       _ARB_F_ + 0.0213535008;
      END;
    END;
  END;

********** LEAF    70  NODE   398 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.18297579900032 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <      0.4487485101311 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0438887173;
      END;
    END;
  END;

********** LEAF    71  NODE   399 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.18297579900032 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
           0.4487485101311 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010805559;
      END;
    END;
  END;

********** LEAF    72  NODE   400 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18297579900032 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
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
       _ARB_F_ + -0.044981897;
      END;
    END;
  END;

********** LEAF    73  NODE   401 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18297579900032 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_SQRT_Total_Amt_Chng_Q4_Q1 ) AND 
          0.49474718712517 <= RANGE_SQRT_Total_Amt_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0100241023;
      END;
    END;
  END;

********** LEAF    74  NODE   403 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.21275327771156 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0209802114;
    END;
  END;

********** LEAF    75  NODE   405 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.21275327771156 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
      RANGE_Total_Revolving_Bal  <     0.79936432260627 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028257977;
      END;
    END;
  END;

********** LEAF    76  NODE   406 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.21275327771156 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
          0.79936432260627 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.015944816;
      END;
    END;
  END;

********** LEAF    77  NODE   408 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.37579564877589 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0309798648;
    END;
  END;

********** LEAF    78  NODE   410 ***************;
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
       _ARB_F_ + -0.028750146;
      END;
    END;
  END;

********** LEAF    79  NODE   411 ***************;
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
       _ARB_F_ + 0.0073919993;
      END;
    END;
  END;

********** LEAF    80  NODE   415 ***************;
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
       _ARB_F_ + -0.033209254;
      END;
    END;
  END;

********** LEAF    81  NODE   416 ***************;
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
       _ARB_F_ + -0.001995908;
      END;
    END;
  END;

********** LEAF    82  NODE   414 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0388110883;
    END;
  END;

********** LEAF    83  NODE   420 ***************;
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
        '2' ,'1' ,'0' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.008486992;
      END;
    END;
  END;

********** LEAF    84  NODE   421 ***************;
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
      IF _ARBFMT_12 IN ('1' ,'0' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0445987481;
      END;
    END;
  END;

********** LEAF    85  NODE   422 ***************;
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
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.45369894767687 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.050176734;
      END;
    END;
  END;

********** LEAF    86  NODE   423 ***************;
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
          0.45369894767687 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.02271185;
      END;
    END;
  END;

********** LEAF    87  NODE   425 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.0454277;
    END;
  END;

********** LEAF    88  NODE   427 ***************;
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
       _ARB_F_ + 0.0257556757;
      END;
    END;
  END;

********** LEAF    89  NODE   428 ***************;
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
       _ARB_F_ + -0.018612523;
      END;
    END;
  END;

********** LEAF    90  NODE   430 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38847834561454 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0234670604;
    END;
  END;

********** LEAF    91  NODE   432 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.38847834561454 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
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
       _ARB_F_ + -0.025074996;
      END;
    END;
  END;

********** LEAF    92  NODE   433 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
        0.38847834561454 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
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
       _ARB_F_ + 0.01656149;
      END;
    END;
  END;

********** LEAF    93  NODE   435 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.23023440603893 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0187978906;
    END;
  END;

********** LEAF    94  NODE   437 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23023440603893 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <      0.1163043264331 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028374479;
      END;
    END;
  END;

********** LEAF    95  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.23023440603893 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
           0.1163043264331 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.009229753;
      END;
    END;
  END;

********** LEAF    96  NODE   442 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.10548978395242 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.031190281;
      END;
    END;
  END;

********** LEAF    97  NODE   443 ***************;
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
          0.10548978395242 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001003616;
      END;
    END;
  END;

********** LEAF    98  NODE   441 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0371790199;
    END;
  END;

********** LEAF    99  NODE   447 ***************;
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
       _ARB_F_ + -0.008098732;
      END;
    END;
  END;

********** LEAF   100  NODE   448 ***************;
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
       _ARB_F_ + 0.0385523956;
      END;
    END;
  END;

********** LEAF   101  NODE   449 ***************;
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
       _ARB_F_ + -0.040883962;
      END;
    END;
  END;

********** LEAF   102  NODE   450 ***************;
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
       _ARB_F_ + 0.0037308687;
      END;
    END;
  END;

********** LEAF   103  NODE   452 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.0401897;
    END;
  END;

********** LEAF   104  NODE   454 ***************;
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
      RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.41218633863909 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0278908718;
      END;
    END;
  END;

********** LEAF   105  NODE   455 ***************;
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
          0.41218633863909 <= RANGE_SQRT_Total_Ct_Chng_Q4_Q1  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_SQRT_Total_Ct_Chng_Q4_Q1  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010063978;
      END;
    END;
  END;

********** LEAF   106  NODE   459 ***************;
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
       _ARB_F_ + -0.024569036;
      END;
    END;
  END;

********** LEAF   107  NODE   460 ***************;
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
       _ARB_F_ + -0.003384248;
      END;
    END;
  END;

********** LEAF   108  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0319213024;
    END;
  END;

********** LEAF   109  NODE   464 ***************;
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
      RANGE_Total_Revolving_Bal  <     0.31446166070719 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0328391434;
      END;
    END;
  END;

********** LEAF   110  NODE   465 ***************;
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
          0.31446166070719 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.00116925;
      END;
    END;
  END;

********** LEAF   111  NODE   466 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'3' ,'0' ,'5' ,'6' ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.009953501;
      END;
    END;
  END;

********** LEAF   112  NODE   467 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Contacts_Count_12_mon , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'2' ,'7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'3' ,'0' ,'5' ,'6' ,'4' ,'2' ,'7' 
         ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033866825;
      END;
    END;
  END;

********** LEAF   113  NODE   471 ***************;
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
        '2' ,'1' ,'0' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.006394996;
      END;
    END;
  END;

********** LEAF   114  NODE   472 ***************;
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
      IF _ARBFMT_12 IN ('1' ,'0' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0390752918;
      END;
    END;
  END;

********** LEAF   115  NODE   473 ***************;
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
       _ARB_F_ + -0.017267237;
      END;
    END;
  END;

********** LEAF   116  NODE   474 ***************;
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
       _ARB_F_ + -0.039240978;
      END;
    END;
  END;

********** LEAF   117  NODE   478 ***************;
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
        '2' ,'1' ,'0' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.007252061;
      END;
    END;
  END;

********** LEAF   118  NODE   479 ***************;
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
      IF _ARBFMT_12 IN ('1' ,'0' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0373471858;
      END;
    END;
  END;

********** LEAF   119  NODE   480 ***************;
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
       _ARB_F_ + -0.049928596;
      END;
    END;
  END;

********** LEAF   120  NODE   481 ***************;
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
       _ARB_F_ + -0.01936826;
      END;
    END;
  END;

********** LEAF   121  NODE   485 ***************;
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
      RANGE_LOG_Total_Trans_Amt  <     0.11341353009106 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.025867448;
      END;
    END;
  END;

********** LEAF   122  NODE   486 ***************;
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
          0.11341353009106 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.000948687;
      END;
    END;
  END;

********** LEAF   123  NODE   484 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Relationship_Count , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0273416342;
    END;
  END;

********** LEAF   124  NODE   490 ***************;
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
      RANGE_Total_Revolving_Bal  <     0.36412395709177 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0280807855;
      END;
    END;
  END;

********** LEAF   125  NODE   491 ***************;
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
          0.36412395709177 <= RANGE_Total_Revolving_Bal  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.002000597;
      END;
    END;
  END;

********** LEAF   126  NODE   492 ***************;
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
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'3' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( G_Months_Inactive_12_mon  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '4' ,'3' ,'2' ,'1' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.031260136;
      END;
    END;
  END;

********** LEAF   127  NODE   493 ***************;
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
    _ARBFMT_12 = PUT( G_Months_Inactive_12_mon , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001983976;
      END;
    END;
  END;

********** LEAF   128  NODE   495 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
    RANGE_Total_Revolving_Bal  <     0.24056416368692 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0163717701;
    END;
  END;

********** LEAF   129  NODE   497 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.24056416368692 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <     0.12773649349368 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.027490929;
      END;
    END;
  END;

********** LEAF   130  NODE   498 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_Total_Revolving_Bal ) AND 
        0.24056416368692 <= RANGE_Total_Revolving_Bal  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_Total_Revolving_Bal  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.12773649349368 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.004029061;
      END;
    END;
  END;

********** LEAF   131  NODE   502 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.18180873549344 THEN DO;
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
       _ARB_F_ + -0.004016984;
      END;
    END;
  END;

********** LEAF   132  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
    RANGE_LOG_Total_Trans_Amt  <     0.18180873549344 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
          0.11322802217686 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0325324376;
      END;
    END;
  END;

********** LEAF   133  NODE   504 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18180873549344 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
      RANGE_LOG_Total_Trans_Amt  <      0.2851181735454 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.05347223;
      END;
    END;
  END;

********** LEAF   134  NODE   505 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
        0.18180873549344 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(RANGE_LOG_Total_Trans_Amt ) AND 
           0.2851181735454 <= RANGE_LOG_Total_Trans_Amt  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( RANGE_LOG_Total_Trans_Amt  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0045711695;
      END;
    END;
  END;

********** LEAF   135  NODE   507 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.40243572649187 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0184054635;
    END;
  END;

********** LEAF   136  NODE   509 ***************;
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
       _ARB_F_ + -0.02623961;
      END;
    END;
  END;

********** LEAF   137  NODE   510 ***************;
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
       _ARB_F_ + 0.0292252642;
      END;
    END;
  END;

********** LEAF   138  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(RANGE_SQRT_Total_Ct_Chng_Q4_Q1 ) AND 
    RANGE_SQRT_Total_Ct_Chng_Q4_Q1  <     0.38934363250998 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0177778907;
    END;
  END;

********** LEAF   139  NODE   514 ***************;
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
       _ARB_F_ + -0.023566668;
      END;
    END;
  END;

********** LEAF   140  NODE   515 ***************;
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
       _ARB_F_ + 0.0241175542;
      END;
    END;
  END;

********** LEAF   141  NODE   519 ***************;
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
       _ARB_F_ + -0.013975949;
      END;
    END;
  END;

********** LEAF   142  NODE   520 ***************;
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
       _ARB_F_ + 0.0289449032;
      END;
    END;
  END;

********** LEAF   143  NODE   521 ***************;
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
       _ARB_F_ + -0.037443891;
      END;
    END;
  END;

********** LEAF   144  NODE   522 ***************;
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
       _ARB_F_ + 0.0071786435;
      END;
    END;
  END;

********** LEAF   145  NODE   524 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'3' ,'4' ,'0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0167320648;
    END;
  END;

********** LEAF   146  NODE   526 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'0' ,'2' ,'5' ,'6' ,'7' 
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
       _ARB_F_ + -0.043260881;
      END;
    END;
  END;

********** LEAF   147  NODE   527 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'5' ,'6' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( G_Total_Trans_Ct  ) THEN _BRANCH_ = 2;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'3' ,'4' ,'0' ,'2' ,'5' ,'6' ,'7' 
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
       _ARB_F_ + -0.003617363;
      END;
    END;
  END;

********** LEAF   148  NODE   529 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( G_Total_Trans_Ct , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'5' ) THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0222236985;
    END;
  END;

********** LEAF   149  NODE   531 ***************;
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
       _ARB_F_ + -0.017909751;
      END;
    END;
  END;

********** LEAF   150  NODE   532 ***************;
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
       _ARB_F_ + 0.0210447909;
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

