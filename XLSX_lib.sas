option validvarname = v7;

LIBNAME NP XLSX "/folders/myfolders/pg194_ue/EPG194/data/np_info.xlsx";

proc contents data=NP.Parks;
run;