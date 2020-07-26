/* auditor.sas   
   This code will audit a SAS data set.      
   The measurements we will be taking are:     
       number of observations 
       number of variables 
       modification date        
   This code is example code and comes with no warranties :) */
%macro create_test_data;
 libname test "d:\auditor\test";
 data test.test_data;
    do i = 1 to 10;
	   output;
	end;
 run;
%mend;

%create_test_data;
