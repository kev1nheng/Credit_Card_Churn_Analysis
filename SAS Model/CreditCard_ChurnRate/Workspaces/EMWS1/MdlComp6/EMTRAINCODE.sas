data EMWS1.MdlComp6_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest" MODEL "HPDMForest" MODELDESCRIPTION "Standard Forest" TARGETLABEL "";
set EMWS1.HPDMForest_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest" MODEL "HPDMForest" MODELDESCRIPTION "Standard Forest" TARGETLABEL "";
set EMWS1.HPDMForest_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest" MODEL "HPDMForest" MODELDESCRIPTION "Standard Forest" TARGETLABEL "";
set WORK.HPDMForest_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest" MODEL "HPDMForest" MODELDESCRIPTION "Standard Forest" TARGETLABEL "";
set EMWS1.HPDMForest_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest" MODEL "HPDMForest" MODELDESCRIPTION "Standard Forest" TARGETLABEL "";
set EMWS1.HPDMForest_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest3" MODEL "HPDMForest3" MODELDESCRIPTION "Modified Forest 1" TARGETLABEL "";
set EMWS1.HPDMForest3_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMRANK;
set EMWS1.MdlComp6_EMRANK work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest3" MODEL "HPDMForest3" MODELDESCRIPTION "Modified Forest 1" TARGETLABEL "";
set EMWS1.HPDMForest3_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMSCOREDIST;
set EMWS1.MdlComp6_EMSCOREDIST work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest3" MODEL "HPDMForest3" MODELDESCRIPTION "Modified Forest 1" TARGETLABEL "";
set WORK.HPDMForest3_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMOUTFIT;
set EMWS1.MdlComp6_EMOUTFIT work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest3" MODEL "HPDMForest3" MODELDESCRIPTION "Modified Forest 1" TARGETLABEL "";
set EMWS1.HPDMForest3_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMCLASSIFICATION;
set EMWS1.MdlComp6_EMCLASSIFICATION work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest3" MODEL "HPDMForest3" MODELDESCRIPTION "Modified Forest 1" TARGETLABEL "";
set EMWS1.HPDMForest3_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMEVENTREPORT;
set EMWS1.MdlComp6_EMEVENTREPORT work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest4" MODEL "HPDMForest4" MODELDESCRIPTION "Modified Forest 2" TARGETLABEL "";
set EMWS1.HPDMForest4_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMRANK;
set EMWS1.MdlComp6_EMRANK work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest4" MODEL "HPDMForest4" MODELDESCRIPTION "Modified Forest 2" TARGETLABEL "";
set EMWS1.HPDMForest4_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMSCOREDIST;
set EMWS1.MdlComp6_EMSCOREDIST work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest4" MODEL "HPDMForest4" MODELDESCRIPTION "Modified Forest 2" TARGETLABEL "";
set WORK.HPDMForest4_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMOUTFIT;
set EMWS1.MdlComp6_EMOUTFIT work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest4" MODEL "HPDMForest4" MODELDESCRIPTION "Modified Forest 2" TARGETLABEL "";
set EMWS1.HPDMForest4_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMCLASSIFICATION;
set EMWS1.MdlComp6_EMCLASSIFICATION work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest4" MODEL "HPDMForest4" MODELDESCRIPTION "Modified Forest 2" TARGETLABEL "";
set EMWS1.HPDMForest4_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMEVENTREPORT;
set EMWS1.MdlComp6_EMEVENTREPORT work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest2" MODEL "HPDMForest2" MODELDESCRIPTION "Modified Forest 3" TARGETLABEL "";
set EMWS1.HPDMForest2_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMRANK;
set EMWS1.MdlComp6_EMRANK work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest2" MODEL "HPDMForest2" MODELDESCRIPTION "Modified Forest 3" TARGETLABEL "";
set EMWS1.HPDMForest2_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMSCOREDIST;
set EMWS1.MdlComp6_EMSCOREDIST work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest2" MODEL "HPDMForest2" MODELDESCRIPTION "Modified Forest 3" TARGETLABEL "";
set WORK.HPDMForest2_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMOUTFIT;
set EMWS1.MdlComp6_EMOUTFIT work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest2" MODEL "HPDMForest2" MODELDESCRIPTION "Modified Forest 3" TARGETLABEL "";
set EMWS1.HPDMForest2_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMCLASSIFICATION;
set EMWS1.MdlComp6_EMCLASSIFICATION work.MdlComp6_TEMP;
run;
data work.MdlComp6_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPDMForest2" MODEL "HPDMForest2" MODELDESCRIPTION "Modified Forest 3" TARGETLABEL "";
set EMWS1.HPDMForest2_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp6_EMEVENTREPORT;
set EMWS1.MdlComp6_EMEVENTREPORT work.MdlComp6_TEMP;
run;
