@extends('backend.app')

@section('contents')
    <div class="page-header">
        <div class="page-block card mb-0">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title border-bottom pb-2 mb-2">
                            <h4 class="mb-0"> Services </h4>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="">
                                    <i class="ph ph-house"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href=""> Services </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-sm">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th> Title </th>
                                <th> Description </th>
                                <th> Action </th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($services as $service)
                                <tr>
                                    <td> {{ $loop->iteration }} </td>
                                    <td>
                                        <i class="{{ $service->icon }} mx-1"></i>
                                        {{ $service->title }}
                                    </td>
                                    <td> {{ Str::limit($service->description, 50) }} </td>
                                    <td>
                                        <a href="{{ route('admin.service.edit', $service->id) }}" class="btn btn-primary btn-sm">
                                            <i class="fas fa-edit"></i>
                                            Edit
                                        </a>

                                        <form action="{{ route('admin.service.destroy', $service->id) }}" method="post" class="d-inline">
                                            @csrf
                                            @method('delete')
                                            <button type="submit" class="btn btn-danger btn-sm">
                                                <i class="fas fa-trash-alt"></i>
                                                Delete
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
