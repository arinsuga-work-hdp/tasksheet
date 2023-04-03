<?php

namespace Arins\Bo\Http\Controllers\Activity;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

trait Api
{

    /** close */
    public function monthlySupportByYear($year)
    {
        $data = [
            'satu' => 'data 1 tahun: '. $year,
            'dua' => 'data 1: '. $year,
            'tiga' => 'data 3: '. $year,
        ];

        $result = json_encode($data);

        return $result;
    }


}

