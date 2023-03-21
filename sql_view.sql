/* OPEN TICKET (request+incindent) dan PENDING TICKET */
select sum(support_request_open) as support_request_open,
sum(support_incident_open) as support_incident_open,
sum(support_pending) as support_pending
from activity_view
WHERE created_by = 10; -- BY USER PARAMETER

/* MYTASK = Task yang sedang dikerjakan sesuai login */
/* Tampilkan list task support */
select *
from activity;

/* BARCHART SUPPORT request+incident per bulan per tahun */
select
a.activity_year, a.activity_month,
a.activitytype_id, a.activitytype_name,
a.activitysubtype_id, a.activitysubtype_name,
sum(a.support_request) as support_request, sum(a.support_incident) as support_incident
from activity_view a
where a.created_by = 10
and a.activity_year = 2022
group by a.activity_year, a.activity_month
order by a.activity_year, a.activity_month;

/* PIECHART SUPPORT incident per categori+subcategori per bulan per tahun */
select
a.activity_year, a.activity_month,
a.tasktype_id, a.tasktype_name,
a.tasksubtype1_id, a.tasksubtype1_name,
sum(a.support_incident) as support_incident
from activity_view a
where a.created_by = 10
and a.activity_year = 2022
group by a.activity_year, a.activity_month,
		 a.tasktype_id, a.tasktype_name, a.tasksubtype1_id, a.tasksubtype1_name
order by a.activity_year, a.activity_month,
         a.tasktype_id, a.tasktype_name, a.tasksubtype1_id, a.tasksubtype1_name;

