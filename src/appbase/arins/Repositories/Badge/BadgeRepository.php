<?php

namespace Arins\Repositories\Badge;

use Arins\Repositories\BaseRepository;
use Arins\Repositories\Badge\BadgeRepositoryInterface;

class BadgeRepository extends BaseRepository implements BadgeRepositoryInterface
{
    public function __construct($parData)
    {
        parent::__construct($parData);

        $this->inputField = [
            //code array here...
            'user_id' => null,
            'badgeno' => null,
        ];

        $this->validateField = [
            //code array here...
            'user_id' => 'required',
            'badgeno' => 'required',
        ];

    }

}