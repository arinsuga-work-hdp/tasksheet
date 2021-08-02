@extends('layouts.appbo')

@section('content_title', 'Activity Add')

@section('toolbar')

<li class="nav-item">
    <a class="nav-link" href="{{ route('activity.index') }}">
        <i class="fas fa-lg fa-arrow-left"></i>
    </a>
</li>

<li class="nav-item">
    <a onclick="event.preventDefault(); document.getElementById('frmData').submit();"
       class="nav-link" href="#">
        <i class="fas fa-lg fa-save"></i>
    </a>
</li>

@endsection


@section('content')

<form role="form" id="frmData" method="POST" action="{{ route('activity.store') }}" enctype="multipart/form-data">
    @csrf
    @include('bo.activity.data-field-items')

</form>

@endsection

@section('js')

    @include('bo.activity._script')

@endsection
