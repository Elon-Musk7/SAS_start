libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

proc print data=pg1.storm_damage;
	format Date mmddyy10. Cost dollar16.;
run;