@extends('layouts.app')

@section('content')

     <ol>
        @for($i=0;$i<sizeof($lecture);$i++)
             <li>{{--<a href="{{route('lireChapitres',['chapitre'=>$lecture[$i]->id])}}">--}}{{$lecture[$i]->titrecourt}}</li>
        @endfor
    </ol>
    <div class="lireHistoires">
        <div class="imgh" ><img src="{{$chapitre->photo}}" ></div>
        <div class="titreh">{{ $chapitre->titrecourt }}</div>
    </div>


     <div class="pitch">
         {!! $chapitre->texte !!}
     </div>
     <div class="pitch pitchQuestion">
         {!! $chapitre->question !!}
     </div>

    @foreach($chapitre-> suites as $suite)
    <div class="reponses">
            <a href="{{route('lireChapitres',['chapitre'=>$suite->id])}}">{{$suite->pivot->reponse}}</a>
    </div>
    @endforeach
    <div>
        @if($chapitre->question==NULL)
            <label class="btn btn-outline-primary">
                <button type="submit" class="btn btn-default" href='{{route('lireHistoire',['histoire'=>$chapitre->histoire_id])}}'>Retour</button>
            </label>
        @endif
    </div>



@endsection

