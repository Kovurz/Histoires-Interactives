@extends('layouts.app')

@section('content')
    <div class="TopHistoire">
        @foreach($histoires as $histoire)

            @if($histoire->active==1  )
                <div class="divHistoires">

                    <a href='histoire/{{$histoire->id}}'>
                        <div class="imgh"><img src="{{$histoire->photo}}"></div>
                    </a>
                    <div class="titreh">{{$histoire->titre}}

                    </div>

                </div>

            @elseif(Auth::user() && $histoire->user_id==(Auth::user()->id))
                <div class="divHistoires">


                    <a href='histoire/{{$histoire->id}}'>
                        <div class="imgh"><img src="{{$histoire->photo}}"></div>
                    </a>
                    <div class="titreh">{{$histoire->titre}}

                    </div>

                </div>
            @endif


        @endforeach
    </div>
@endsection

