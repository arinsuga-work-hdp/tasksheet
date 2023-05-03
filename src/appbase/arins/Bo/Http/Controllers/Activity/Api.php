<?php

namespace Arins\Bo\Http\Controllers\Activity;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

trait Api
{

    /** close */
    public function supportMonthlybyyear($year)
    {

        $data = [
            'year' => $year,
            'months' => [
                'Jan','Feb','Mar','Apr','Mei','Jun',
                'Jul','Agt','Sep','Okt','Nov','Des'
            ],
            'incidents' => [
                5000,220,1065,1125,30,11,
                55,22,125,156,777,58
            ],
            'requests' => [
                1500,22,125,156,777,58,
                115,220,1065,1125,30,11
            ],
        ];

        $result = json_encode($data);

        return $result;
    }

    public function incidentBycategoryMonthinyear($year, $month)
    {

        $dataSource = $this->data->countByActivityType(1, $year, $month);
        $labels = [];
        $items = [];

        foreach ($dataSource as $index => $item) {

            $labels[$index] = $item->tasktype->name;
            $items[$index] = $item->value;

        } //end loop

        $data = [
            'year' => $year,
            'month' => $month,
            'labels' => $labels,
            'items' => $items,
        ];

        $result = json_encode($data);

        return $result;
    }

}

