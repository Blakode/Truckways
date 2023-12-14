<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use Illuminate\Contracts\Mail\MailQueue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail as FacadesMail;
use Illuminate\Support\Facades\Mail;

class MailingController extends Controller
{
    function sendContactUs(Request $request) {
        
        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message
        ]; 

       
        Mail::to('info@truckways.ng')-> send(new ContactMail($data));
        return back()->with('Message_Sent', 'Sent Successfully');  
    }
}
