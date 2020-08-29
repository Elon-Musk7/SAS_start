libname pg1 "/folders/myfolders/pg194_ue/EPG194/data";

data eu_occ_total;
	set pg1.eu_occ;
	Year=substr(YearMon, 1, 4);
	Month=substr(YearMon, 6, 2);
	*ReportDate=MDY(Month, day(0), Year);
	ReportDate=MDY(Month, 1, Year);
	Total=sum(Hotel, ShortStay, Camp);
	format Hotel ShortStay Camp Total comma12. ReportDate MONYY7.;
	*format Hotel ShortStay Camp Total comma12. ReportDate MMDDYY10.;
	Keep Country Hotel ShortStay Camp ReportDate Total;
run;