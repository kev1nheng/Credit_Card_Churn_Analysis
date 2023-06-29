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

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

