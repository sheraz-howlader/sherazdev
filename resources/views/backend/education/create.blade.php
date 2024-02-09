@extends('backend.app')

@push('section_name', 'Education')
@push('action_name', 'Create')

@section('contents')
    <div class="row">
        <form action="{{ route('admin.education.store') }}" method="post">
            @csrf
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Institute Name </label>
                                <input class="form-control" type="text" name="institute_name" aria-label="institute_name"
                                       value="{{ old('institute_name') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Group </label>
                                <input class="form-control" type="text" name="group" aria-label="group"
                                       value="{{ old('group') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Department </label>
                                <input class="form-control" type="text" name="department" aria-label="department"
                                       value="{{ old('department') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Description </label>
                                <input class="form-control" type="text" name="description" aria-label="description"
                                       value="{{ old('description') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Session </label>
                                <input class="form-control" type="text" name="session_year" aria-label="session_year"
                                       value="{{ old('session_year') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Result </label>
                                <input class="form-control" type="text" name="result" aria-label="result"
                                       value="{{ old('result') }}">
                            </div>

                            <button type="submit" class="btn btn-primary"> Save </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
