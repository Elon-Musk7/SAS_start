

Proc import datafile="/folders/myfolders/pg194_ue/EPG194/data/np_traffic.csv"
	dbms=csv out=traffic replace;
	guessingrows=max;
run;

options validvarname=v7;
libname test xlsx "/folders/myfolders/pg194_ue/EPG194/data/eu_sport_trade.xlsx";
proc contents data=test.sheet1;
run;
libname test clear;

proc contents data=traffic;
run;
