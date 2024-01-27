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
            $content['class']     = get_class($exception);
            $content['message']   = $exception->getMessage();
            $content['file']      = $exception->getFile();
            $content['line']      = $exception->getLine();
            $content['trace']     = json_encode($exception->getTrace());
            $content['mail_to']   = 'mdsherazhowlader@gmail.com';
            $content['subject']   = 'Server Error | Something went wrong';
            $content['template']  = 'emails.error';
            $content['url']       = request()->fullUrl();
            $content['route']     = request()?->route()?->getName() ?? 'Not Found';
            $content['body']      = json_encode(request()->all(), JSON_PRETTY_PRINT);
            $content['ip']        = request()->ip();
            $content['method']    = request()->method();
            $content['user']      = auth()->user();

            $this->emailSend($content);

        } catch (Throwable $exception) {
            Log::error($exception);
        }

    }
}
