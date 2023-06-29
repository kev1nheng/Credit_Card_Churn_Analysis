%macro main;

   %if %upcase(&EM_ACTION) = CREATE %then %do;
       filename temp catalog 'sashelp.hpdm.hpdmneural_create.source';
       %include temp;
       filename temp;
       %hpdm_Neural_create;
   %end;
   %else
   %if %upcase(&EM_ACTION) = TRAIN %then %do;
       filename temp catalog 'sashelp.hpdm.hpdmneural_train.source';
       %include temp;
       filename temp;
       %hpdm_Neural_train;
   %end;
   %else
   %if %upcase(&EM_ACTION) = REPORT %then %do;
       filename temp catalog 'sashelp.hpdm.hpdmneural_report.source';
       %include temp;
       filename temp;
       %hpdm_Neural_report;
   %end;
   %else
      %if %upcase(&EM_ACTION) = OPENTABLE  %then %do;
           filename temp catalog 'sashelp.hpdm.hpdmneural_actions.source';
           %include temp;
           filename temp;
           %hpdm_Neural_OpenTable;
   %end;
   %else
   %if %upcase(&EM_ACTION) = CLOSETABLE  %then %do;
          filename temp catalog 'sashelp.hpdm.hpdmneural_actions.source';
           %include temp;
           filename temp;
           %hpdm_Neural_CloseTable ;
   %end;

%mend main;

%main;

