select * from tu_urun where urunkod='U21713'

select * from t_irsaliye where tarih>=now()


SELECT urunkod,
COUNT(urunkod) AS toplam  
FROM tsa_satinalmasiparisisub where sip_id=20492
GROUP BY urunkod
HAVING ( COUNT(urunkod) > 1 )

select * from tsa_satinalmasiparisisub where sip_id=20492
