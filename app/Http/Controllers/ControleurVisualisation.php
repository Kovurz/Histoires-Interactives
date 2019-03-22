<?php

namespace App\Http\Controllers;

use App\Histoire;
use App\Chapitre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class ControleurVisualisation extends Controller
{
    public function index()
    {

        $histoires = Histoire::all();
        return view("index", ['histoires' => $histoires]);

    }

    //---------------------------------------------------------


    public function lireHistoire($id)
    {
        $histoire = Histoire::find($id);
        if ($histoire == false) {
            abort(404);
        } else {
            return view('lire_histoire', ['histoire' => $histoire]);
        }
    }

    public function lireChapitres($id)
    {
        $chapitre = Chapitre::find($id);

        if(Auth::check()){
            $maxNumSeq = DB::table('lecture')
                ->where('histoire_id','=',$chapitre['histoire_id'])
                ->where('user_id','=',Auth::id())
                ->max('num_sequence');


            $numsequence=$maxNumSeq+1;
            DB::insert('insert into lecture values (default,?,?,?,?,null,NULL)',[Auth::id(),$chapitre->histoire_id,$id,$numsequence]);}

        if ($chapitre == false) {
            abort(404);
        } else {
            $lecture = DB::select('select titrecourt from chapitre join lecture on chapitre.id=lecture.chapitre_id where lecture.user_id=? and lecture.histoire_id=? ',[Auth::id(),$chapitre->histoire_id]);
            if ($chapitre->question==null){
                DB::delete('delete from lecture where user_id=? and histoire_id=?',[Auth::id(),$chapitre->histoire_id]);
            }
            return view('lire_chapitre', ['chapitre' => $chapitre,'lecture'=>$lecture]);
        }
    }

    public function lireChapitreEnregistre($id)
    {
        $chapitre = Chapitre::find($id);
        $lecture = DB::select('select titrecourt from chapitre join lecture on chapitre.id=lecture.chapitre_id where lecture.user_id=? and lecture.histoire_id=? ',[Auth::id(),$chapitre->histoire_id]);

        if(Auth::check()) {
            $maxNumSeq = DB::table('lecture')
                ->where('histoire_id', '=', $chapitre['histoire_id'])
                ->where('user_id', '=', Auth::id())
                ->max('num_sequence');

            if (count($maxNumSeq) == 0) {
                $numsequence = 1;
                DB::insert('insert into lecture values (default,?,?,?,?,null,NULL)', [Auth::id(), $chapitre->histoire_id, $id, $numsequence]);

            } else {
                $chapEnre = DB::table('lecture')
                    //->select('chapitre_id')
                    ->where([['user_id', '=', Auth::id()], ['histoire_id', '=', $chapitre->histoire_id], ['num_sequence', '=', $maxNumSeq],])->first();

                // ===>>>>               il faillait mettre ->first() et select ne fonctionne pas , du coup on récupère tout <<<=========

                /*  echo $chapitre->histoire_id;
                echo ($maxNumSeq);
                echo Auth::id();
                echo count($chapEnre); */

                // tester si cela fonctionne .... bon courage !!!


                $chapitre_id = $chapEnre->chapitre_id;
                $chapitreEnre = Chapitre::find($chapitre_id);



                return view('lire_chapitre', ['chapitre' => $chapitreEnre,'lecture'=>$lecture]);
            }
        }

        if ($chapitre == false) {
            abort(404);
        } else {
            return view('lire_chapitre', ['chapitre' => $chapitre,'lecture'=>$lecture]);
        }
    }

    public function recherche(){
        $histoires = Histoire::all();
        $var=DB::table('histoire')->join('users','users.id','=','histoire.user_id')
            ->where('titre','LIKE','%'.$_GET['recherche'].'%')
            /*orWhere('name','LIKE','%'.$_GET['recherche'].'%')*/
            ->select ('histoire.id')
            ->get();

        $histoires=array();
        foreach($var as $hist){
            $histoires[]=Histoire::where('id',$hist->id)->first();
        }
        return view("index",array('histoires'=>$histoires,'home'=>1));
    }
}
