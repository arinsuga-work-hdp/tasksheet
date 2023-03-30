<?php

namespace Arins\Repositories\ActivityViewjoin;

use Arins\Repositories\BaseRepository;
use Arins\Repositories\Activitytype\ActivitytypeRepositoryInterface;
use Carbon\Carbon;

class ActivityViewjoinRepository extends BaseRepository implements ActivityViewjoinRepositoryInterface
{
    public function __construct($parData)
    {
        parent::__construct($parData);

        $this->inputField = [
        ];

        $this->validateInput = [
        ];

        $this->validateField = [
        ];

    }

    public function filterByUserId($id, $where=null) {
        if (isset($where)) {

            $result = $where->model::where('created_by', $id);

        } else {

            $result = $this->model::where('created_by', $id);

        }


        return $result;
    }

    public function filterUntilDate($untilDate, $where=null) {
        if (isset($where)) {

            $result = $where->whereDate('activity_dt', '<=', $untilDate);

        } else {

            $result = $this->whereDate('activity_dt', '<=', $untilDate);

        }

        return $result;
    }


    public function getOpenSupportByUser($userId, $take=null) {

        $result = $this->filterByUserId($userId);

        if ($take == null) {
            $result = $result->get();
        } else {
            $result = $result
            ->orderBy('startdt', 'desc')
            ->orderBy('id', 'desc')
            ->take($take)->get();
        }

        return $result;
    }

}