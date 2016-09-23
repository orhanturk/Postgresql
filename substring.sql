select * from isuzu1 where parcano like ( '%8942233660%')



select SUBSTR(cast (oemno as text), 1,8) as suboemno,oemno from tu_urun where oemno like ( '%89422336%')

select * from tu_urun where oemno in 
(
  (select SUBSTR(cast (oemno as text), 1,8) from isuzu1)
) and pasif=false


--8971714391CC
--89717143

select SUBSTR(cast (oemno as text), 1,8) from isuzu1

