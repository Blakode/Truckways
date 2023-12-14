@extends('layouts.app')
@section('title', 'Contact Us')
@section('bg', 'https://res.cloudinary.com/ifedeejoy/image/upload/v1593688512/Map_isjozu.png')
@section('content')

<section class="latest-loads animated fadeInUp delay-1s mt-5">
	<div class="container">
        <div class="login-form col-sm-6 mx-auto">
            <p class="text-center"><b>Contact Us</b></p>

              @if (Session::has('Message_Sent'))
                <div class='alert-success' role='alert'>
                {{Session::get('Message_Sent')}}
                </div>
            @endif

            <form method="POST" class="mt-5" action="{{Route('contact.us')}}" enctype="multipart/form-data">
                <div class="md-form mb-3">
                    <img src="/images/username.svg" class="prefix" alt="Username">
                    <input type="name" class="form-control" name="name" id="name" autocomplete="username"  placeholder="Name">
                    <label for="name"> </label>
                </div>
                   <div class="md-form mb-3">
                    <img src="/images/envelope.svg" class="prefix" alt="Username">
                    <input type="name" class="form-control" name="email" id="email" autocomplete="username"  placeholder="email">
    
                </div>
                <div class="md-form mb-3">
                    <img src="/images/envelope.svg" class="prefix" alt="Email">
                    <input type="name" class="form-control" name="subject" id="name" autocomplete="subject"  placeholder="subject">
         
                </div>
                        
                <div class="md-form mb-5">
                    <img src="/images/envelope.svg" class="prefix" alt="contact us subject">
                    <textarea placeholder="Body" type="body" class="form-control" name="message" id="message" autcomplete="contact us body" >
                    </textarea>
                </div>
         
                <div class="text-center mb-5">
                    <button type='submit' class="long-btn waves-effect waves-dark p-2">Submit</button>
                </div>
               
            </form>
        </div>
	</div>
</section>
@endsection
@section('scripts')
	@parent
@endsection