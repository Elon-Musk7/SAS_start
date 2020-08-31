libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

proc means data=pg1.np_westweather;
	var precip;
	where precip ~=0;
	class Name Year;
	output out=rainstats n=RainDays sum=TotalRain;
	ways 2;
run;

title1 "Rain Statistics by Year and Park";

proc print data=rainstats noobs label;
	var Name Year RainDays TotalRain;
	label Name="Park Name" RainDays="Number of Days Raining" 
		TotalRain="Total Rain Amount (inches)";
run;

title;