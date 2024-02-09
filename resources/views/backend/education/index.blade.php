@extends('backend.app')

@push('section_name', 'Education')
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
                                <th> Department </th>
                                <th> Institute Name </th>
                                <th> Session Year</th>
                                <th> Status </th>
                                <th> Result </th>
                                <th class="text-center"> Action </th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($educations as $education)
                                <tr>
                                    <td> {{ $loop->iteration }} </td>
                                    <td> {{ $education->department }} </td>
                                    <td> {{ $education->institute_name }} </td>
                                    <td> {{ $education->session_year }} </td>
                                    <td> {!! $education->display_status !!} </td>
                                    <td> {{ $education->result }} </td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.education.edit', $education->id) }}" class="btn btn-primary btn-sm">
                                            <i class="fas fa-edit"></i>
                                            Edit
                                        </a>

                                        <form action="{{ route('admin.education.destroy', $education->id) }}" method="post" class="d-inline">
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
