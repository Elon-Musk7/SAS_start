libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

proc sort data=pg1.storm_detail out=storm_clean noduprecs dupout=storm_dups;
	by _All_;
run;

proc sort data=pg1.storm_detail out=min_pressure;
	where pressure is not missing and Name is not missing;
	by descending season basin name pressure;
run;

proc sort data=min_pressure nodupkey;
	by descending season basin name;
run;