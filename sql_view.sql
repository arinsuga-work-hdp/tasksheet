/* OPEN TICKET */
select sum(support_request_open) as support_request_open,
sum(support_incident_open) as support_incident_open
from activity_view
WHERE created_by = 10; -- BY USER PARAMETER

