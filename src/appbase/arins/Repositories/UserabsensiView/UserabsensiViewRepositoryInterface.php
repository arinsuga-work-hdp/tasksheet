<?php

namespace Arins\Repositories\UserabsensiView;

use Arins\Repositories\BaseRepositoryInterface;

//Inherit interface to BaseRepositoryInterface
interface UserabsensiViewRepositoryInterface extends BaseRepositoryInterface
{
    function byUserId($id, $take=null);
}