libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

data parks monuments;
	set pg1.np_summary;
	length ParkType $ 10;

	if Type="NP" then
		do;
			ParkType="Park";
			Campers=sum(otherCamping, TentCampers, RVCampers, BackCountryCampers);
			format Campers comma10.;
			keep Reg ParkName DayVisits OtherLodging Campers ParkType;
			output parks;
		end;

	if Type="NM" then
		do;
			ParkType="Monument";
			Campers=sum(otherCamping, TentCampers, RVCampers, BackCountryCampers);
			format Campers comma10.;
			keep Reg ParkName DayVisits OtherLodging Campers ParkType;
			output monuments;
		end;
run;