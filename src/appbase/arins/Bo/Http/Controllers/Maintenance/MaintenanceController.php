<?php

namespace Arins\Bo\Http\Controllers\Maintenance;

// use App\Http\Controllers\Controller;
// use Illuminate\Http\Request;

use Arins\Bo\Http\Controllers\Activity\ActivityController;

use Arins\Repositories\Activity\ActivityRepositoryInterface;
use Arins\Repositories\Activitytype\ActivitytypeRepositoryInterface;
use Arins\Repositories\Activitysubtype\ActivitysubtypeRepositoryInterface;
use Arins\Repositories\Tasktype\TasktypeRepositoryInterface;
use Arins\Repositories\Tasksubtype1\Tasksubtype1RepositoryInterface;
use Arins\Repositories\Tasksubtype2\Tasksubtype2RepositoryInterface;
use Arins\Repositories\Employee\EmployeeRepositoryInterface;

class MaintenanceController extends ActivityController
{

    public function __construct(ActivityRepositoryInterface $parData,
                                ActivitytypeRepositoryInterface $parActivitytype,
                                ActivitysubtypeRepositoryInterface $parActivitysubtype,
                                TasktypeRepositoryInterface $parTasktype,
                                Tasksubtype1RepositoryInterface $parTasksubtype1,
                                Tasksubtype2RepositoryInterface $parTasksubtype2,
                                EmployeeRepositoryInterface $parEmployee)
    {
        $this->sViewName = 'maintenance';
        $this->activitytype_id = 2; //maintenance

        parent::__construct(
            $parData,
            $parActivitytype,
            $parActivitysubtype,
            $parTasktype,
            $parTasksubtype1,
            $parTasksubtype2,
            $parEmployee
        );

    } //end construct

} //end class
