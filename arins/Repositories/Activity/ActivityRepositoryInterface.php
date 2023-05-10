<?php

namespace Arins\Repositories\Activity;

use Arins\Repositories\BaseRepositoryInterface;

//Inherit interface to BaseRepositoryInterface
interface ActivityRepositoryInterface extends BaseRepositoryInterface
{
    function byActivitytype($id, $take=null);
    function byActivitytypeOrderByIdAndStartdtDesc($id, $take=null);
    function byActivitytypeStatusOpenOrderByIdAndStartdtDesc($id, $take=null);
    function byActivitytypeTodayOrderByIdAndStartdtDesc($id, $take=null);
    function byActivitytypeCustom($id, $filter, $take=null);

    function countByActivityType($activitytype_id, $year=null, $month=null);
    function countByActivitySubtype(
        $activitytype_id, $activitysubtype_id,$year=null, $month=null
    );
}