<x-mail::message>
Dear {{ $data['name'] }},

We are pleased to inform you that your registration on sherazdev has been successfully completed. You can now access your account at any time.

To log in, please visit our website:
<x-mail::button url="https://sherazdev.com/login" color="green">
    Login
</x-mail::button>

Your login credentials are as follows:
<x-mail::panel>
Email: {{ $data['email'] }} <br>
Password: {{ $data['password'] }}
</x-mail::panel>

For security reasons, we recommend that you keep your password confidential and do not share it with anyone. If you encounter any issues or have questions, feel free to reach out to our support team at [admin@sherazdev.com](mailto:admin@sherazdev.com).

Thank you for choosing sherazdev. We look forward to providing you with a seamless and secure experience on our platform.

Best regards,<br>
sherazdev Support Team
</x-mail::message>
