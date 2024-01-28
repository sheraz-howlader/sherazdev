@extends('backend.app')

@push('section_name', 'Portfolio')
@push('action_name', 'Create')

@section('contents')
    <div class="row">
        <form action="{{ route('admin.portfolio.store') }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-sm-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label"> Client Name </label>
                                <input class="form-control" type="text" name="client_name" aria-label="client_name"
                                       value="{{ old('client_name') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Industry Name </label>
                                <input class="form-control" type="text" name="industry_name" aria-label="industry_name"
                                       value="{{ old('industry_name') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Title </label>
                                <input class="form-control" type="text" name="title" aria-label="title"
                                       value="{{ old('title') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Technologies </label>
                                <input class="form-control" type="text" name="technologies" aria-label="technologies"
                                       value="{{ old('technologies') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Description </label>
                                <textarea class="form-control" name="description"
                                          aria-label="description">{{ old('description') }}</textarea>
                            </div>

                            <button type="submit" class="btn btn-primary"> Save </button>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Category </label>
                                <select name="category_id" aria-label="category_id" class="form-control">
                                    <option disabled selected>--Select Category--</option>
                                    <option value="1" selected> Test</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Delivery Date </label>
                                <input class="form-control" type="date" name="delivery_date" aria-label="delivery_date"
                                       value="{{ old('delivery_date') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> URL </label>
                                <input class="form-control" type="text" name="url" aria-label="url"
                                       value="{{ old('url') }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Thumbnail </label>
                                <input class="form-control" type="file" name="file" aria-label="file">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
