<?php

namespace App\Http\Controllers\Admin;

use App\HelpersClass\Date;
use App\Http\Controllers\Controller;
use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Transaction;
use App\Models\Product;

class AdminStatisticalController extends Controller
{
	public function index()
    {
    	if (!check_admin()) return redirect()->route('get.admin.index');//check phân quyền admin admin đc xem doanh thu,nv ko được xem doanh thu

        $from = request()->get('from');
        $to = request()->get('to');

        //Tổng số đơn hàng
        $totalTransactions = \DB::table('transactions')
        ->where(function ($query) use ($to, $from) {
            if (!empty($from)) {
                $query->where('created_at', '>=', $from);
            }

            if (!empty($to)) {
                $query->where('created_at', '<=', $to);
            }
        })
        ->select('id')->count();//đếm số dòng trong bang transaction

        //Tổng thành viên
        $totalUsers = \DB::table('users')->select('id')
        ->where(function ($query) use ($to, $from) {
            if (!empty($from)) {
                $query->where('created_at', '>=', $from);
            }

            if (!empty($to)) {
                $query->where('created_at', '<=', $to);
            }
        })
        ->count();//đếm số dòng trong bang user

        // Tông sản phẩm
        $totalProducts = \DB::table('products')->select('id')
        ->where(function ($query) use ($to, $from) {
            if (!empty($from)) {
                $query->where('created_at', '>=', $from);
            }

            if (!empty($to)) {
                $query->where('created_at', '<=', $to);
            }
        })
        ->count();//đếm số dòng trong bang produst


        // Tông đánh giá
        $totalRatings = \DB::table('ratings')->select('id')
        ->where(function ($query) use ($to, $from) {
            if (!empty($from)) {
                $query->where('created_at', '>=', $from);
            }

            if (!empty($to)) {
                $query->where('created_at', '<=', $to);
            }
        })
        ->count();

        // Danh sách đơn hàng mới
        $transactions = Transaction::orderByDesc('id')
                        ->limit(10)
                        ->get();

        // Doanh thu ngày
		$totalMoneyDay = Transaction::whereDay('created_at',date('d'))
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');

		$mondayLast = Carbon::now()->startOfWeek();
		$sundayFirst = Carbon::now()->endOfWeek();
		$totalMoneyWeed = Transaction::whereBetween('created_at',[$mondayLast,$sundayFirst])
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');

		// doanh thu thag
		$totalMoneyMonth = Transaction::whereMonth('created_at',date('m'))
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');

		// doanh thu nam
		$totalMoneyYear = Transaction::whereYear('created_at',date('Y'))
			->where('tst_status',Transaction::STATUS_SUCCESS)
			->sum('tst_total_money');


       
       

        // Tiep nhan
        $transactionDefault = Transaction::where('tst_status',1)->select('id')->count();
        // dang van chuyen
        $transactionProcess = Transaction::where('tst_status',2)->select('id')->count();
        // Thành công
        $transactionSuccess = Transaction::where('tst_status',3)->select('id')->count();
        //Cancel
        $transactionCancel = Transaction::where('tst_status',-1)->select('id')->count();

        $statusTransaction = [
            [
                'Hoàn tất' , $transactionSuccess, false
            ],
            [
                'Đang vận chuyển' , $transactionProcess, false
            ],
            [
                'Tiếp nhận' , $transactionDefault, false
            ],
            [
                'Huỷ bỏ' , $transactionCancel, false
            ]
        ];

        $listDay = Date::getListDayInMonth();

        //Doanh thu theo tháng ứng với trạng thái đã xử lý
        $revenueTransactionMonth = Transaction::where('tst_status',3)
            ->whereMonth('created_at',date('m'))
            ->select(\DB::raw('sum(tst_total_money) as totalMoney'), \DB::raw('DATE(created_at) day'))
            ->groupBy('day')
            ->get()->toArray();

        //Doanh thu theo tháng ứng với trạng thái tiếp nhận
        $revenueTransactionMonthDefault = Transaction::where('tst_status',1)
            ->whereMonth('created_at',date('m'))
            ->select(\DB::raw('sum(tst_total_money) as totalMoney'), \DB::raw('DATE(created_at) day'))
            ->groupBy('day')
            ->get()->toArray();

        $arrRevenueTransactionMonth = [];
        $arrRevenueTransactionMonthDefault = [];
        foreach($listDay as $day) {
            $total = 0;
            foreach ($revenueTransactionMonth as $key => $revenue) {
                if ($revenue['day'] ==  $day) {
                    $total = $revenue['totalMoney'];
                    break;
                }
            }

            $arrRevenueTransactionMonth[] = (int)$total;

            $total = 0;
            foreach ($revenueTransactionMonthDefault as $key => $revenue) {
                if ($revenue['day'] ==  $day) {
                    $total = $revenue['totalMoney'];
                    break;
                }
            }
            $arrRevenueTransactionMonthDefault[] = (int)$total;
        }



        $viewData = [
            'totalTransactions'          => $totalTransactions,
            'totalUsers'                 => $totalUsers,
			'totalMoneyDay'				 => $totalMoneyDay,
			'totalMoneyWeed'		     => $totalMoneyWeed,
			'totalMoneyMonth'		     => $totalMoneyMonth,
			'totalMoneyYear'		     => $totalMoneyYear,
            'totalProducts'              => $totalProducts,
            'totalRatings'               => $totalRatings,
            'transactions'               => $transactions,
            'statusTransaction'          => json_encode($statusTransaction),
            'listDay'                    => json_encode($listDay),
            'arrRevenueTransactionMonth' => json_encode($arrRevenueTransactionMonth),
            'arrRevenueTransactionMonthDefault' => json_encode($arrRevenueTransactionMonthDefault)
        ];

        return view('admin.statistical.index', $viewData);
    }
}
