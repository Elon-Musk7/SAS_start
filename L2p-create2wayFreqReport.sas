libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";
Title "Park Types by Region";
Title "Selected Park Types by Region";

ODS graphics on;

proc freq data=pg1.np_codelookup order=freq;
	*scale = grouppercent in the answer;
	Table Type*Region /nopercent crosslist plots=freqplot(groupby=row scale=percent orient=horizontal);
	where Type not like "%Other%";
	where also Type in ("National Monument" "National Park" "National Historic Site");
run;
title;