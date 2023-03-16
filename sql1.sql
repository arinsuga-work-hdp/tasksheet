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

drop view activity_view;
create view activity_view as
select
id, activitytype_id, activitysubtype_id, activitystatus_id, tasktype_id, tasksubtype1_id, tasksubtype2_id, name, subject, description, resolution, image, startdt, enddt, targetdt, enduser_id, enduserdept_id, endusersubdept_id, technician_id, created_at, updated_at, created_by, updated_by
,concat(subject,' - dodol') as dodol_id
from activity;

select *
from activity_view;

select * from activity
where activitytype_id = 1
and activitysubtype_id = 1
and activitystatus_id = 2;
