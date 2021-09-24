<?php

namespace Arins\Bo\Http\Controllers\Activity;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Arins\Repositories\Activitytype\ActivitytypeRepositoryInterface;
use Arins\Repositories\Activity\ActivityRepositoryInterface;
use Arins\Facades\Response;
use Arins\Facades\Filex;
use Arins\Facades\Formater;
use Arins\Facades\ConvertDate;

class ActivityController extends Controller
{

    protected $sViewRoot;
    protected $data, $dataActivitytype;
    protected $inputField, $validateFields;


    public function __construct(ActivityRepositoryInterface $parData,
                                ActivitytypeRepositoryInterface $parActivitytype)
    {
        $this->middleware('auth.admin');
        $this->middleware('is.admin');

        $psViewRoot = 'bo.activity';
        $this->sViewRoot = $psViewRoot;
        $this->data = $parData;
        $this->dataActivitytype = $parActivitytype;
        $this->validateFields = [
            //code array here...
            'startdt' => 'required',
            'enddt' => 'required',
            'activitytype_id' => 'required',
            'description' => 'required',
        ];

        $this->inputField = [
            'activitytype_id' => null,
            'name' => null,
            'description' => null,
            'image' => null,
            'startdt' => null,
            'enddt' => null,
        ];
        
    }

    /** get */
    public function index()
    {
        $data = $this->data->allOrderByIdDesc();

        $viewModel = Response::viewModel();
        $viewModel->data = $data;

        return view($this->sViewRoot.'.index',
        ['viewModel' => $viewModel]);
    }

    /** get */
    public function show($id)
    {
        $data = $this->data->find($id);
        $viewModel = Response::viewModel();
        $viewModel->data = $data;

        return view($this->sViewRoot.'.show',
        ['viewModel' => $viewModel, 'new' => false, 'fieldEnabled' => false]);
    }

    /** get */
    public function create()
    {

        $viewModel = Response::viewModel();
        $viewModel->data = json_decode(json_encode($this->inputField));
        $viewModel->data->date = now();

        return view($this->sViewRoot.'.create',
        ['viewModel' => $viewModel, 'new' => true, 'fieldEnabled' => true,
        'activitytype' => $this->dataActivitytype->all()]);
    }

    /** get */
    public function edit($id)
    {
        $data = $this->data->find($id);
        $viewModel = Response::viewModel();
        $viewModel->data = $data;

        return view($this->sViewRoot.'.edit',
        ['viewModel' => $viewModel, 'new' => false, 'fieldEnabled' => true,
        'activitytype' => $this->dataActivitytype->all()]);
    }

    /** post */
    public function store(Request $request)
    {
        //get input value by fillable fields
        $data = $request->only($this->data->getFillable()); //get field input
        $upload = $request->file('upload'); //upload file (image/document) ==> if included
        $imageTemp = $request->input('imageTemp'); //temporary file uploaded
        
        //convert input value (string/date/number/email/etc)
        $data['startdt'] = ConvertDate::strDatetimeToDate($data['startdt']);
        $data['enddt'] = ConvertDate::strDatetimeToDate($data['enddt']);

        //create temporary uploaded image
        $uploadTemp = Filex::uploadTemp($upload, $imageTemp);
        $request->session()->flash('imageTemp', $uploadTemp);

        //validate input value
        $request->validate($this->validateFields);

        //copy temporary uploaded image to real path
        $data['image'] = Filex::uploadOrCopyAndRemove('', $uploadTemp, 'activities', $upload, 'public', false);
        
        //save data
        if ($this->data->save($data)) {
            return redirect()->route('activity.index');
        }

        /** jika tetap terjadi kesalahan maka ada kesalahan pada system */
        //step 1: delete image if fail to save
        Filex::delete($data['image']);

        //step 2: Kembali ke halaman input
        return redirect()->route('activity.create')
        ->withInput();

    }

    /** post */
    public function update(Request $request, $id)
    {
     
        //get input value by fillable fields
        // $data = $request->only($this->data->getFillable()); //get field input
        // $upload = $request->file('upload'); //upload file (image/document) ==> if included
        // $imageTemp = $request->input('imageTemp'); //temporary file uploaded

///////////////////////////////////////////////////////////////////////////////////

        $model = $this->data->find($id);
        $data = $request->only($model->getFillable());
        $upload = $request->file('upload');
        $toggleRemoveImage = $request->input('toggleRemoveImage');

        $data['image'] = Filex::uploadOrRemove($model->image, 'activities', $upload, 'public', $toggleRemoveImage);
        $data['startdt'] = ConvertDate::strDatetimeToDate($data['startdt']);
        $data['enddt'] = ConvertDate::strDatetimeToDate($data['enddt']);

        $request->validate($this->validateFields);

        if ($this->data->save($data)) {
            return redirect()->route('activity.index');
        }

        /** jika tetap terjadi kesalahan maka ada kesalahan pada system */
        //step 1: delete image if fail to save
        //cekfirst: Filex::delete($data['image']);

        //step 2: Kembali ke halaman input
        return redirect()->route('activity.edit')
        ->withInput();
    }

    /** get */
    public function delete($id)
    {

        return view($this->sViewRoot.'.delete');
    }

    /** post */
    public function destroy($id)
    {
        //
        $model = $this->data->find($id);
        $fileName = $model->image;
        $model->delete();
        Filex::delete($fileName); 

        return redirect()->route('activity.index');
   }

    /** get */
    public function reportDetail()
    {
        return dd('reportDetail');
        $data = $this->data->allOrderByIdDesc();

        $viewModel = Response::viewModel();
        $viewModel->data = $data;

        return view($this->sViewRoot.'.report-detail',
        ['viewModel' => $viewModel]);
    }

    /** get */
    public function reportRecap()
    {
        return dd('reportRecap');
        $data = $this->data->allOrderByIdDesc();

        $viewModel = Response::viewModel();
        $viewModel->data = $data;

        return view($this->sViewRoot.'.report-recap',
        ['viewModel' => $viewModel]);
    }

}
