@extends('backend.app')

@push('section_name', 'Setting')
@push('action_name', 'Edit')

@section('contents')
    <div class="row">
        <form action="{{ route('admin.setting.update', $setting->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="row">
                <div class="col-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Meta Title </label>
                                <input class="form-control" type="text" name="meta_title" aria-label="meta_title" value="{{ $setting->meta_title }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Meta Description </label>
                                <textarea class="form-control" name="meta_description" aria-label="meta_description">{{ $setting->meta_description }}</textarea>
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Meta Keyword </label>
                                <textarea class="form-control" name="meta_keyword" aria-label="meta_keyword">{{ $setting->meta_keyword }}</textarea>
                            </div>
                            <div class="form-group">
                                <label class="form-label required"> Mail To </label>
                                <input class="form-control" type="text" name="mail_to" aria-label="mail_to" value="{{ $setting->mail_to }}">
                            </div>

                            <button type="submit" class="btn btn-primary"> save </button>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label required"> Hero Type Writer </label>
                                <input class="form-control" type="text" name="hero_type_writer" aria-label="hero_type_writer" value="{{ $setting->hero_type_writer }}">
                            </div>
                            <div class="form-group">
                                <label class="form-label"> Favicon </label>
                                <input class="form-control" type="file" name="icon" aria-label="icon">
                            </div>
                            <div class="form-group text-center">
                                <img src="{{ asset($setting->icon) }}" alt="favicon" width="100">
                            </div>

                            <div class="form-group">
                                <label class="form-label"> Hero Background </label>
                                <input class="form-control" type="file" name="hero_background" aria-label="hero_background">
                            </div>
                            <div class="form-group text-center">
                                <img src="{{ asset($setting->hero_background) }}" alt="favicon" width="150">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
