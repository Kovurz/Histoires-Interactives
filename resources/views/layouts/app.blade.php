<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- Styles -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('css/svg.css') }}" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Shadows+Into+Light" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rock+Salt" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Rock+Salt|Walter+Turncoat" rel="stylesheet">

</head>
<body>
<header>

    <div id="logo">
    <a href="{{ url('/') }}">
        <img src="{{asset("images/logo.png")}}" alt="logo" width="100%">
    </a>

    </div>
    @include('layouts.nav')
</header>


<!-- Authentication Links -->


<div id="main">
    @yield('content')
</div>


@include('layouts.footer')

<!--Scripts -->

    <script src="{{ asset('js/jquery.js') }}"></script>
 <script type="text/javascript" src="{{asset('/js/boodRain.js')}}"></script>


</body>
</html>