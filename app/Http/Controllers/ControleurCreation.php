<?php

namespace App\Http\Controllers;

use App\Histoire;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ControleurCreation extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }


    //---------------------------------------------------------
    public function creerHistoire() {
        return view('creer_histoire');
    }

    public function enregistrerHistoire(Request $request) {
         $this->validate(
            $request,
            [
                'titre' => 'required',
                'pitch' => 'required',
                'photo' => 'nullable',
                'active' => 'required',
                'nom' => 'required',
            ]
        );
        $input = $request->only(['titre', 'pitch', 'photo','nom','active']);
        $user = DB::table('users')
                    ->select('id')->where('name',$input['nom'])->value('id');
        DB::table('histoire')->insert(
            [
                'titre' => $input['titre'],
                'pitch' => $input['pitch'],
                'photo' => $input['photo'],
                'user_id' => $user,
                'active' => (isset($input['accomplie']) ? 1 : 0),
            ]
        );

        return redirect('/');
    }


    //---------------------------------------------------------

    public function creerChapitre($id) {
        $histoire = Histoire::find($id);
        return view('creer_chapitre',['histoire'=>$histoire]);
    }

    public function enregistrerChapitre(Request $request, $id) {
        $this->validate(
            $request,
            [
                'titre' => 'nullable',
                'titrecourt'=> 'required',
                'photo' => 'nullable',
                'texte' => 'required',
                'premier'=>'required',
            ]
        );
        $input = $request->only(['histoire_id','titre','titrecourt', 'photo','texte','premier', 'question']);
        DB::table('chapitre')->insert(
            [
                'histoire_id'=> $id,
                'titre' => $input['titre'],
                'titrecourt' => $input['titrecourt'],
                'photo' => $input['photo'],
                'texte' => $input['texte'],
                'premier' => (isset($input['premier']) ? 1 : 0),
                'question'=> $input['question']
,
            ]
        );

        return redirect('/histoire');

    }


    //---------------------------------------------------------

    public function lierChapitre($id) {
        $histoire = Histoire::find($id);
        return view('lier_chapitre',["histoire"=>$histoire]);
    }

    public function enregistrerLiaison(Request $request) {
        $this->validate(
            $request,
            [
                'chapitre_source_id' => 'required',
                'chapitre_destination_id' =>'required',

            ]
        );

        $input = $request->only(['reponse','chapitre_source_id','chapitre_destination_id']);
        DB::table('suite')->insert(
            [
                'reponse' => $input['reponse'],
                'chapitre_source_id' => $input['chapitre_source_id'],
                'chapitre_destination_id' => $input['chapitre_destination_id'],
            ]
        );
        return redirect('/histoire');

    }



    public function mesHistoires() {
        $auteur = Auth::user();
        $histoires = Histoire::where('user_id', $auteur->id)->get();
        //$histoires = $auteur -> histoires();

        return view('mes_histoires', ['histoires' => $histoires]);
    }

    public function activeHistoire(Request $request){
        $histoires = Histoire::where('user_id',Auth::id())->get();
        $lesActives = $request->input();

        $ids=[];
        foreach ($histoires as $histoire){
            $ids[$histoire->id] = $histoire -> active;
        }
        $actives = [];
        foreach ($lesActives as $cle => $elt){
            if(substr($cle,0,7)=== 'active_'){
                $id = substr( $cle,7);
                $val = ($elt == 'on' ? 1:0);
                $actives[$id] = 1;
                $hist = Histoire::find($id);
                $hist->active = $val;
                $hist->save();
            }
        }
        foreach ($histoires as $histoire){
            if ($histoire ->active &&(!isset($actives[$histoire->id]))){
                $hist = Histoire::find($histoire ->id);
                $hist->active = 0;
                $hist->save();
            }
        }
        return redirect('/histoire');
    }
/*
    public function enregistrer_avis(Request $request) {
        $this->validate(
            $request,
            [
                'positif'=>'required'

            ]
        );

        $input = $request->only(['positif']);
        DB::table('avis')->insert(
            [
                'positif' => (isset($input['premier']) ? 1 : 0),
            ]
        );
        return redirect('/histoire');

    }*/

}
