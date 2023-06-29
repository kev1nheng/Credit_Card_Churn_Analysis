data EMWS1.MdlComp5_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural" MODEL "AutoNeural" MODELDESCRIPTION "AutoNeural" TARGETLABEL "";
set EMWS1.AutoNeural_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural" MODEL "AutoNeural" MODELDESCRIPTION "AutoNeural" TARGETLABEL "";
set EMWS1.AutoNeural_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural" MODEL "AutoNeural" MODELDESCRIPTION "AutoNeural" TARGETLABEL "";
set WORK.AutoNeural_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural" MODEL "AutoNeural" MODELDESCRIPTION "AutoNeural" TARGETLABEL "";
set EMWS1.AutoNeural_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural" MODEL "AutoNeural" MODELDESCRIPTION "AutoNeural" TARGETLABEL "";
set EMWS1.AutoNeural_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural2" MODEL "AutoNeural2" MODELDESCRIPTION "AutoNeural 2" TARGETLABEL "";
set EMWS1.AutoNeural2_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMRANK;
set EMWS1.MdlComp5_EMRANK work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural2" MODEL "AutoNeural2" MODELDESCRIPTION "AutoNeural 2" TARGETLABEL "";
set EMWS1.AutoNeural2_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMSCOREDIST;
set EMWS1.MdlComp5_EMSCOREDIST work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural2" MODEL "AutoNeural2" MODELDESCRIPTION "AutoNeural 2" TARGETLABEL "";
set WORK.AutoNeural2_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMOUTFIT;
set EMWS1.MdlComp5_EMOUTFIT work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural2" MODEL "AutoNeural2" MODELDESCRIPTION "AutoNeural 2" TARGETLABEL "";
set EMWS1.AutoNeural2_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMCLASSIFICATION;
set EMWS1.MdlComp5_EMCLASSIFICATION work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural2" MODEL "AutoNeural2" MODELDESCRIPTION "AutoNeural 2" TARGETLABEL "";
set EMWS1.AutoNeural2_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMEVENTREPORT;
set EMWS1.MdlComp5_EMEVENTREPORT work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural4" MODEL "AutoNeural4" MODELDESCRIPTION "AutoNeural 3" TARGETLABEL "";
set EMWS1.AutoNeural4_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMRANK;
set EMWS1.MdlComp5_EMRANK work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural4" MODEL "AutoNeural4" MODELDESCRIPTION "AutoNeural 3" TARGETLABEL "";
set EMWS1.AutoNeural4_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMSCOREDIST;
set EMWS1.MdlComp5_EMSCOREDIST work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural4" MODEL "AutoNeural4" MODELDESCRIPTION "AutoNeural 3" TARGETLABEL "";
set WORK.AutoNeural4_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMOUTFIT;
set EMWS1.MdlComp5_EMOUTFIT work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural4" MODEL "AutoNeural4" MODELDESCRIPTION "AutoNeural 3" TARGETLABEL "";
set EMWS1.AutoNeural4_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMCLASSIFICATION;
set EMWS1.MdlComp5_EMCLASSIFICATION work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "AutoNeural4" MODEL "AutoNeural4" MODELDESCRIPTION "AutoNeural 3" TARGETLABEL "";
set EMWS1.AutoNeural4_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMEVENTREPORT;
set EMWS1.MdlComp5_EMEVENTREPORT work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPNNA" MODEL "HPNNA" MODELDESCRIPTION "HP Neural" TARGETLABEL "";
set EMWS1.HPNNA_EMRANK;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMRANK;
set EMWS1.MdlComp5_EMRANK work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPNNA" MODEL "HPNNA" MODELDESCRIPTION "HP Neural" TARGETLABEL "";
set EMWS1.HPNNA_EMSCOREDIST;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMSCOREDIST;
set EMWS1.MdlComp5_EMSCOREDIST work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPNNA" MODEL "HPNNA" MODELDESCRIPTION "HP Neural" TARGETLABEL "";
set WORK.HPNNA_OUTFIT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMOUTFIT;
set EMWS1.MdlComp5_EMOUTFIT work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPNNA" MODEL "HPNNA" MODELDESCRIPTION "HP Neural" TARGETLABEL "";
set EMWS1.HPNNA_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMCLASSIFICATION;
set EMWS1.MdlComp5_EMCLASSIFICATION work.MdlComp5_TEMP;
run;
data work.MdlComp5_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "HPNNA" MODEL "HPNNA" MODELDESCRIPTION "HP Neural" TARGETLABEL "";
set EMWS1.HPNNA_EMEVENTREPORT;
where upcase(TARGET) = upcase("Attrition_Flag");
run;
data EMWS1.MdlComp5_EMEVENTREPORT;
set EMWS1.MdlComp5_EMEVENTREPORT work.MdlComp5_TEMP;
run;
