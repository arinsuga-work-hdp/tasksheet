use dbhrd;

select * from users;

select * from roles;

select * from activitytype;

select * from activitysubtype
where activitytype_id = 3;

select * from tasktype
where activitytype_id = 3;

select * from tasksubtype1
where activitytype_id = 3;

select * from tasksubtype2
where activitytype_id = 1;

select * from activitystatus;

select *
from activity
where activitytype_id = 3;

/* ------------------  */


select
sum(support_incident_open) as support_incident_open,
sum(support_request_open) as support_request_open,
sum(support_pending) as support_pending
from activity_view
where activity_dt <= '2023-03-27'
and created_by = 10;

select *
from activity_viewjoin
where activitytype_id = 3;

where created_by is not null or updated_by is not null;

select * from activity
where activitytype_id = 1
and activitysubtype_id = 1
and activitystatus_id = 2;

select * from users;

select sum(support_request_open) as support_request_open,
sum(support_incident_open) as support_incident_open
from activity_view
WHERE created_by = 10;

/* BAR CHART */
select activity_year, activity_month,activity_yearmonth,
sum(support_request) as suport_request,
sum(support_incident) as suport_incident
from activity_view
group by activity_year, activity_month,activity_yearmonth
order by activity_year, activity_month,activity_yearmonth;





