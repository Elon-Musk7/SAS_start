libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";
libname output1 "/folders/myfolders/pg194_ue/EPG194/output";

data output1.Storm_cat5;
set pg1.storm_summary;
where MaxWindMPH >= 156 and StartDate >= "01JAN2000"d;
KEEP season Basin Name Type MaxWindMPH;
run;
