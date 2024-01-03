@component('mail::message')
# Dear Admin (Sheraz Howlader),

I am {{ $data['name'] }}.

{{ $data['body'] }}

Thank you, <br>
{{ $data['name'] }}<br>
{{ $data['email'] }}<br>
@endcomponent
