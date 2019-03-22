<head>
    <link href="{{ asset('css/form.css') }}" rel="stylesheet">
</head>

@extends('layouts.app')

@section('content')
    @if ($errors->any())
        <div class="alert alert-danger"  style="margin-top: 2rem">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {{--
         formulaire de saisie d'un chapitre
         la fonction 'route' utilise un nom de route
         'csrf_field' ajoute un champ caché qui permet de vérifier
           que le formulaire vient du serveur.
      --}}
    <div class="creer">
    <h3>Création d'un chapitre de {{$histoire->titre}}</h3>


        <div class="containercreer">
    <form class="formcreer" action="{{route('enregistrer_chapitre', ['id'=>$histoire->id])}}" method="POST">
        {!! csrf_field() !!}

        <div class="form-group row">
            <label class="col-md-3 form-control-label" for="titre"><strong>Titre du chapitre: </strong></label>
            <div class="col-md-3">
                <div class="input-group date">
                    <input type="text" class="form-control" name="titre" id="titre"
                           value="{{ old('titre') }}" class="form-control"
                           placeholder="Entrez le titre ..">
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-3 form-control-label" for="titrecourt"><strong>Titre court: </strong></label>
            <div class="col-md-3">
                <div class="input-group titre_court">
                    <input type="text" class="form-control" name="titrecourt" id="titrecourt"
                           value="{{ old('titrecourt') }}" class="form-control"
                           placeholder="Entrez le titre court..">
                </div>
            </div>
        </div>

        <div class="textphoto">
            <label class="col-md-3 form-control-label" for="textarea-input"><strong>Photo :</strong></label>
            <div class="p">
                        <textarea name="photo" id="photo" rows="6" class="form-control"
                                  value="{{ old('photo') }}" placeholder="Entrez un URL.."></textarea>
            </div>
        </div>

        <div class="textech">
            {{-- texte --}}
            <label class="col-md-3 form-control-label" for="texte"><strong>Texte du chapitre </strong></label>
            <div class="col-md-4">
                        <textarea name="texte" id="texte" rows="1" class="form-control"
                                  value="{{ old('texte') }}" placeholder="Texte :"></textarea>
            </div>
        </div>

        <label class="col-md-2 form-control-label" for="select">
            <strong>Premier chapitre ?</strong>
        </label>
        <div class="chap1">
        <div class="btn-group btn-group-toggle" data-toggle="buttons" class="col-md-2">
            <label class="btn btn-outline-primary @premier(old('premier')) active @endpremier">
                <input type="radio" name="premier"  value = "1" id="premier-on"> Oui
            </label>
            <label class="btn btn-outline-primary @premier(old('premier'))active @endpremier">
                <input type="radio" name="premier" value = "0" id="premier-off"> Non
            </label>
        </div>
        </div>


        <div class="form-group row">
            <label class="col-md-3 form-control-label" for="question"><strong>Question : </strong></label>
            <div class="col-md-3">
                <div class="input-group question">
                    <input type="text" class="form-control" name="question" id="question"
                           value="{{ old('question') }}" class="form-control"
                           placeholder="Entrez votre question..">
                </div>
            </div>
        </div>



        <div class="submitcreer">
            <button class="btn btn-success" type="submit">Valider</button>
        </div>
        </div>
    </form>

@endsection
    </div>