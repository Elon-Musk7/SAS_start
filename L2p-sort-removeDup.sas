libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

proc sort data=pg1.np_largeparks out=park_clean noduprecs dupout=park_dups;
	by _all_;
run;