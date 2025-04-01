1. Lệnh ls

- Công dụng: Liệt kê các tập tin và thư mục trong hệ thống:

        ls [/thư mục/thư mục/đường dẫn]

- Nếu xóa đường dẫn, ls sẽ hiển thị thư mục đang làm việc. Bạn có thể tùy chỉnh câu lệnh với các lựa chọn:

    - R: Liệt kê tất cả tập tin trong thư mục con
    - a: Hiển thị tất cả các tệp, gồm tệp bị ẩn
    - lh: Chuyển đổi kích thước thành con số dưới dạng MB, GB hoặc TB
2. Lệnh pwd

- Công dụng: In đường dẫn tới vị trí thư mục đang làm việc:

        pwd [tùy chọn]

- Tùy chọn hỗ trợ 2 nội dung:

    - L (logic): In nội dung biến môi trường
    - P (physical): In ra đường dẫn vị trí thư mục
3. Lệnh cd

- Giúp điều hướng các tập tin và thư mục Linux:

        cd /thư mục/thư mục/đường dẫn
    
- Tùy vào bạn đang ở vị trí nào mà lệnh cd sẽ yêu cầu đường dẫn đầy đủ hoặc chỉ tên thư mục. Một số phím tắt điều hướng:

    - cd ~[username]: Di chuyển đến thư mục chính của người dùng khác.
    - cd ..: Di chuyển một thư mục nhất định lên trên.
    - cd- – Di chuyển về thư mục trước đó.

4. Lệnh mkdir

- Giúp tạo một hoặc nhiều thư mục và cấp quyền cho chúng:

        mkdir [tùy chọn] [tên_thư mục]

- Bạn cần dùng đường dẫn thư mục làm tham số lệnh, ví dụ mkdir music/songs sẽ tạo một thư mục mới tên là songs bên trong. Dưới đây là một số tùy chọn:

    - p: Tạo thư mục giữa 2 thư mục có sẵn.
    - m: Cấp quyền cho thư mục, chẳng hạn như cấp quyền đọc, ghi hoặc chạy thư mục cho tất cả người dùng.
    - v: In thông báo cho các thư mục đã được tạo.

5. Lệnh rmdir

- Xóa một thư mục rỗng (người dùng cần có quyền sudo):

        rmdir [tùy chọn] thư mục_name

- Nếu trong thư mục có thư mục khác thì câu lệnh sẽ báo lỗi. 
Khi đó, bạn cần dùng lựa chọn -p.

6. Lệnh rm

- Xóa một tập tin vĩnh viễn:

        rm [tên tệp1] [tên tệp2] [tên tệp3]

- Bạn có thể điều chỉnh số lượng tập tin cần xóa tùy thích (lưu ý bạn cần có quyền ghi dữ liệu). Một số tùy biến khác:

    - i : Thông báo xác nhận trước khi xóa.
    - f : cho phép xóa tập tin mà không cần xác nhận.
    - r : xóa các tập tin và thư mục theo cách đệ quy.
    - Lưu ý quan trọng: Hãy thận trọng khi sử dụng rm vì chúng ta không thể khôi phục lại tập tin.

7. Lệnh cp

- Sao chép các tập tin, thư mục, với nhiều công dụng:

- Sao chép tập tin từ thư mục hiện tại đến thư mục khác: 

        cp filename.txt /home/tên người dùng/Documents.

- Sao chép nhiều tập tin: 

        cp filename1.txt filename2.txt filename3.txt /home/username/Documents.

- Sao chép nội dung tập tin này sang tập tin khác:

        cp tên tệp1.txt tên tệp2.txt

- Sao chép toàn bộ thư mục: 

        cp -R /home/tên người dùng/Tài liệu/home/tên người dùng/Documents_backup.

8. Lệnh mv

Di chuyển, đổi tên các tập tin hoặc thư mục:

- Đổi tên:

        mv old_filename.txt new_filename.txt

- Di chuyển: 

        mv filename.txt /home/tên người dùng/Tài liệu

9. Lệnh touch
- Tạo một tập tin trống:

        touch [option] /home/directory/path/file.txt

- Nếu không điền đường dẫn, lệnh sẽ tạo tập tin mới trong thư mục hiện tại.

10. Lệnh file

- Cho phép kiểm tra tệp là hình ảnh, văn bản hay nhị phân:

        file filename.txt

- Nếu cần kiểm tra nhiều tệp, bạn liệt kê chúng riêng lẻ nhé!
11. Lệnh nano, vi, jed

- Chỉnh sửa tập tin bằng trình soạn thảo văn bản:

        nano filename
        vi filename
        jed filename

- Nếu tập tin không tồn tại, các câu lệnh trên sẽ tạo một tệp mới. Bạn nên dùng nano nếu cần chỉnh sửa nhanh các văn bản.

12. Cat
- Giúp liệt kê, kết hợp và ghi nội dung vào các tệp input output:

        cat filename.txt

- Một số tùy biến:

        Cat > filen.txt – tạo một tệp mới.

        cat file1.txt file2.txt > file3.txt – hợp nhất file1.
        
        txt với file2.txt và lưu trữ kết quả đầu ra trong filename3.txt.

        tac file.txt – hiển thị nội dung theo thứ tự đảo chiều.

13. Lệnh grep

- Giúp tìm kiếm các tập tin:

        grep xanh notepad.txt

14. Lệnh head
- In 10 dòng đầu tiên của tập tin trong giao diện dòng lệnh:

        head [option] [file]
- Một số tùy chọn gồm:

    - n : thay đổi số dòng được in ra.
    - c : in số lượng byte tùy chỉnh đầu tiên của tập tin.
    - q : vô hiệu hóa các tập tin có tiêu đề được chỉ định.
15. Lệnh tail

