<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class VarifyEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * The demo object instance.
     *
     * @var Demo
     */
    public $prescription;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($prescription)
    {
        $this->prescription = $prescription;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
      
        return $this->from('mnumanbaig48@gmail.com')
            ->view('email.verify')
            // ->text('mail.prescription_plain')
            // ->attach(public_path('/images') . '/logo.png', [
            //     'as' => 'logo.png',
            //     'mime' => 'image/png',
            // ])
            ;
    }
}
