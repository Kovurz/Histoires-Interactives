@extends('layouts.app')

@section('content')


<div class="lireHistoires">
    <div class="imgh"><img src="{{$histoire->photo}}" ></div>
    <div class="titreh">{{$histoire->titre}}</div>
</div>

<div class="pitchResume">
{{$histoire->pitch}}
</div>

    <div class="lienpitch">

        <a href="{{route('lire_le_chapitre', ['id'=>$histoire->premierChapitre()->id])}}">C'est parti !</a>


        <div class="like-unlike">
            <input type="radio" name="positif" id="positif-on" value="1" class="input-hidden" />
            <label for="positif-on"><img src="{{ asset('images/like.png') }}" alt="J'aime" /></label>

            <input type="radio" name="positif" id="positif-off" value="0" class="input-hidden" />
            <label for="positif-off"><img src="{{ asset('images/unlike.png') }}" alt="J'aime pas" /></label>
        </div>


    </div>


@endsection
