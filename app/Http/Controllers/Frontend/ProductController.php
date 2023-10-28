<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attribute;
use App\Models\Product;

class ProductController extends FrontendController
{
    public function index(Request $request)
    {
        $paramAtbSearch =  $request->except('price','page','k','country','rv','sort');
        $paramAtbSearch =  array_values($paramAtbSearch);

        $products       = Product::where('pro_active',1);

        if (!empty($paramAtbSearch)) {
            $products->whereHas('attributes', function($query) use($paramAtbSearch){
                $query->whereIn('pa_attribute_id', $paramAtbSearch);
            });
        }

        if ($name = $request->k) $products->where('pro_name','like','%'.$name.'%');
        if ($country = $request->country) $products->where('pro_country',$country);

        if ($request->price) {
            $price =  $request->price;
            if ($price == 6) {//lọc giá lớn hơn 10tr id==6
                $products->where('pro_price','>', 10000000);
            }else{//gộp lại dòng else 1*4tr,2*4tr,3*4tr,4*4tr,5*4tr
                $products->where('pro_price','<=', 4000000 * $price);
            }
        }

        if ($request->k) $products->where('pro_name','like','%'.$request->k.'%');//tìm theo key
        if ($request->rv) $products->where('pro_review_star','>',$request->rv);//review
        if ($request->sort) $products->orderBy('id',$request->sort);// sắp xếp

        $products =  $products->select('id','pro_name','pro_slug','pro_sale','pro_avatar','pro_number','pro_price','pro_review_total','pro_review_star')
            ->paginate(12);//lấy phân trang 12 thằng nằm trên 1 trang

        $attributes =  $this->syncAttributeGroup();

        $modelProduct = new Product();

        $viewData = [
            'attributes'    => $attributes,
            'products'      => $products,
            'query'         => $request->query(),
            'country'       => $modelProduct->country,
            'link_search'   => request()->fullUrlWithQuery(['k' => \Request::get('k')])
        ];

        return view('frontend.pages.product.index', $viewData);
    }
}
