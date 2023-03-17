<?php

namespace Arins\Repositories\ActivityView;

use Arins\Repositories\BaseRepositoryInterface;

//Inherit interface to BaseRepositoryInterface
interface ActivityViewRepositoryInterface extends BaseRepositoryInterface
{
    function byActivitytype($id, $take=null);
    function byActivitytypeOrderByIdAndStartdtDesc($id, $take=null);
    function byActivitytypeStatusOpenOrderByIdAndStartdtDesc($id, $take=null);
    function byActivitytypeTodayOrderByIdAndStartdtDesc($id, $take=null);
    function byActivitytypeCustom($id, $filter, $take=null);
    // function countActivityByActivityType();
}