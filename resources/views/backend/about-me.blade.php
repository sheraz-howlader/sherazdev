@extends('backend.app')

@push('section_name', 'About Me')
@push('action_name', 'Edit')

@section('contents')
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
