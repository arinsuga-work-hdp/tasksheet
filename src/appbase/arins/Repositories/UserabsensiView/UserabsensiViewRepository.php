<?php

namespace Arins\Repositories\UserabsensiView;

use Arins\Repositories\BaseRepository;
use Arins\Repositories\UserabsensiView\UserabsensiViewRepositoryInterface;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class UserabsensiViewRepository extends BaseRepository implements UserabsensiViewRepositoryInterface
{
    public function __construct($parData)
    {
        parent::__construct($parData);

        $this->inputField = [
            //'field_name' => null,
        ];

        $this->validateInput = [
            //'field_name' => 'required',
        ];

        $this->validateField = [
            //'field_name' => 'required',
        ];

    }

    function byUserId($id, $take=null)
    {
        $result = $this->model::where('user_id', $id);

        if ($take == null) {
            $result = $result->get();
        } else {
            $result = $result->take($take)->get();
        }

        return $result;
    }

    function byUserIdYearMonth($id, $yearMonth=null, $take=null)
    {
        $result = $this->model::where('user_id', $id);

        if (isset($yearMonth)) {
            $result = $where->whereDate('tgl', '<=', $untilDate);
        }

        if ($take == null) {
            $result = $result->get();
        } else {
            $result = $result->take($take)->get();
        }

        return $result;
    }

}