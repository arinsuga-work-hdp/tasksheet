<?php

namespace Arins\Repositories\Activity;

use Arins\Repositories\BaseRepository;
use Arins\Repositories\Activitytype\ActivitytypeRepositoryInterface;

class ActivityRepository extends BaseRepository implements ActivityRepositoryInterface
{
    public function __construct($parData)
    {
        parent::__construct($parData);

        $this->inputField = [
            'activitytype_id' => null,
            'activitysubtype_id' => null,
            'tasktype_id' => null,
            'tasksubtype1_id' => null,
            'tasksubtype2_id' => null,
            'name' => null,
            'subject' => null,
            'description' => null,
            'image' => null,
            //'startdt' => null,
            // 'enddt' => null,
        ];

        $this->validateField = [
            //code array here...
            'startdt' => 'required',
            // 'enddt' => 'required',
            'activitytype_id' => 'required',
            'activitysubtype_id' => '',
            'tasktype_id' => '',
            'tasksubtype1_id' => '',
            'tasksubtype2_id' => '',
            'description' => 'required',
            'subject' => 'required',
        ];

        $this->validateInput = [
            //code array here...
            //'startdt' => 'required',
            // 'enddt' => 'required',
            //'activitytype_id' => 'required',
            //'activitysubtype_id' => '',
            //'tasktype_id' => '',
            //'tasksubtype1_id' => '',
            //'tasksubtype2_id' => '',
            'description' => 'required',
            'subject' => 'required',
        ];

        $this->validateField = [
            //code array here...
            'startdt' => 'required',
            // 'enddt' => 'required',
            'activitytype_id' => 'required',
            'activitysubtype_id' => '',
            'tasktype_id' => '',
            'tasksubtype1_id' => '',
            'tasksubtype2_id' => '',
            'description' => 'required',
            'subject' => 'required',
        ];

    }

    //Override parent class [BaseRepository.all()]
    public function all()
    {
        return $this->data::with('activity')->get();;
    }

    public function byActivitytype($id, $take=null)
    {
        if ($take == null) {
            return $this->data::where('activitytype_id', $id)->get();
        } else {
            return $this->data::where('activitytype_id', $id)
            ->take($take)
            ->get();
        }
    }

    public function countActivityByActivityType() {

        return 'hasil dari function countActivityByActivityType';

    }

}