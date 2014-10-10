/* ==================================================================== <HEADER>
Source      : wi_document.sql	
Description :
======================================================================== <NOTES>

==================================================================== <SOURCE> */

drop table #brief
select * into #brief
from (
select
  t00.patientnr,
  t00.aangemaakt,
  t40.plattetext
from WI_DOCUMENT t00
 left join WI_DOCCAT t10
  on t00.doctype = t10.id
 left join WI_SJABLOON t30
  on t00.sjab_id = t30.id
 left join WI_DOCASCII t40
  on t40.DOCid = t00.ID
where year(t00.aangemaakt) = '...'
 and t00.specialism = '...'
/*  and ( CAST(t40.plattetext as text)  like '%blabla%' */
) t1

select *
from #brief
order by aangemaakt