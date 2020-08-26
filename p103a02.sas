***********************************************************;
*  Activity 3.02                                          *;
*    1) Run the program. Examine the results and the log. *;
*       Are the two WHERE statements applied?             *;
*    2) Change the second WHERE statement to WHERE ALSO   *;
*       and rerun the code. Examine the results and the   *;
*       log. Are the two WHERE statements applied?        *;
***********************************************************;

libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

proc print data=pg1.storm_summary;
	where MaxWindMPH>156;
	where also MinPressure>800 and MinPressure<920;
run;
