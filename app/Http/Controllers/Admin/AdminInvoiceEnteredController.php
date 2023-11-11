<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminInvoiceEnteredStore;
use App\Models\Category;
use App\Models\InvoiceEntered;
use App\Models\Menu;
use App\Models\Product;
use App\Models\Import_histories;
use App\Models\Supplier;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use SebastianBergmann\Environment\Console;
//Hóa đơn
class AdminInvoiceEnteredController extends Controller
{
    public function index()
    {
        $invoiceEntered = InvoiceEntered::with('suppliere','product')->orderByDesc('id')
            ->paginate(10);

        $viewData = [
            'invoiceEntered' => $invoiceEntered
        ];

        return view('admin.invoice_entered.index', $viewData);
    }

    public function hansudung($id)
    {
        $invoiceEntered = InvoiceEntered::where('ie_product_id',$id)->get();
        $datenow = date('Y-m-d 00:00:00');  
        // $date_now->toDateTimeString();
        return view('admin.inventory.hansudung', compact('invoiceEntered','datenow'));
    }

    public function create()
    {
    	$suppliere = Supplier::all();
    	$products = Product::select('id','pro_name','pro_price','pro_number')->orderByDesc('id')->get();

        return view('admin.invoice_entered.create', compact('suppliere','products'));
    }

    public function store(AdminInvoiceEnteredStore $request)
    {
        // $data               = $request->except('_token');
        // $data['created_at'] =  Carbon::now();
        // $data['ie_total_money'] = $request->ie_number * $request->ie_money;
        // InvoiceEntered::insert($data);

        $data1 = new InvoiceEntered();
        $data1['created_at'] =  Carbon::now();
        $tongtien = $request->ie_number * $request->ie_money;
        $data1['ie_total_money'] = $tongtien;
        $data1['ie_suppliere'] = $request->ie_suppliere;
        $data1['ie_product_id'] = $request->ie_product_id;
        $products = Product::find($request->ie_product_id);
        $products['pro_number_import'] = $products->pro_number_import + $request->ie_number;
        $products['pro_number'] = $products->pro_number + $request->ie_number;
        $data1['ie_number_sold'] = 0;
        $data1['ie_money'] = $request->ie_money;
        $data1['ie_status'] = 0;
        $data1['ie_number'] = $request->ie_number;

        $thanhtoan = $request->ie_the_advance;
        if($thanhtoan>=$tongtien){
            $data1['ie_the_advance'] = $tongtien;
        }
        if($thanhtoan<$tongtien){
            $data1['ie_the_advance'] = $thanhtoan;
        }
        
        $data1->save();
        $products->save();
        $history = new Import_histories();
        $history['id_import'] = $data1->id;
        $history['thanhtoan'] = $data1->ie_the_advance;
        $history->save();

       
        return redirect()->back()->with('success', 'Thêm hành công dữ liệu');
    }

    public function edit($id)
    {
        $histories = Import_histories::where('id_import','=',$id)->get();
        $invoiceEntered = InvoiceEntered::find($id);
		$suppliere = Supplier::all();
		$products = Product::select('id','pro_name','pro_price','pro_number')->orderByDesc('id')->get();
		return view('admin.invoice_entered.update', compact('suppliere','invoiceEntered','products','histories'));
    }

    public function update(Request $request, $id)
    {
        $update = InvoiceEntered::find($id);
        $update->ie_the_advance = $update->ie_the_advance + $request->ie_the_advance;
        $update->save();
        $history = new Import_histories();
        $history['id_import'] = $update->id;
        $history['thanhtoan'] =  $request->ie_the_advance;;
        $history->save();
        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }

    public function active($id)
    {
        $menu               = Menu::find($id);
        $menu->mn_status = ! $menu->mn_status;
        $menu->save();

        return redirect()->back();
    }

    public function hot($id)
    {
        $menu               = Menu::find($id);
        $menu->mn_hot = ! $menu->mn_hot;
        $menu->save();

        return redirect()->back();
    }

    public function delete($id)
    {
        $invoiceEntered = InvoiceEntered::find($id);
        if ($invoiceEntered) $invoiceEntered->delete();
        return redirect()->back();
    }
}
