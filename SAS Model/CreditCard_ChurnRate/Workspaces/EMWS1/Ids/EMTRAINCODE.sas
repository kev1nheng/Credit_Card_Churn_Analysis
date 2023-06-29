*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS1 "D:\478\project\CreditCard_ChurnRate\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS1.Ids_DATA (label="")
;
set CHURN478.CREDITCARDCHURN;
drop CLIENTNUM;
run;
