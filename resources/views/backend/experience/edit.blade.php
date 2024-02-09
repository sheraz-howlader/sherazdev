@extends('backend.app')

@push('styles')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/icheck-bootstrap@3.0.1/icheck-bootstrap.min.css">
@endpush


@push('section_name', 'Experience')
@push('action_name', 'Update')

@section('contents')
    <div class="row">
        <form action="{{ route('admin.experience.update', $experience->id) }}" method="post">
            @csrf
            @method('PUT')
            <div class="row">
                <div class="col-sm-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Company Name </label>
                                <input class="form-control" type="text" name="company_name" aria-label="company_name"
                                       value="{{ $experience->company_name }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Designation </label>
                                <input class="form-control" type="text" name="designation" aria-label="designation"
                                       value="{{ $experience->designation }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Address </label>
                                <input class="form-control" type="text" name="address" aria-label="address"
                                       value="{{ $experience->address }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Description </label>
                                <textarea class="form-control" name="description"
                                          aria-label="description">{{ $experience->description }}</textarea>
                            </div>

                            <button type="submit" class="btn btn-primary"> Update </button>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Start Date </label>
                                <input class="form-control" type="date" name="start" aria-label="start"
                                       value="{{ $experience->start }}">
                            </div>

                            <div class="icheck-primary mb-4">
                                <input type="checkbox" id="is_present" name="is_present" value="1" {{ $experience->is_present ? 'checked' : '' }} />
                                <label for="is_present"> Present </label>
                            </div>

                            <div @class(['form-group end_date','d-none' => $experience->is_present])>
                                <label class="form-label"> End Date </label>
                                <input class="form-control" type="date" name="end" aria-label="end"
                                       value="{{ $experience->end }}">
                            </div>

                            <div class="icheck-primary mb-4">
                                <input type="checkbox" id="status" name="status" value="1" {{ $experience->status ? 'checked' : '' }} />
                                <label for="status"> Status </label>
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
