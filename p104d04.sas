***********************************************************;
*  Using Date Functions                                   *;
***********************************************************;
*  Syntax                                                 *;
*                                                         *;
*  Date function examples:                                *;
*    YEAR (SAS-date)                                      *;
*    MONTH (SAS-date)                                     *;
*    DAY (SAS-date)                                       *;
*    WEEKDAY (SAS-date)                                   *;
*    TODAY ()                                             *;
*    MDY (month, day, year)                               *;
*    YRDIF (startdate, enddate, 'AGE')                    *;
***********************************************************;

***********************************************************;
*  Demo                                                   *;
*    1) Create the column YearsPassed and use the YRDIF   *;
*       function. The difference in years should be based *;
*       on each Date value and today's date.              *;
*    2) Create Anniversary as the day and month of each   *;
*       storm in the current year.                        *;
*    3) Format YearsPassed to round the value to one      *;
*       decimal place, and Date and Anniversary as        *;
*       MM/DD/YYYY. Highlight the DATA step and run the   *;
*       selected code.                                    *;
***********************************************************;
libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

data storm_new;
	set pg1.storm_damage;
	drop Summary;
	*Add assignment and FORMAT statements;
	YearPassed=yrdif(Date, today(), "age");
	Anniversary = MDY(month(Date),day(Date), year(today()));
	*test input of yrdif  --- both works;
	test = yrdif("10Jan2010"d, today(),"age" );
	format YearPassed 4.1 date Anniversary test mmddyy10.;
run;

