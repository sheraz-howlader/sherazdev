<?php

namespace App\Exceptions;

use App\Http\Services\MailSender;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Support\Facades\Log;
use Throwable;

class Handler extends ExceptionHandler
{
    use MailSender;
    /**
     * The list of the inputs that are never flashed to the session on validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     */
    public function register(): void
    {
        $this->reportable(function (Throwable $e) {
            if (!config('app.debug')) {
                $this->sendExceptionEmail($e);
            }
        });
    }

    public function sendExceptionEmail(Throwable $exception): void
    {
        try {
            $content['mail_to']   = 'mdsherazhowlader@gmail.com';
            $content['subject']   = 'Server Error | Something went wrong';
            $content['template']  = 'emails.error';

            $content['message']   = $exception->getMessage();
            $content['url']       = request()->fullUrl();
            $content['route']     = request()?->route()?->getName() ?? 'Not Found';
            $content['method']    = request()->method();
            $content['ip']        = request()->ip();
            $content['input_data']= json_encode(request()->all(), JSON_PRETTY_PRINT);
            $content['error_type']= get_class($exception);
            $content['file']      = $exception->getFile();
            $content['line']      = $exception->getLine();
            $content['middlewares'] = json_encode(request()->route()?->gatherMiddleware()) ?? 'Not Found';
            $content['user_agent'] 	= request()->userAgent();
            $content['trace']     	= json_encode($exception->getTrace());

            $this->emailSend($content);

        } catch (Throwable $exception) {
            Log::error($exception);
        }
    }
}
