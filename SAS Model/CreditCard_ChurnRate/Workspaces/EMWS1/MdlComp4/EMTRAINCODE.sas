data EMWS1.MdlComp4_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost" MODEL "Boost" MODELDESCRIPTION "Standard Gradient Boost" TARGETLABEL "";
set EMWS1.Boost_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost" MODEL "Boost" MODELDESCRIPTION "Standard Gradient Boost" TARGETLABEL "";
set EMWS1.Boost_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost" MODEL "Boost" MODELDESCRIPTION "Standard Gradient Boost" TARGETLABEL "";
set WORK.Boost_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost" MODEL "Boost" MODELDESCRIPTION "Standard Gradient Boost" TARGETLABEL "";
set EMWS1.Boost_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost" MODEL "Boost" MODELDESCRIPTION "Standard Gradient Boost" TARGETLABEL "";
set EMWS1.Boost_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost2" MODEL "Boost2" MODELDESCRIPTION "Modifed 1 Boost" TARGETLABEL "";
set EMWS1.Boost2_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMRANK;
set EMWS1.MdlComp4_EMRANK work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost2" MODEL "Boost2" MODELDESCRIPTION "Modifed 1 Boost" TARGETLABEL "";
set EMWS1.Boost2_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
set EMWS1.MdlComp4_EMSCOREDIST work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost2" MODEL "Boost2" MODELDESCRIPTION "Modifed 1 Boost" TARGETLABEL "";
set WORK.Boost2_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMOUTFIT;
set EMWS1.MdlComp4_EMOUTFIT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost2" MODEL "Boost2" MODELDESCRIPTION "Modifed 1 Boost" TARGETLABEL "";
set EMWS1.Boost2_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
set EMWS1.MdlComp4_EMCLASSIFICATION work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost2" MODEL "Boost2" MODELDESCRIPTION "Modifed 1 Boost" TARGETLABEL "";
set EMWS1.Boost2_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
set EMWS1.MdlComp4_EMEVENTREPORT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost3" MODEL "Boost3" MODELDESCRIPTION "Modifed 2 Boost" TARGETLABEL "";
set EMWS1.Boost3_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMRANK;
set EMWS1.MdlComp4_EMRANK work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost3" MODEL "Boost3" MODELDESCRIPTION "Modifed 2 Boost" TARGETLABEL "";
set EMWS1.Boost3_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
set EMWS1.MdlComp4_EMSCOREDIST work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost3" MODEL "Boost3" MODELDESCRIPTION "Modifed 2 Boost" TARGETLABEL "";
set WORK.Boost3_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMOUTFIT;
set EMWS1.MdlComp4_EMOUTFIT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost3" MODEL "Boost3" MODELDESCRIPTION "Modifed 2 Boost" TARGETLABEL "";
set EMWS1.Boost3_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
set EMWS1.MdlComp4_EMCLASSIFICATION work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost3" MODEL "Boost3" MODELDESCRIPTION "Modifed 2 Boost" TARGETLABEL "";
set EMWS1.Boost3_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
set EMWS1.MdlComp4_EMEVENTREPORT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost4" MODEL "Boost4" MODELDESCRIPTION "Modifed 3 Boost" TARGETLABEL "";
set EMWS1.Boost4_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMRANK;
set EMWS1.MdlComp4_EMRANK work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost4" MODEL "Boost4" MODELDESCRIPTION "Modifed 3 Boost" TARGETLABEL "";
set EMWS1.Boost4_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
set EMWS1.MdlComp4_EMSCOREDIST work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost4" MODEL "Boost4" MODELDESCRIPTION "Modifed 3 Boost" TARGETLABEL "";
set WORK.Boost4_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMOUTFIT;
set EMWS1.MdlComp4_EMOUTFIT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost4" MODEL "Boost4" MODELDESCRIPTION "Modifed 3 Boost" TARGETLABEL "";
set EMWS1.Boost4_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
set EMWS1.MdlComp4_EMCLASSIFICATION work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Boost4" MODEL "Boost4" MODELDESCRIPTION "Modifed 3 Boost" TARGETLABEL "";
set EMWS1.Boost4_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
set EMWS1.MdlComp4_EMEVENTREPORT work.MdlComp4_TEMP;
run;
