
--TRUNCATE tbl_iadelistesi RESTART IDENTITY CASCADE

select id, coalesce(anamodel, '')||coalesce(parca_adi, '-')  as parca_adi from tu_urun where pasif=false  union select 0,'Seçiniz' order by id limit 100



select anamodel from tu_urun where pasif=false  GROUP BY anamodel order by anamodel

select id, coalesce(oemno, '')|| coalesce('-')||coalesce(parca_adi)  as parca_adi from tu_urun where pasif=false limit 100

select id,takip_no,servis_adi,gelen_firma,parca_adi,adet,aciklama,to_char(montaj_tarihi,'dd.mm.YYYY') as montaj_tarihi,
              to_char(ariza_tarihi,'dd.mm.YYYY') as ariza_tarihi,kbilgi(duzenleyen,duzenletarih) as duzenleyen   from tbl_iadelistesi order by  id desc