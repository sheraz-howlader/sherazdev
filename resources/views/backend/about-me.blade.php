@extends('backend.app')

@section('contents')
    <div class="page-header">
        <div class="page-block card mb-0">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title border-bottom pb-2 mb-2">
                            <h4 class="mb-0"> About Me </h4>
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
                                <a href="">About Me</a>
                            </li>
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
                    <form action="{{ route('admin.about-me.update', $about->id) }}" method="post">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label class="form-label"> Title </label>
                            <input class="form-control" type="text" name="title" aria-label="title" value="{{ $about->title }}">
                        </div>

                        <div class="form-group">
                            <label class="form-label"> Description </label>
                            <textarea class="form-control" name="description" aria-label="description">{{ $about->description }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-primary"> save </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
