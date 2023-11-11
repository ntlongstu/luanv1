<div class="col-md-12">
	@include('components.int_message')
</div>
<form role="form" action="" method="POST">
	@csrf
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
			<label for="name">Nhà cung cấp <span class="text-danger">(*)</span></label>
			<select name="ie_suppliere" class="form-control">
				@foreach($suppliere as $item)
				<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_suppliere ?? 0) ==  $item->id ? "selected='selected'" : "" }}>{{ $item->sl_name }}</option>
				@endforeach
			</select>
		</div>
	</div>
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-4">
				<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
					<label for="name">Sản phẩm<span class="text-danger">(*)</span></label>
					<select name="ie_product_id" class="form-control js-products">
						@foreach($products as $item)
						<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_product_id ?? 0) ==  $item->id ? "selected='selected'" : "" }}>Name : {{ $item->pro_name }}
							- Giá : {{ number_format($item->pro_price,0,',','.') }}
							- Số lượng : {{ $item->pro_number }}
							- Tổn tiền : {{ number_format($item->pro_price * $item->pro_number,0,',','.') }}
						</option>
						@endforeach
					</select>

				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Số lượng nhập <span class="text-danger">(*)</span></label>
					<input type="text" class="form-control" id="qty" value="{{ old('ie_number',$invoiceEntered->ie_number ?? '') }}" name="ie_number" placeholder="10 ...">
					<p style="color: red;">{{ $errors->first('ie_number') }}</p>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Giá nhập <span class="text-danger">(*)</span></label>
					<input type="text" class="form-control js-money-input" value="{{ old('ie_money',$invoiceEntered->ie_money ?? '') }}" name="ie_money" placeholder="10000 ...">
					<p style="color: red;">{{ $errors->first('ie_money') }}</p>
				</div>
			</div>
			
		</div>
	</div>


	<!-- <div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">Số lượng nhập <span class="text-danger">(*)</span></label>
			<input type="number" class="form-control" id="qty" required value="{{ old('ie_number',$invoiceEntered->ie_number ?? 1) }}" name="ie_number" placeholder="10 ...">
		</div>
	</div> -->
	<!-- <div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">Gía nhập <span class="text-danger">(*)</span></label>
			<input type="number" required class="form-control js-money-input" value="{{ old('ie_money',$invoiceEntered->ie_money ?? 0) }}" name="ie_money" placeholder="10000 ...">
		</div>
	</div> -->
	<div class="col-sm-8">
		<div class="form-group">
			<label for="name">Thành tiền <span class="text-danger">(*)</span></label>
			@php
				 $thanhtien = old('total_money') ?? 0;
				$thanhtien = str_replace('.', '', $thanhtien);
				$thanhtien = str_replace('VNĐ', '', $thanhtien);
				$thanhtien = (double) $thanhtien;
			@endphp

			<input type="text" readonly class="form-control" id="total_money" value="{{ number_format($thanhtien,0,',','.') }} VNĐ" name="total_money" placeholder="20.000.000">
		</div>
	</div>
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_the_advance') ? 'has-error' : '' }}">
			<label for="name">Số tiền đã thanh toán <span class="text-danger">(*)</span></label>
			<input type="number" class="form-control" value="{{ old('ie_the_advance' ,$invoiceEntered->ie_the_advance ?? '') }}" name="ie_the_advance" placeholder="20000 ...">
			<p style="color: red;">{{ $errors->first('ie_the_advance') }}</p>
		</div>
	</div>
	<div class="col-sm-8">
		<div class="box-footer text-center">
			<a href="{{ route('admin.invoice_entered.index') }}" class="btn btn-danger">
				Quay lại <i class="fa fa-undo"></i></a>
			<button type="submit" id="btn-submit-invoice" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
		</div>
	</div>
</form>