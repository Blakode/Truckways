<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="facebook-domain-verification" content="ab6qiwz8pksrs3armgq8v0wysiy78v" />
        <title>{{ config('app.name') }} - @yield('title')</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
      
        <link rel="stylesheet" href="/css/app.css">
        <link rel="stylesheet" href="/css/styles.css">
        <link rel="stylesheet" href="/css/lightbox.css">
            <style>
            /* whatsap floating icon  */
            .float{
            position:fixed;
            width:60px;
            height:60px;
            bottom:40px;
            right:40px;
            background-color:#25d366;
            color:#FFF;
            border-radius:50px;
            text-align:center;
            font-size:30px;
            box-shadow: 2px 2px 3px #999;
            z-index:100;
            }

            .my-float{
            margin-top:16px;
            }
            /* ================================ */
            </style>
        <!-- Facebook Pixel Code -->
        <script>
            !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,document,'script','https://connect.facebook.net/en_US/fbevents.js'); 
            fbq('init', '3636249593265828'); 
            fbq('track', 'PageView');
        </script>
        <noscript> 
            <img height="1" width="1" src="https://www.facebook.com/tr?id=3636249593265828&ev=PageView&noscript=1"/>
        </noscript>
        <!-- End Facebook Pixel Code -->
    </head>
    <body>
        @include('layouts.navbar')
        @include('layouts.banners')
        <main>
            @yield('content')
        </main>
        @include('layouts.footer')

        <a href="https://wa.link/hb5hl8" class="float" target="_blank">
            <i class="fa fa-whatsapp my-float"></i>
        </a>

    </body>
    @section('scripts')
        <script src="/js/app.js" defer></script>
        <script src="/js/mdb.min.js" defer></script>
        <script src="/js/lightbox.js" defer></script>
    @show
</html>
