@extends('backend.app')

@push('section_name', 'Portfolio')
@push('action_name', 'List')

@section('contents')
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-sm">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th> Category </th>
                                <th> Title </th>
                                <th> URL </th>
                                <th> Action </th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($portfolios as $portfolio)
                                <tr>
                                    <td> {{ $loop->iteration }} </td>
                                    <td> {{ $portfolio->category_id }} </td>
                                    <td>
                                        <img class="img-thumbnail" src="{{ asset($portfolio->thumbnail) }}" alt="{{ $portfolio->title }}" width="50">
                                        {{ $portfolio->title }}
                                    </td>
                                    <td> <a href="{{ $portfolio->url }}" target="_blank">{{ $portfolio->url }}</a> </td>
                                    <td>
                                        <a href="{{ route('admin.portfolio.edit', $portfolio->id) }}" class="btn btn-primary btn-sm">
                                            <i class="fas fa-edit"></i>
                                            Edit
                                        </a>

                                        <form action="{{ route('admin.portfolio.destroy', $portfolio->id) }}" method="post" class="d-inline">
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
