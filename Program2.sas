/* Generated Code (IMPORT) */
/* Source File: ebola1.xlsx */
/* Source Path: /home/meeyoonchoo0/my_courses */
/* Code generated on: 1/13/19, 1:05 PM */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/home/meeyoonchoo0/my_courses/ebola2.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

/* PROC CONTENTS DATA=WORK.IMPORT; RUN; */


/*  %web_open_table(WORK.IMPORT); */

/* quit; */

/*PROC SQL;
	SELECT * FROM  WORK.IMPORT
	quit;*/

/* SQL Statement where Casedef="Confirmed" Aggregate by Country  */
/* PROC SQL;
	SELECT *
	FROM WORK.IMPORT WHERE Casedef="Confirmed"  GROUP BY Country;*/

/* SQL Statement SUM Aggregate Totalcases per Country */
/*
PROC SQL;
	SELECT *, SUM(Totalcases) AS Sum_Totalcases_Per_Country
	FROM WORK.IMPORT GROUP BY Country;
*/

/* SQL Statement SUM, AVG, STD of Totalcases for all countries
PROC SQL;
	SELECT *, SUM(Totalcases) AS Sum_Totalcases_All_Country, AVG(Totalcases) AS Avg_Totalcases_All_Country, STD(Totalcases) AS Std_Totalcases_All_Country
	FROM WORK.IMPORT;
*/

PROC SQL;
	SELECT *, SUM(Totalcases) AS Sum_Totalcases_Per_Country, AVG(Totalcases) AS Avg_Totalcases_Per_Country, STD(Totalcases) AS STD_Totalcases_All_Countries
	FROM WORK.IMPORT GROUP BY Country;
	
	
	
	
	