<?php

namespace Arins\Repositories\ActivityViewjoin;

use Arins\Repositories\BaseRepositoryInterface;

//Inherit interface to BaseRepositoryInterface
interface ActivityViewjoinRepositoryInterface extends BaseRepositoryInterface
{
    function filterByUserId($id, $where=null);
    function filterUntilDate($untilDate, $where=null);

    function getOpenSupportByUser($userId);
}