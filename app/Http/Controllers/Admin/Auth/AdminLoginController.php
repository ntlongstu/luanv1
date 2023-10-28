<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class AdminLoginController extends Controller
{
    use AuthenticatesUsers;

    public function getLoginAdmin()
    {
        return view('admin.auth.login');
    }

    public function postLoginAdmin(Request $request)
    {
        if (\Auth::guard('admins')->attempt(['email' => $request->email, 'password' => $request->password])) {
            return redirect()->route('admin.statistical');
        }

        return redirect()->back()->with('danger', 'Thông tin tài khoản đăng nhập không chính xác.');
    }

    public function getLogoutAdmin()
    {
        \Auth::guard('admins')->logout();
        return redirect()->to('/');
    }
}
