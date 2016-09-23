CREATE FUNCTION f_rafstok (character varying) RETURNS integer AS
$$
DECLARE miktar integer;
BEGIN
select coalesce(sum(tu_rafadresler.miktar*(select tu_rafambalaj.adet from tu_rafambalaj where tu_rafambalaj.id=tu_rafadresler.ambalaj_id)),0) into miktar from tu_rafadresler where kod=$1;
return miktar;
END;
$$
LANGUAGE plpgsql VOLATILE COST 100;