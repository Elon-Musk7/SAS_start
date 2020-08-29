***********************************************************;
*  Activity 4.05                                          *;
*    1) Open the PG1.STORM_RANGE table and examine the    *;
*       columns. Notice that each storm has four wind     *;
*       speed measurements.                               *;
*    2) Create a new column named WindAvg that is the     *;
*       mean of Wind1, Wind2, Wind3, and Wind4.           *;
*    3) Create a new column WindRange that is the range   *;
*       of Wind1, Wind2, Wind3, and Wind4.                *;
***********************************************************;


libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

data storm_wingavg;
	set pg1.storm_range;
	*Add assignment statements;
	WindAvg = mean(Wind1, Wind2, Wind3, Wind4);
	WindRange = max(Wind1, Wind2, Wind3, Wind4)-min(Wind1, Wind2, Wind3, Wind4);
	WindRange2=range(of wind1-wind4);
run;
