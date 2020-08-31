libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";
title1 "Categories of Reported Species";
title2 "in the Everglades";

ODS graphics on;
ODS noproctitle;
proc freq data=pg1.np_species order=freq;
	Table Category / nocum plots=freqplot;
	where Species_ID like "EVER%" and Category ~= "Vascular Plant";
run;
title;
