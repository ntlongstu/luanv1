<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Ngôn ngữ thông báo lỗi của Validator
    |--------------------------------------------------------------------------
    |
    | Các dòng ngôn ngữ dưới đây chứa các thông báo lỗi mặc định được sử dụng bởi
    | lớp validator. Một số quy tắc này có nhiều phiên bản khác nhau như
    | quy tắc kích thước. Bạn có thể điều chỉnh mỗi thông báo ở đây.
    |
    */

    'accepted' => 'Trường :attribute phải được chấp nhận.',
    'active_url' => 'Trường :attribute không phải là URL hợp lệ.',
    'after' => 'Trường :attribute phải là ngày sau ngày :date.',
    'after_or_equal' => 'Trường :attribute phải là ngày sau hoặc bằng ngày :date.',
    'alpha' => 'Trường :attribute chỉ có thể chứa chữ cái.',
    'alpha_dash' => 'Trường :attribute chỉ có thể chứa chữ cái, số, dấu gạch ngang và dấu gạch dưới.',
    'alpha_num' => 'Trường :attribute chỉ có thể chứa chữ cái và số.',
    'array' => 'Trường :attribute phải là một mảng.',
    'before' => 'Trường :attribute phải là ngày trước ngày :date.',
    'before_or_equal' => 'Trường :attribute phải là ngày trước hoặc bằng ngày :date.',
    'between' => [
        'numeric' => 'Trường :attribute phải nằm giữa :min và :max.',
        'file' => 'Trường :attribute phải nằm giữa :min và :max kilobytes.',
        'string' => 'Trường :attribute phải nằm giữa :min và :max ký tự.',
        'array' => 'Trường :attribute phải có giữa :min và :max phần tử.',
    ],
    'boolean' => 'Trường :attribute phải là true hoặc false.',
    'confirmed' => 'Xác nhận :attribute không khớp.',
    'date' => 'Trường :attribute không phải là ngày tháng hợp lệ.',
    'date_equals' => 'Trường :attribute phải là ngày bằng :date.',
    'date_format' => 'Trường :attribute không khớp với định dạng :format.',
    'different' => 'Trường :attribute và :other phải khác nhau.',
    'digits' => 'Trường :attribute phải có :digits chữ số.',
    'digits_between' => 'Trường :attribute phải có giữa :min và :max chữ số.',
    'dimensions' => 'Trường :attribute có kích thước hình ảnh không hợp lệ.',
    'distinct' => 'Trường :attribute có giá trị trùng lặp.',
    'email' => 'Trường :attribute phải là địa chỉ email hợp lệ.',
    'ends_with' => 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values.',
    'exists' => 'Giá trị đã chọn trong :attribute không hợp lệ.',
    'file' => 'Trường :attribute phải là một tập tin.',
    'filled' => 'Trường :attribute phải có giá trị.',
    'gt' => [
        'numeric' => 'Trường :attribute phải lớn hơn :value.',
        'file' => 'Trường :attribute phải lớn hơn :value kilobytes.',
        'string' => 'Trường :attribute phải có độ dài lớn hơn :value ký tự.',
        'array' => 'Trường :attribute phải có nhiều hơn :value phần tử.',
    ],
    'gte' => [
        'numeric' => 'Trường :attribute phải lớn hơn hoặc bằng :value.',
        'file' => 'Trường :attribute phải lớn hơn hoặc bằng :value kilobytes.',
        'string' => 'Trường :attribute phải có độ dài lớn hơn hoặc bằng :value ký tự.',
        'array' => 'Trường :attribute phải có :value phần tử hoặc nhiều hơn.',
    ],
    'image' => 'Trường :attribute phải là một hình ảnh.',
    'in' => 'Giá trị đã chọn trong :attribute không hợp lệ.',
    'in_array' => 'Trường :attribute không tồn tại trong :other.',
    'integer' => 'Trường :attribute phải là một số nguyên.',
    'ip' => 'Trường :attribute phải là địa chỉ IP hợp lệ.',
    'ipv4' => 'Trường :attribute phải là địa chỉ IPv4 hợp lệ.',
    'ipv6' => 'Trường :attribute phải là địa chỉ IPv6 hợp lệ.',
    'json' => 'Trường :attribute phải là một chuỗi JSON hợp lệ.',
    'lt' => [
        'numeric' => 'Trường :attribute phải nhỏ hơn :value.',
        'file' => 'Trường :attribute phải nhỏ hơn :value kilobytes.',
        'string' => 'Trường :attribute phải có độ dài nhỏ hơn :value ký tự.',
        'array' => 'Trường :attribute phải có ít hơn :value phần tử.',
    ],
    'lte' => [
        'numeric' => 'Trường :attribute phải nhỏ hơn hoặc bằng :value.',
        'file' => 'Trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.',
        'string' => 'Trường :attribute phải có độ dài nhỏ hơn hoặc bằng :value ký tự.',
        'array' => 'Trường :attribute không được có nhiều hơn :value phần tử.',
    ],
    'max' => [
        'numeric' => 'Trường :attribute không được lớn hơn :max.',
        'file' => 'Trường :attribute không được lớn hơn :max kilobytes.',
        'string' => 'Trường :attribute không được lớn hơn :max ký tự.',
        'array' => 'Trường :attribute không được có nhiều hơn :max phần tử.',
    ],
    'mimes' => 'Trường :attribute phải là một tập tin loại: :values.',
    'mimetypes' => 'Trường :attribute phải là một tập tin loại: :values.',
    'min' => [
        'numeric' => 'Trường :attribute phải ít nhất là :min.',
        'file' => 'Trường :attribute phải ít nhất là :min kilobytes.',
        'string' => 'Trường :attribute phải ít nhất là :min ký tự.',
        'array' => 'Trường :attribute phải có ít nhất :min phần tử.',
    ],
    'not_in' => 'Giá trị đã chọn trong :attribute không hợp lệ.',
    'not_regex' => 'Định dạng của :attribute không hợp lệ.',
    'numeric' => 'Trường :attribute phải là một số.',
    'password' => 'Mật khẩu không đúng.',
    'present' => 'Trường :attribute phải hiện diện.',
    'regex' => 'Định dạng của :attribute không hợp lệ.',
    'required' => 'Trường :attribute là bắt buộc.',
    'required_if' => 'Trường :attribute là bắt buộc khi :other là :value.',
    'required_unless' => 'Trường :attribute là bắt buộc trừ khi :other nằm trong :values.',
    'required_with' => 'Trường :attribute là bắt buộc khi :values hiện diện.',
    'required_with_all' => 'Trường :attribute là bắt buộc khi :values hiện diện.',
    'required_without' => 'Trường :attribute là bắt buộc khi :values không hiện diện.',
    'required_without_all' => 'Trường :attribute là bắt buộc khi không có :values hiện diện.',
    'same' => 'Trường :attribute và :other phải khớp nhau.',
    'size' => [
        'numeric' => 'Trường :attribute phải là :size.',
        'file' => 'Trường :attribute phải là :size kilobytes.',
        'string' => 'Trường :attribute phải có độ dài là :size ký tự.',
        'array' => 'Trường :attribute phải chứa :size phần tử.',
    ],
    'starts_with' => 'Trường :attribute phải bắt đầu bằng một trong những giá trị sau: :values.',
    'string' => 'Trường :attribute phải là một chuỗi.',
    'timezone' => 'Trường :attribute phải là múi giờ hợp lệ.',
    'unique' => 'Trường :attribute đã được sử dụng.',
    'uploaded' => 'Tải lên :attribute thất bại.',
    'url' => 'Định dạng của :attribute không hợp lệ.',
    'uuid' => 'Trường :attribute phải là một UUID hợp lệ.',

    /*
    |--------------------------------------------------------------------------
    | Ngôn ngữ thông báo lỗi tùy chỉnh
    |--------------------------------------------------------------------------
    |
    | Ở đây, bạn có thể chỉ định các thông báo lỗi tùy chỉnh cho các thuộc tính bằng cách sử dụng
    | quy ước "attribute.rule" để đặt tên cho các dòng. Điều này giúp chúng ta nhanh chóng
    | chỉ định một dòng ngôn ngữ cụ thể cho một quy tắc thuộc tính nhất định.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Ngôn ngữ thông báo lỗi tùy chỉnh cho thuộc tính
    |--------------------------------------------------------------------------
    |
    | Các dòng ngôn ngữ dưới đây được sử dụng để thay thế các vị trí giữ chỗ của chúng ta
    | bằng một cái gì đó dễ đọc hơn như "Địa chỉ E-Mail" thay vì "email". Điều này giúp chúng ta làm cho thông báo của mình trở nên trực quan hơn.
    |
    */

    'attributes' => [],

];
