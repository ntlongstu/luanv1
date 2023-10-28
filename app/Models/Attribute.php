<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Attribute extends Model
{
    protected $guarded = [''];

    public $type = [
        1 => [
            'name' => "Xe đua",
            'class' => 'label label-info'
        ],
        2 => [
            'name' => 'Xe đạp thực dụng',
            'class' => 'label label-default' 
        ],
		3 => [
			'name' => 'Xe đạp leo núi',
			'class' => 'label label-primary'
		],
		4 => [
			'name' => 'Xe đạp đường phố ',
			'class' => 'label label-danger'
		],
		5 => [
			'name' => 'Xe đạp gấp',
			'class' => 'label label-info'
		]
    ];

    public function getType()
    {
        return Arr::get($this->type, $this->atb_type,"[N\A]");
    }

    public static function getListType()
	{
		$that = new self();
		return $that->type;
	}

    public function category()
    {
        return $this->belongsTo(Category::class,'atb_category_id');
    }
}
