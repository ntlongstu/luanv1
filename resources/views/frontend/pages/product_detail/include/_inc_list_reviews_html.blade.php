@for ($i = 1 ; $i <= 10 ; $i ++)
    <div class="item">
        <p class="item_author">
            <span>{{ $review->user->name ?? "Admin" }}</span>
            <span class="item_success"><i class="la la-check-circle"></i> Đã mua hàng tại </span>
        </p>
        <div class="item_review">
            <span class="item_review">
                @for ($j = 1 ; $j <= 5 ; $j ++)
                    <i class="la la-star {{ $j <= rand(1,5) ? 'active' : '' }}"></i>
                @endfor
            </span>
            
            
        </div>
        <div class="item_footer">
            <span class="item_time"><i class="la la-clock-o"></i> đánh giá 1 ngày trước</span>
        </div>
    </div>
@endfor