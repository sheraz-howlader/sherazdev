@extends('backend.app')

@push('section_name', 'Service')
@push('action_name', 'Update')

@section('contents')
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
                            <label class="form-label required"> Title </label>
                            <input class="form-control" type="text" name="title" aria-label="title" value="{{ $service->title }}">
                        </div>

                        <div class="form-group">
                            <label class="form-label required"> Description </label>
                            <textarea class="form-control" name="description" aria-label="description">{{ $service->description }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-primary"> Update </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
