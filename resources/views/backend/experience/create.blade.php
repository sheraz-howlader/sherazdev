@extends('backend.app')

@push('styles')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/icheck-bootstrap@3.0.1/icheck-bootstrap.min.css">
@endpush

@push('section_name', 'Experience')
@push('action_name', 'Create')

@section('contents')
    <div class="row">
        <form action="{{ route('admin.experience.store') }}" method="post">
            @csrf
            <div class="row">
                <div class="col-sm-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Company Name </label>
                                <input class="form-control" type="text" name="company_name" aria-label="company_name"
                                       value="{{ old('company_name') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Designation </label>
                                <input class="form-control" type="text" name="designation" aria-label="designation"
                                       value="{{ old('designation') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Address </label>
                                <input class="form-control" type="text" name="address" aria-label="address"
                                       value="{{ old('address') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Description </label>
                                <textarea class="form-control" name="description"
                                          aria-label="description">{{ old('description') }}</textarea>
                            </div>

                            <button type="submit" class="btn btn-primary"> Save </button>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Start Date </label>
                                <input class="form-control" type="date" name="start" aria-label="start"
                                       value="{{ old('start') }}">
                            </div>

                            <div class="icheck-primary mb-4">
                                <input type="checkbox" id="is_present" name="is_present" value="1" />
                                <label for="is_present"> Present </label>
                            </div>

                            <div class="form-group end_date">
                                <label class="form-label"> End Date </label>
                                <input class="form-control" type="date" name="end" aria-label="end"
                                       value="{{ old('end') }}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@push('scripts')
    <script>
        $('#is_present').on('click', function (){
            $('.end_date').toggleClass('d-none');
        });
    </script>
@endpush
