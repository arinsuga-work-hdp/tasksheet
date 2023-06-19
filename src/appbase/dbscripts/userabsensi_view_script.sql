create or replace view userabsensi_view as
select
a.id, a.idabsen, a.badgeno, a.tgl, a.daytype,
a.masuk, a.keluar, a.work, a.overtime, a.leavetype, a.remark,
a.created_at, a.updated_at, a.created_by, a.updated_by,
b.nik, b.noabsen, b.name, c.email
from absensi a, employee b, users c
where a.badgeno = b.noabsen
and b.user_id = c.id;
