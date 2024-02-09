@extends('backend.app')

@push('styles')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/icheck-bootstrap@3.0.1/icheck-bootstrap.min.css">
@endpush

@push('section_name', 'Education')
@push('action_name', 'Update')

@section('contents')
    <div class="row">
        <form action="{{ route('admin.education.update', $education->id) }}" method="post">
            @csrf
            @method('PUT')
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Institute Name </label>
                                <input class="form-control" type="text" name="institute_name"
                                       aria-label="institute_name"
                                       value="{{ $education->institute_name }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Group </label>
                                <input class="form-control" type="text" name="group" aria-label="group"
                                       value="{{ $education->group }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Department </label>
                                <input class="form-control" type="text" name="department" aria-label="department"
                                       value="{{ $education->department }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Description </label>
                                <input class="form-control" type="text" name="description" aria-label="description"
                                       value="{{ $education->description }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Session </label>
                                <input class="form-control" type="text" name="session_year" aria-label="session_year"
                                       value="{{ $education->session_year }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Result </label>
                                <input class="form-control" type="text" name="result" aria-label="result"
                                       value="{{ $education->result }}">
                            </div>

                            <div class="icheck-primary mb-4">
                                <input type="checkbox" id="status" name="status" value="1" {{ $education->status ? 'checked' :'' }} />
                                <label for="status"> Status </label>
                            </div>

                            <button type="submit" class="btn btn-primary"> Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
