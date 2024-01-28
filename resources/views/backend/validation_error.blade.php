<style>
    .bd-callout {
        padding: .5rem;
        margin-bottom: 1.25rem;
        border: 1px solid #e9ecef;
        border-left-width: 0.25rem;
        border-radius: 0.25rem;
    }
    .bd-callout-warning {
        border-left-color: #f0ad4e;;
    }
</style>

@if ($errors->any())
    <div class="bd-callout bd-callout-warning">
        <ul class="list-unstyled mb-0 error-message">
            @foreach ($errors->all() as $error)
                <li class="text-danger">{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
