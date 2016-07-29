/* ==================================================================== <HEADER>
Source      : lijst_van_vragen.sql
Description :
======================================================================== <NOTES>

Werkt niet altijd, alleen met lijsten zonder subvragen? Uitzoeken.

==================================================================== <SOURCE> */

SELECT 
  lijstid, 
  categorie, 
  lijstnaam, 
  STARTBAAR, 
  vervallen
FROM VRLIJST_LIJSTDEF
WHERE LIJSTNAAM LIKE '%%'