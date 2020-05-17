<?php
namespace App\Notifications;
use App\User;
use Illuminate\Support\Facades\Lang;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Notifications\Messages\MailMessage;

class PasswordReset extends ResetPassword
{
    /**
     * Build the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        if (static::$toMailCallback) {
            return call_user_func(static::$toMailCallback, $notifiable, $this->token);
        }
        //$users = User::where('email', $this->email)->first();
        //$username = $users->name;
        $link = url( "/password/reset/?token=" . $this->token );


         
        return (new MailMessage)
            ->view(
                'emails.loginUpdateMails', ['link' => $link]
            )
      /*->view('emails.loginUpdateMails')->with('data',$data);
      ->line( "Hi , We’re glad to have you onboard! Kindly use the link below to reset your Password" )
      ->action( 'Reset Password', $link )
      ->attach('reset.attachment')
      ->line( 'Thank you!' )*/
      ->subject(Lang::getFromJson('Reset Password Notification'));
    }
}