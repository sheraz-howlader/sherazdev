<x-mail::message>
# Dear Admin,

<x-mail::panel>
{{ $data['message'] }}
</x-mail::panel>

<x-mail::panel>
<strong>URL:</strong> {{ $data['url'] }} <br>
<strong>Route Name:</strong> {{ $data['route'] }} <br>
<strong>Method:</strong> {{ $data['method'] }} <br>
<strong>IP:</strong> {{ $data['ip'] }} <br>
<strong>Payload:</strong> {{ $data['body'] }} <br>
</x-mail::panel>

</x-mail::message>
