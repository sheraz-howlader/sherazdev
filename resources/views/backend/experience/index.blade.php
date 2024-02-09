@extends('backend.app')

@push('section_name', 'Experience')
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
                                <th> Designation </th>
                                <th> Company Name </th>
                                <th> Timeline </th>
                                <th> Status </th>
                                <th class="text-center"> Action </th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($experiences as $experience)
                                <tr>
                                    <td> {{ $loop->iteration }} </td>
                                    <td> {{ $experience->designation }} </td>
                                    <td> {{ $experience->company_name }} </td>
                                    <td> {!! $experience->timeline !!} </td>
                                    <td> {!! $experience->display_status !!} </td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.experience.edit', $experience->id) }}" class="btn btn-primary btn-sm">
                                            <i class="fas fa-edit"></i>
                                            Edit
                                        </a>

                                        <form action="{{ route('admin.experience.destroy', $experience->id) }}" method="post" class="d-inline">
                                            @csrf
                                            @method('delete')
                                            <button type="button" class="btn btn-danger btn-sm delete">
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

@push('scripts')
    <script>
        $(function() {
            $(".delete").on('click', async function(e) {
                e.preventDefault();
                let confirmation = await swal.fire({
                    text: "Are you sure want to delete? It can not be undone.",
                    showCancelButton: true,
                    icon: 'warning',
                });
                if (confirmation.isConfirmed) {
                    $(this).closest('form').submit();
                }
            });
        });
    </script>
@endpush
