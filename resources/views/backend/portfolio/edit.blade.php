@extends('backend.app')

@push('section_name', 'Portfolio')
@push('action_name', 'Update')

@push('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css"/>
    <style>
        .image-container {
            position: relative;
            display: inline-block;
        }
        .close {
            position: absolute;
            top: -10px;
            right: 0;
            color: #df0e48;
            font-size: 20px;
            cursor: pointer;
        }
    </style>
@endpush

@section('contents')
    <div class="row">
        <form action="{{ route('admin.portfolio.update', $portfolio->id) }}" method="post" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="row">
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label class="form-label"> Client Name </label>
                            <input class="form-control" type="text" name="client_name" aria-label="client_name"
                                   value="{{ $portfolio->client_name }}">
                        </div>
                        <div class="form-group">
                            <label class="form-label"> Industry Name </label>
                            <input class="form-control" type="text" name="industry_name" aria-label="industry_name"
                                   value="{{ $portfolio->industry_name }}">
                        </div>
                        <div class="form-group">
                            <label class="form-label required"> Title </label>
                            <input class="form-control" type="text" name="title" aria-label="title"
                                   value="{{ $portfolio->title }}">
                        </div>
                        <div class="form-group">
                            <label class="form-label required"> Technologies </label>
                            <input class="form-control" type="text" name="technologies" aria-label="technologies"
                                   value="{{ $portfolio->technologies }}">
                        </div>
                        <div class="form-group">
                            <label class="form-label required"> Description </label>
                            <textarea class="form-control" name="description"
                                      aria-label="description">{{ $portfolio->description }}</textarea>
                        </div>

                        <div @class(['form-group', 'd-none' => $portfolio->images->count() < 1])>
                            <label class="form-label"> Image Gallery </label>
                            <div>
                                @foreach($portfolio->images as $image)
                                    <div class="image-container">
                                        <span class="close" data-id="{{$image->id}}">&times;</span>
                                        <img src="{{asset($image->image)}}" alt="Additional Image" height="80" width="120" />
                                    </div>
                                @endforeach
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary"> Update</button>
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
                                   value="{{ $portfolio->delivery_date }}">
                        </div>
                        <div class="form-group">
                            <label class="form-label"> URL </label>
                            <input class="form-control" type="text" name="url" aria-label="url"
                                   value="{{ $portfolio->url }}">
                        </div>
                        <div class="form-group">
                            <label class="form-label"> Featured Image </label>
                            <input class="dropify" type="file" name="thumbnail" data-default-file="{{asset($portfolio->thumbnail)}}">
                        </div>

                        <div class="form-group">
                            <label class="form-label"> Portfolio Gallery </label>
                            <input class="form-control dropify" type="file" name="portfolio_images[]" aria-label="portfolio_images" multiple="multiple">
                            <small class="text-danger mt-2">N.B: You can upload multiple image.</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    </div>
@endsection

@push('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
    <script>
        $('.dropify').dropify();

        $('.close').on('click', async function (e){
            e.preventDefault();
            let confirmation = await swal.fire({
                text: "Are you sure want to delete? It can not be undone.",
                showCancelButton: true,
                icon: 'warning',
            });
            if (confirmation.isConfirmed) {
                let id = $(this).attr('data-id');

                $.ajax({
                    dataType: 'json',
                    type:'get',
                    url: route('admin.porfolio.image.delete', id),
                    beforeSend() {
                        swal.fire({
                            title: 'Processing your request...',
                        });
                        swal.showLoading();
                    },
                    success: function (response){
                        swal.close();
                        swal.fire({
                            html: response.msg,
                            icon: response.status,
                            confirmButtonText: 'OK'
                        }).then(function() {
                            location.reload();
                        });
                    }
                })
            }
        })
    </script>
@endpush
