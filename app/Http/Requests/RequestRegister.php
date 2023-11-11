<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequestRegister extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()//các cái muốn gàn buộc
    {
        return [
            'email'     => 'required|email|max:190|min:3|unique:users,email',//unique:users duy nhất, tìm ra iid
            'address'=>'nullable|min:20',
            'name'      => 'required|min:10|max:50',
            'phone'     => 'required|max:10|min:10|unique:users,phone',
            'password'  => 'required|min:8|confirmed'//confirmed kiểm tra pass có trùng khớp ko 
        ];
    }

    public function messages()
    {
        return [
            'name.required'         => 'Dữ liệu không được để trống',
            'name.max'=>'không lớn hơn 50 ký tự',
            'name.min'=>'không nhỏ hơn 10 ký tự',
            'email.required'         => 'Dữ liệu không được để trống',
            'email.unique'           => 'Dữ liệu đã tồn tại',
            'phone.unique'           => 'Dữ liệu đã tồn tại',
            'phone.required'         => 'Dữ liệu không được để trống',
            'phone.max'              => 'Số điện thoại phải có 10 ký tự',
            'phone.min'              => 'Số điện thoại phải có 10 ký tự',
            'password.required'      => 'Dữ liệu không được để trống',
            'password.min'=>'Phải lớn hơn 8 ký tự',
            'password.confirmed'=>'Nhập lại mật khẩu không trùng khớp'
        ];
    }
}
