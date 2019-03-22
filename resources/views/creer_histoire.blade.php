<head>
    <link href="{{ asset('css/histoire.css') }}" rel="stylesheet">
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
         formulaire de sain 'route' utilise un nom de route
         'csrf_field' ajoute un champ caché qui permet de vérifier
           que le formulaire vient du serveursie d'une tâche
         la fonctio.
      --}}

    <form class="formcreerh"action="{{route('enregistrer_histoire')}}" method="POST">
        {!! csrf_field() !!}
        <div class="text-center" style="margin-top: 2rem">
            <h3><i class="far fa-edit"></i> Création d'une histoire</h3>

        </div>
        <div class="form-group row">
            {{--le titre--}}
            <label class="col-md-3 form-control-label" for="titre"><strong>Titre
                    : </strong></label>
            <div class="col-md-3">
                <div class="input-group date">
                            <span class="input-group-addon">
                                <i class="far fa-calendar"></i>
                            </span>
                    <textarea name="titre" id="titre" rows="1" class="form-control"
                              value="{{ old('titre') }}" placeholder="Titre :"></textarea>
                </div>
            </div>
        </div>
        <div class="form-group row">
            {{-- le pitch  --}}
            <label class="col-md-3 form-control-label" for="pitch"><strong>Pitch : </strong></label>
            <div class="col-md-4">
                        <textarea name="pitch" id="pitch" rows="1" class="form-control"
                                  value="{{ old('pitch') }}" placeholder="Pitch :"></textarea>
            </div>
        </div>

        <div class="photoh">
            {{--la photo--}}
            <label class="col-md-3 form-control-label" for="textarea-input">Photo :</label>
            <div class="col-md-9">
                <!--<input type="file" name="photo">-->
                        <textarea name="photo" id="photo" rows="6" class="form-control"
                                  value="{{ old('photo') }}" placeholder="photo.."></textarea>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-3 form-control-label" for="textarea-input">Nom d'utilisateur :</label>
            <div class="col-md-4">
                <textarea name="nom" id="nom" rows="6" class="form-control"
                                  value="{{ old('nom') }}"></textarea>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-3 form-control-label" for="textarea-input">Activer l'histoire ? </label>
            <div class="btn-group btn-group-toggle" data-toggle="buttons" class="col-md-2">
                    <label class="btn btn-outline-primary @active(old('active')) active @endactive">
                        <input type="radio" name="active"  value = 0 id="active-on"> Oui
                    </label>
                    <label class="btn btn-outline-primary @active(old('active')) active @endactive">
                        <input type="radio" name="active" value = 1 id="active-off"> Non
                    </label>
                </div>
        </div>


        <div class="text-center">
            <button class="btn btn-success" type="submit">Valider</button>
        </div>
    </form>

@endsection