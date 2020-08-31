libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

title1 "Weather Statistics by Year and Park";

proc means data=pg1.np_westweather mean min max maxdec=2;
	var Precip Snow TempMin TempMax;
	class Year Name;
run;
