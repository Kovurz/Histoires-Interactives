<head>
    <link href="{{ asset('css/form.css') }}" rel="stylesheet">
</head>

@extends('layouts.app')

@section('content')

    {{-- Affiche les erreurs --}}
    <div class="lier">
    @if ($errors->any())
        <div class="alert alert-danger"  style="margin-top: 2rem">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <h3>Lier des chapitres de {{$histoire->titre}}</h3>
<div class ="container">
    <form class="formlier" action="{{route('enregistrer_liaison')}}" method="POST">
    {!! csrf_field() !!}
<div class="flex">
        <div class="form-group row">
                <label class="col-md-3 form-control-label"></label>
                <div class="col-md-4">
                    <h5><i class="far fa-edit"></i>Chapitre origine </h5>
                        <select name="chapitre_source_id" id="chapitre_source_id" rows="1" class="form-control">
                            @foreach($histoire->chapitres as $chapitre)
                                  <option value="{{$chapitre->id}}">{{$chapitre->titrecourt}}</option>
                            @endforeach
                        </select>
                </div>
            </div>

        <div class="form-group row">
            <label class="col-md-3 form-control-label"></label>
            <div class="col-md-4">
                <h5><i class="far fa-edit"></i>Chapitre suivant </h5>
                <select name="chapitre_destination_id" id="chapitre_destination_id" rows="1" class="form-control">
                    @foreach($histoire->chapitres as $chapitre)
                        <option value="{{$chapitre->id}}">{{$chapitre->titrecourt}}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-2 form-control-label"></label>
            <div class="col-md-9">
                <h5><i class="far fa-edit"></i>Réponse </h5>
                        <input name="reponse" id="reponse" rows="6" class="form-control"
                                  value="{{ old('reponse') }}" placeholder="Votre réponse .... "></input>
            </div>
        </div>
        <div class="text-center">
            <button class="submit" type="submit">Valider</button>
        </div>
</div>
    </form>
</div>
@endsection
</div>