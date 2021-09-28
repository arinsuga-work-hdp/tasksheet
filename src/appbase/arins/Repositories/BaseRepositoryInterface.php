<?php

namespace Arins\Repositories;

interface BaseRepositoryInterface
{
    function all();
    function find($id);

    function getFillable();
    function getInputField();
    function getValidateField();

    function create($inputData);
    function update($record, $inputData);
    function delete($record);

    function allOrderByIdDesc();
    function allOrderByDateAndIdDesc();
    function allOrderByDateAndIdDescTake($numberOfRecords);

}