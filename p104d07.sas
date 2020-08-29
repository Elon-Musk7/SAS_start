***********************************************************;
*  Processing Multiple Statements with IF-THEN/DO         *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    IF expression THEN DO;
*;
*        <executable statements>                          *;
*    END;
*;
*    ELSE IF expression THEN DO;
*;
*        <executable statements>                          *;
*    END;
*;
*    ELSE DO;
*;
*        <executable statements>                          *;
*    END;
*;
***********************************************************;

data under40 over40;
	set sashelp.cars;
	keep Make Model MSRP Cost_Group;

	if MSRP<20000 then
		do;
			Cost_Group=1;
			output under40;
		end;
	else if MSRP<40000 then
		do;
			Cost_Group=2;
			output under40;
		end;
	else
		do;
			Cost_Group=3;
			output over40;
		end;
run;

***********************************************************;
*  Demo                                                   *;
*       Modify the IF-THEN statements to use IF-THEN/DO   *;
*       syntax to write rows to either the indian,        *;
*       atlantic, or pacific table based on the value of  *;
*       Ocean. Highlight the DATA step and run the        *;
*       selected code.                                    *;
***********************************************************;

data indian atlantic pacific;
	set pg1.storm_summary;
	length Ocean $ 8;
	keep Basin Season Name MaxWindMPH Ocean;
	Basin=upcase(Basin);
	OceanCode=substr(Basin, 2, 1);
	*Modify the program to use IF-THEN-DO syntax;

	if OceanCode="I" then
		do;
			Ocean="Indian";
			output indian;
		end;
	else if OceanCode="A" then
		do;
			Ocean="Atlantic";
			output atlantic;
		end;
	else
		do;
			Ocean="Pacific";
			output pacific;
		end;
run;