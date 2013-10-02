/* ==================================================================== <HEADER>
Source      : bepaal_verzekeraar_tt.sql	
Description :
======================================================================== <NOTES>


==================================================================== <SOURCE> */

declare @verzekeraar varchar(10)

drop table #tmp
select * into #tmp
from (
select t10.patientnummer,
 ( select top 1 autoid 
   from PATIENT_PATHIST 
    where INGANGSDAT <= t10.verrichtingsdatum
    and PATIENTNR = t10.patientnummer
order by autoid desc
)         as autoid  
,         @verzekeraar as verzekeraar
from ver_uitgev_verrichtingen t10   
) t0

update    #tmp
set       verzekeraar = 
          (
          select PARTVERZ 
          from   PATIENT_PATHIST s1
          where  s1.AutoID = #tmp.autoid
          )
where     autoid is not null