- Hiển thị 10 dòng cuối của tập tin:

        tail [option] [file]
16. Lệnh sort
- Sắp xếp các dòng trong tập tin theo thứ tự xác định (chỉ thay đổi kết quả in ra chứ không thay đổi tệp thực tế):

        sort [option] [file]
- Một số tùy chọn:

    - o : chuyển hướng input lệnh sang tập tin khác.
    - r – setup thứ tự sắp xếp thành giảm dần.
    - n – setup tệp theo thứ tự số đếm.
    - k – sắp xếp lại tập tin trong một trường cụ thể.
17. Lệnh cut

- Truy xuất một phần nội dung tập tin và in ra:

        cut [option] [file]
- Một số tùy chọn gồm:

    - f – chọn một trường cụ thể.
    - b – cắt dòng theo kích thước byte đã được chỉ định.
    - c – cắt dòng dựa trên ký tự được chỉ định.
    - d – phân tách các dòng nội dung theo dấu phân cách.
18. Lệnh diff

- Tìm kiếm sự khác biệt về nội dung của 2 tệp:

        diff [option] file1 file2
- Một số tùy chọn gồm:

    - c – In ra điểm khác biệt giữa hai tệp ở dạng ngữ cảnh.
    - u –In ra kết quả output mà không có thông tin nào khác.
    - i – Không phân biệt giữa chữ hoa và chữ thường.

19.  Lệnh find
- Tìm các tập tin trong một thư mục:

        find [option] [path] [expression]

20.  Lệnh sudo
- Cấp quyền quản trị viên hoặc root:

        sudo (command)
- Một số tùy chọn gồm:

    - k – Xóa hiệu lực với các tập tin dấu thời gian.
    - g – chạy các lệnh dưới dạng tên hoặc ID của nhóm đã chọn.
    - h – chạy lệnh trên Server.
21. Lệnh Su
- Chạy một chương trình trong Linux dưới vai trò là người dùng khác, thường dùng để kết nối khóa SSH khi tài khoản root bị vô hiệu hóa:

        su [options] [username [argument]]
- Một số tùy chọn gồm:

    - p – Giữ cùng một môi trường shell
    - s – Chỉ định môi trường shell khác để chạy.
    - l – Chạy lệnh đăng nhập để đổi người dùng

22. Lệnh chmod
- Sửa đổi quyền với thư mục, tập tin:

        chmod [option] [permission] [file_name]

23. Lệnh chown
- Thay đổi quyền sở hữu tập tin, thư mục:

        chown [option] owner[:group] file(s)

24. Lệnh useradd, userdell
- Tạo tài khoản mới và đổi mật khẩu:

        useradd [option] username
        passwd username
- Xóa người dùng:

        userdel username
25. strings
- Hiển thị các chuỗi ký tự trong tệp:
Các options:

  - -e: Hiển thị các ký tự không in được dưới dạng mã hex
  - -n <n>: Chỉ hiển thị các chuỗi có ít nhất n ký tự
  - -o <n>: Bỏ qua n ký tự đầu tiên của mỗi chuỗi
  - -t: Hiển thị các ký tự tab dưới dạng \T
  - -v: Hiển thị số lượng dòng của mỗi chuỗi

26. alias

Lệnh Alias cho phép chỉ định các từ khóa ngắn cho các chuỗi dài gồm các lệnh dùng thường xuyên.

- Cú pháp: `alias shortName="your custom command here"`

- Xóa alias dùng lệnh unalias

27. date

- Lấy ngày giờ hiện tại: date

- Lấy một ngày trong quá khứ/ tương lai: date -d "< ... >"

- Nhận ngày trong tuần: 

- Nhận giờ phối hợp quốc tế: date -u 

- Nhận thời gian sửa đổi cuối cùng của tệp: date -R 

28. Lệnh time
- Đo thời gian thực hiện các lệnh:

        time [commandname]

29. Lệnh ping
- Kiểm tra máy chủ hoặc mạng có khả dụng không:

        ping [option] [hostname_or_IP_address]

30. Lệnh curl
- Truyền tập tin giữa các Server, thường dùng để truy xuất nội dung của Website bằng URL:

        curl [option] URL
- Một số tùy chọn gồm:

    - o hoặc -O – tải tập tin nào đó từ URL cụ thể.
    - X – thay đổi phương thức HTTP GET
    - H – gửi tiêu đề đã được thay đổi tới URL.
    - F – tải tập tin lên nơi đã chọn.

31. Lệnh ifconfig
- Liệt kê, định cấu hình về các giao diện mạng trong hệ thống:

        ifconfig [interface] [option]
- Một số tùy chọn gồm:

    - –s – In ra tóm lược các giao diện mạng và cấu hình
    - up và down – bật và tắt các giao diện mạng.
    - inet và inet6 – gán địa chỉ IPv4 và IPv6 cho giao diện mạng.
    - netmask – chỉ định các netmask được dùng trên IPv4.

31. Lệnh history
- Hiển thị các lệnh trước đó, để bạn sử dụng lại mà không cần viết lại:

        history [option]
- Một số tùy chọn gồm:

    - c – xóa lịch sử.
    - d offset – xóa một mục lịch sử tại vị trí OFFSET.
    - a – thêm một dòng vào lịch sử.
32. Lệnh man
- Cung cấp hướng dẫn sử dụng Linux Terminal:

        man [option] [section_number] command_name

33. Lệnh echo
- Hiển thị một dòng văn bản dưới dạng đầu ra:

        echo [option] [string]
- Một số tùy chọn gồm:

- -n – in kết quả đầu ra mà không có dòng nào khác ở cuối.
- -e – diễn giải các ký tự thoát dấu gạch chéo ngược sau
- \b – xóa dấu cách ở giữa văn bản.
- \c – không tạo thêm đầu ra.