<?php

use App\Http\Controllers\AppController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\EvidenceController;
use App\Http\Controllers\HypothesisController;
use App\Http\Controllers\RuleController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('dashboard');
// });
Route::group(['middleware' => ['role:admin', 'auth']], function () {
  Route::resource('/user', UserController::class);
  Route::get('/setting', [AppController::class, 'setting'])->name('setting.index');
  Route::put('/setting', [AppController::class, 'setting_update'])->name('setting.update');
});

Route::group(['middleware' => ['role:admin,user', 'auth']], function () {
  Route::get('/dashboard', [AppController::class, 'dashboard'])->name('dashboard');
  Route::resource('/evidence', EvidenceController::class);
  Route::resource('/hypothesis', HypothesisController::class);
  Route::get('/rule', [RuleController::class, 'index'])->name('rule.index');
  Route::put('/rule/{rule}', [RuleController::class, 'update'])->name('rule.update');
  Route::get('/diagnosis', [AppController::class, 'diagnosis'])->name('diagnosis.index');
  Route::get('/profile', [AuthController::class, 'profile'])->name('profile.index');
  Route::put('/profile', [AuthController::class, 'profile_update'])->name('profile.update');
  Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
});

Route::middleware(['guest'])->group(function () {
  Route::get('/login', [AuthController::class, 'login'])->name('login');
  Route::post('/login_process', [AuthController::class, 'login_process'])->name('login_process');
});

Route::get('/', [AppController::class, 'index'])->name('index');
Route::get('/index', [AppController::class, 'index'])->name('index');
Route::get('/expert_system', [AppController::class, 'expert_system'])->name('expert_system');
Route::post('/expert_result', [AppController::class, 'expert_result'])->name('expert_result');