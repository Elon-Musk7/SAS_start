***********************************************************;
*  LESSON 3, PRACTICE 8                                   *;
*    a) Modify the PROC SORT step to read PG1.NP_SUMMARY  *;
*       and create a temporary sorted table named         *;
*       NP_SORT.                                          *;
*    b) Add a BY statement to order the data by Reg and   *;
*       descending DayVisits.                             *;
*    c) Add a WHERE statement to select Type equal to NP. *;
*       Submit the program.                               *;
***********************************************************;
libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";
proc sort data=pg1.np_summary out=NP_SORT;
BY reg descending DayVisits;
where Type = "NP"; 
run;

