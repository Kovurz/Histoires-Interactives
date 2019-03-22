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
    <div class="meshistoires">

        <h2>Liste de vos histoires</h2>
            <form action="{{route('active_histoire')}}" method="post" id="form">
                {{csrf_field()}}
                    <table class="table">
                        <tr>
                            <th>Titre</th>
                            <th>Chapitres</th>
                            <th>Lier chapitres</th>
                            <th>Histoire Visible</th>
                        </tr>
                        @foreach ($histoires as $hist)
                            @if(\Illuminate\Support\Facades\Auth::user()->id == $hist->user_id)
                            <tr>
                                <td class="titreh2">{{$hist->titre}}</td>
                                <td><div class="button"><a href="{{ route('creer_chapitre',['idHistoire'=>$hist->id]) }}">
                                            <img src="{{ asset('images/add.png') }}" width="35" height="35" />
                                        </a></div></td>
                                <td><div class="button"><a href="{{ route('lier_chapitre',['idHistoire'=>$hist->id]) }}">
                                            <img src="{{ asset('images/link.png') }}" width="35" height="35" />
                                        </a></div></td>
                                <td>
                                    <div class="activer">
                                        <input type="checkbox" id="{{'active'.$hist->id}}" name="{{'active.'.$hist->id}}" {{($hist->active ? "checked" : "")}}>
                                    <label for="{{'active'.$hist->id}}">active</label>
                                    </div>
                                </td>
                            </tr>
                            @endif
                        @endforeach




                    </table>

                <br>
                <div>
                    <button class="btn btn-success" type="submit" id="bouton">Enregistrer Modifications</button>
                </div>



            </form>
        <div class="lienPitch">
            <p><a href="{{ route('creer_histoire') }}">Créer une nouvelle histoire</a></p>
        </div>
    </div>
@endsection
