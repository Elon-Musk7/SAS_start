libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";
libname output1 "/folders/myfolders/pg194_ue/EPG194/output";



Data output1.fox;
	set pg1.np_species;
	where Category="Mammal" and Common_names like "%Fox%" and Common_names not like "%Squirrel%";
	drop Category Record_status Occurrence Nativeness;
run;
proc sort data=output1.fox;
	by Common_names;
run;
	