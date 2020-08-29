***********************************************************;
* Using Character Functions                               *; 
***********************************************************;
*   Syntax and Example                                    *;
*     DATA output-table;                                  *;
*         SET input-table;                                *;
*         new-column=function(arguments);                 *;
*     RUN;                                                *;
*                                                         *;
*  Numeric Functions:                                     *;
*    SUM(num1, num2, ...)                                 *;
*    MEAN(num1, num2, ...)                                *;
*    MEDIAN(num1, num2, ...)                              *;
*    RANGE(num1, num2, ...)                               *;
*                                                         *;
*  Character Functions:                                   *;
*    UPCASE(char)                                         *;
*    PROPCASE(char, <delimiters>)                         *;
*    CATS(char1, char2, ...)                              *;
*    SUBSTR(char, position, <length>)                     *;
***********************************************************;

data cars_new; 
	set sashelp.cars;
	MPG_Mean=mean(MPG_City, MPG_Highway);
	Type=upcase(Type);
	format MPG_Mean 4.1;
	keep Make Model MSRP Invoice MPG_Mean Type;
run;

***********************************************************;
*  Demo                                                   *;
*    1) Add an assignment statement to convert Basin to   *;
*       all uppercase letters using the UPCASE function.  *;
*    2) Add an assignment statement to convert Name to    *;
*       proper case using the PROPCASE function.          *;
*    3) Add an assignment statement to create Hemisphere, *;
*       which concatenates Hem_NS and Hem_EW using the    *;
*       CATS function.                                    *;
*    4) Add an assignment statement to create Ocean,      *;
*       which extracts the second letter of Basin using   *;
*       the SUBSTR function. Highlight the DATA step and  *;
*       run the selected code.                            *;
***********************************************************;

data storm_new;
	set pg1.storm_summary;
	drop Type Hem_EW Hem_NS MinPressure Lat Lon;
	*Add assignment statements;
	Basin=upcase(basin);
	Name=propcase(Name);
	Hemisphere=cats(Hem_NS,Hem_EW);
	Ocean=substr(Basin,2,1);
run;
