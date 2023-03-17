drop view activity_view;
create view activity_view as
select a.id,
CAST(a.created_at as DATE) as activity_dt,
a.created_by, b.name,
a.activitytype_id, a1.name as activitytype_name,
a.activitysubtype_id, a2.name as activitysubtype_name,
a.activitystatus_id,
a.tasktype_id, a3.name as tasktype_name,
a.tasksubtype1_id, a4.name as tasksubtype1_name,
a.tasksubtype2_id, a5.name as tasksubtype2_name,
/* ALL_OPEN_CLOSE_PENDING_CANCEL */
IF(a.activitystatus_id = 1, 1, 0) as all_open,
IF(a.activitystatus_id = 2, 1, 0) as all_close,
IF(a.activitystatus_id = 3, 1, 0) as all_pending,
IF(a.activitystatus_id = 4, 1, 0) as all_cancel,
/* SUPPORT */
IF(a.activitytype_id = 1,
  IF(a.activitysubtype_id = 1,
      IF(a.activitystatus_id = 1, 1, 0), 0), 0) as support_request_open,
IF(a.activitytype_id = 1,
  IF(a.activitysubtype_id = 2,
      IF(a.activitystatus_id = 1, 1, 0), 0), 0) as support_incident_open,
/* MAINTENANCE */
IF(a.activitytype_id = 2,
  IF(a.activitysubtype_id = 3,
     IF(a.activitystatus_id = 1, 1, 0), 0), 0) as maintenance_reguler_open,
IF(a.activitytype_id = 2,
  IF(a.activitysubtype_id = 4,
     IF(a.activitystatus_id = 1, 1, 0), 0), 0) as maintenance_request_open,
IF(a.activitytype_id = 2,
  IF(a.activitysubtype_id = 5,
     IF(a.activitystatus_id = 1, 1, 0), 0), 0) as maintenance_incident_open,
/* PROJECT*/
IF(a.activitytype_id = 3,
  IF(a.tasktype_id = 16,
     IF(a.activitystatus_id = 1, 1, 0), 0), 0) as project_hardware_open,
IF(a.activitytype_id = 3,
  IF(a.tasktype_id = 17,
     IF(a.activitystatus_id = 1, 1, 0), 0), 0) as project_software_open,
IF(a.activitytype_id = 3,
  IF(a.tasktype_id = 18,
     IF(a.activitystatus_id = 1, 1, 0), 0), 0) as project_network_open
from activity a
left outer join activitytype a1 on a.activitytype_id = a1.id
left outer join activitysubtype a2 on a.activitysubtype_id = a2.id
left outer join tasktype a3 on a.tasktype_id = a3.id
left outer join tasksubtype1 a4 on a.tasksubtype1_id = a4.id
left outer join tasksubtype2 a5 on a.tasksubtype2_id = a5.id
, users b
where a.created_by = b.id;
