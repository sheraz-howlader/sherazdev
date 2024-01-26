@extends('backend.app')

@section('contents')
    <div class="page-header">
        <div class="page-block card mb-0">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title border-bottom pb-2 mb-2">
                            <h4 class="mb-0"> Service Update </h4>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="">
                                    <i class="ph ph-house"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href=""> Service </a>
                            </li>
                            <li class="breadcrumb-item" aria-current="page"> Update </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin.service.update', $service->id) }}" method="post">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label class="form-label"> Icon </label>
                            <input class="form-control" type="text" name="icon" aria-label="icon" value="{{ $service->icon }}">
                        </div>

                        <div class="form-group">
                            <label class="form-label"> Title </label>
                            <input class="form-control" type="text" name="title" aria-label="title" value="{{ $service->title }}">
                        </div>

                        <div class="form-group">
                            <label class="form-label"> Description </label>
                            <textarea class="form-control" name="description" aria-label="description">{{ $service->description }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-primary"> Update </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
