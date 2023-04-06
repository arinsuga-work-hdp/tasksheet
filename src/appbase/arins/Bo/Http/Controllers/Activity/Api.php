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
                'Januari','Februari','Maret','April','Mei','Juni',
                'Juli','Agustus','Sepetember','Oktober','November','Desember'
            ],
            'incidents' => [
                115,220,1065,1125,30,11,
                55,22,125,156,777,58
            ],
            'requests' => [
                55,22,125,156,777,58,
                115,220,1065,1125,30,11
            ],
        ];

        $result = json_encode($data);

        return $result;
    }

    public function incidentBycategoryMonthinyear($year, $month)
    {

        $data = [
            'item1' => [
                'month' => 'Januari',
                'incident' => 115,
                'request' => 26
            ],
            'item2' => [
                'month' => 'Februari',
                'incident' => 115,
                'request' => 26
            ],
            'item3' => [
                'month' => 'Maret',
                'incident' => 115,
                'request' => 26
            ],
            'item4' => [
                'month' => 'April',
                'incident' => 115,
                'request' => 26
            ],
            'item5' => [
                'month' => 'Mei',
                'incident' => 115,
                'request' => 26
            ],
            'item6' => [
                'month' => 'Juni',
                'incident' => 115,
                'request' => 26
            ],
            'item7' => [
                'month' => 'Juli',
                'incident' => 115,
                'request' => 26
            ],
            'item8' => [
                'month' => 'Agustus',
                'incident' => 115,
                'request' => 26
            ],
            'item9' => [
                'month' => 'September',
                'incident' => 115,
                'request' => 26
            ],
            'item10' => [
                'month' => 'Oktober',
                'incident' => 115,
                'request' => 26
            ],
            'item11' => [
                'month' => 'November',
                'incident' => 115,
                'request' => 26
            ],
            'item12' => [
                'month' => 'Desember',
                'incident' => 115,
                'request' => 26
            ],

        ];

        $result = json_encode($data);

        return $result;
        
    }

}

