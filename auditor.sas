%macro create_measurements;

* Gather the measurement for our data set;
libname target "d:\auditor\test";

%let exist = %sysfunc(exist(target.test_data));
%if not &exist %then %put the data set does not exist;
%else %do;
data measurements;
  dsid = open('target.test_data');
  nobs = attrn(dsid, 'nobs');
  nvars = attrn(dsid, 'nvars');
  modte = datepart(attrn(dsid, 'modte'));
  rc = close(dsid);
  audit_date = today();
  drop rc dsid;
run;
%end;
%mend;

%create_measurements;
