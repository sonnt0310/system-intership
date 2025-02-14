# Tìm hiểu về ngôn ngữ markdown 

## Giới thiệu về ngôn ngữ markdown 

Markdown là một ngôn ngữ đánh dấu với cú pháp văn bản thô,được thiết kế để có thể dễ dàng chuyển thành HTML và nhiều định dạng khác sử dụng một công cụ cùng tên. Nó thường được dùng để tạo các tập tin readme, viết tin nhắn trên các diễn đàn, và tạo văn bản có định dạng bằng một trình biên tập văn bản thô.

## Cách sự dụng Markdown 

### Tiêu đề - Healing

Sử dụng các `#` để đánh dấu Healing, số ký tự `#`tương ứng cấp Healing khác nhau  từ 1-6

# healing
## healing 2

### Đoạn văn - Paragraph

Để xuống dòng giữa các văn bản, sử dụng một dòng trống để tách các dòng văn bản. 

### Chữ in nghiêng - Italic

Để in nghiêng văn bản, thêm một dấu `*` hoặc dấu `_`trước và sau từ cần in nghiêng.

*in nghiêng*
_in nghiêng_

### Chữ in đậm - Bold

Để in đậm văn bản, thêm hai dấu `*` hoặc `_` trước và sau từ cần in nghiêng.

**in đậm**
__in đậm__

### In đậm và in nghiêng

chỉ cần ba dấu `*` hoặc dấu `_` trước và sau từ đó.

***in đậm và in nghieng***

__in đậm và in nghiêng__

### Chữ gạch giữa - Strikethrough

Để tạo chữ gạch giữa, thêm 2 dấu `~` trước và sau từ đó. 

~~gạch giữa~~

### Code trong dòng - Inline Code

Để viết inline, bạn dùng 2 dấu ` ở trước và sau từ đó.

`inline`

### Trích dẫn - Blockquote

Để tạo một`<blockquote>`, thêm dấu > vào trước mỗi dòng trích dẫn.

> trích dẫn 

### Danh sách có thứ tự - Ordered List

Để tạo danh sách, bạn chỉ cần thêm các số, dấu chấm trước nội dung (dùng tab để phân cấp)

1. Mục một
 2. Mục hai

### Danh sách không có thứ tự - Unordered List

Để tạo danh sách, bạn chỉ cần thêm dấu * hoặc - hoặc + trước nội dung (dùng tab để phân cấp)

- mục một
 - mục hai
 - mục ba

### Bảng - Table

Để tạo bảng, chỉ cần ngăn cách bởi dấu | và cách đầu bảng với thân bảng bằng :--- (số dấu - tuỳ ý)

| Cột 1 | Cột 2 | Cột 3 | Cột 4 |
| :--- | :--- | :--- | :--- |
| A | B | C | D |
| E | F | G | H |
| I | K | L | M |


### Liên kết - Link

Sử dụng cú pháp []() để chèn link trong bài viết, ở đó nội dung trong [] sẽ là thẻ alt text, và nội dung trong () sẽ là đường link mà bạn muốn điều hướng đến.

[TopDev](https://topdev.vn)

### Hình ảnh - Image

Sử dụng cú pháp ![]() để chèn link trong bài viết, ở đó nội dung trong [] sẽ là thẻ alt text, và nội dung trong () sẽ là địa chỉ ảnh mà bạn muốn người đọc nhìn thấy.

![topdev](https://topdev.vn)

### Escape markdown

Đôi khi bạn sẽ cần những kí hiệu trùng với cú pháp của markdown. Để phân biệt, bạn chỉ cần thêm dấu \ trước những kí hiệu đó là được.

\`hai dấu nháy\`

\*\*\*ba dấu sao hai bên\*\*\*

### Đường kẻ ngang (Horizontal rule)

Sử dụng ba dấu gạch ngang --- hoặc dấu hoa thị *** để tạo một đường kẻ ngang.

*** 
---


