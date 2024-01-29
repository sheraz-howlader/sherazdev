<x-mail::message>
# Dear Admin,

<strong>Error Type:</strong> {{ $data['error_type'] }} <br>

<x-mail::panel>
{{ $data['message'] }}
</x-mail::panel>

<x-mail::panel>
<strong>Middlewares:</strong> {{ $data['middlewares'] }} <br>
<strong>URL:</strong> {{ $data['url'] }} <br>
<strong>Route Name:</strong> {{ $data['route'] }} <br>
<strong>Method:</strong> {{ $data['method'] }} <br>
<strong>IP:</strong> {{ $data['ip'] }} <br>
<strong>Payload:</strong> {{ $data['input_data'] }} <br>
</x-mail::panel>

<strong>User Agent:</strong> {{ $data['user_agent'] }} <br>

</x-mail::message>
