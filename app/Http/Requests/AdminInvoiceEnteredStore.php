<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminInvoiceEnteredStore extends FormRequest
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
        $thanhtien = request()->get('total_money');
        $thanhtien = str_replace('.', '', $thanhtien);
        $thanhtien = str_replace('VNĐ', '', $thanhtien);

        return [
            'ie_number' => 'required|integer|min:1',
            'ie_money' => 'required|numeric|min:1',
            'ie_the_advance' => 'required|numeric|min:1|max:' . $thanhtien,
        ];
    }

    public function messages()
    {
        return [
            'ie_number.integer'         => 'Số lượng là số nguyên',
        ];
    }
}
