<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/', 'ControleurVisualisation@index')->name('home');

Route::get('/histoire/creer', 'ControleurCreation@creerHistoire')->name('creer_histoire');
Route::post('/histoire/enregistrer', 'ControleurCreation@enregistrerHistoire')->name('enregistrer_histoire');

Route::get('/histoire/{id}', 'ControleurVisualisation@lireHistoire')->name('lireHistoire');

Route::get('/histoire', 'ControleurCreation@mesHistoires')->name('mes_histoires');
Route::post('/histoire/activer','ControleurCreation@activeHistoire')->name('active_histoire');

Route::get('/chapitre/creer/{id}', 'ControleurCreation@creerChapitre')->name('creer_chapitre');
Route::post('/chapitre/enregistrer/{id}', 'ControleurCreation@enregistrerChapitre')->name('enregistrer_chapitre');

Route::get('/chapitre/lier/{id}', 'ControleurCreation@lierChapitre')->name('lier_chapitre');
Route::post('/chapitre/lier/enregistrer', 'ControleurCreation@enregistrerLiaison')->name('enregistrer_liaison');

Route::get('/chapitre/{id}', 'ControleurVisualisation@lireChapitres')->name('lireChapitres');
Route::get('/chapitreEnr/{id}', 'ControleurVisualisation@lireChapitreEnregistre')->name('lire_le_chapitre');

Route::post('/avis/{id}','ControleurCreation@enregistrer_avis')->name('enregistrer_avis');

Route::get('/recherche', 'ControleurVisualisation@recherche')->name('recherche');

/*Route::get('/histoire/{id}/jaime', 'ControleurVisualisation@jaime')->name('jaime');
Route::get('/histoire/{id}/jaimepas', 'ControleurVisualisation@jaimepas')->name('jaimepas');*/