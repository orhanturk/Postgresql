select id,miktar,fiyat,urunkod,(miktar*fiyat) as tutar,eski_sipid,
(select anamodel from tu_urun where urunkod=tss.urunkod ) as anamodel,
(select parca_adi from tu_urun where urunkod=tss.urunkod ) as parca_adi,
(select oemno from tu_urun where urunkod=tss.urunkod ) as oemno,
(select oemno from tu_urun where urunkod=tss.urunkod ) as mensei,
(select fiyat from tu_urun where urunkod=tss.urunkod ) as listefiyat,
(select kritik_stok from tu_urun where urunkod=tss.urunkod  ) as kritik_stok,
(select sip_miktari from tu_urun where urunkod=tss.urunkod ) as sip_miktari,
(select stok from tu_urun where urunkod=tss.urunkod limit 1) as stok,
(select uretici_no from tu_ureticinolar where urunkod=tss.urunkod and carkod='TC00175' limit 1 ) as uretici_no,
kbilgi(kaydeden,kayittarih) as kaydeden,kbilgi(duzenleyen,duzenletarih) from tsa_satinalmasiparisisub tss where sip_id=18291 order by anamodel,parca_adi



select uretici_no from tu_ureticinolar where carkod='TC00175'


SELECT uretici_no,
COUNT(uretici_no) AS toplam  
FROM tu_ureticinolar where carkod='TC00175'
GROUP BY uretici_no
HAVING ( COUNT(uretici_no) > 1 )