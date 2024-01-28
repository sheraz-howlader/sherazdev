@extends('backend.app')

@push('section_name', 'Service')
@push('action_name', 'Create')

@section('contents')
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin.service.store') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label class="form-label"> Icon </label>
                            <input class="form-control" type="text" name="icon" aria-label="icon">
                        </div>

                        <div class="form-group">
                            <label class="form-label required"> Title </label>
                            <input class="form-control" type="text" name="title" aria-label="title">
                        </div>

                        <div class="form-group">
                            <label class="form-label required"> Description </label>
                            <textarea class="form-control" name="description" aria-label="description"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary"> save </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
