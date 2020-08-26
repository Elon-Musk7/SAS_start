libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";
%let ParkCode= ZION%;
%let SpeciesCat = Bird;

proc freq data=pg1.np_species;
	table Abundance conservation_status;
	where Species_ID like "&ParkCode" and category="&SpeciesCat";
run;

proc print data=pg1.np_species;
	var Species_ID Category Scientific_Name Common_Names;
	where Species_ID like "&ParkCode" and category="&SpeciesCat";
run;

libname pg1 clear;