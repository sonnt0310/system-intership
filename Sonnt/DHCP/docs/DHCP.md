# 1.1 DHCP là gì ?
DHCP ( Dynamic Host Configuration Protocol ) Là giao thức cấp phát địa chỉ IP và các thông số cấu hình mạng khác tự động cho các thiết bị trong mạng.

#  1.2 điểm của DHCP
- làm việc theo mô hình Client/Server.

- Sử dụng cổng đặc biệt cho DHCP server là cổng 67. Các DHCP server lắng nghe trên cổng 67 cho các bản tin broadcast request được gửi bởi client. Sau khi xử lý bản tin request, server gửi một bản tin reply lại cho client.

- Các DHCP client lắng nghe bản tin reply lại từ DHCP server trên cổng 68.

- Chức năng:
    - Bằng việc phát triển DHCP trên mạng, toàn bộ tiến trình này được quản lý tự động và tập trung. DHCP server bảo quản vùng của các địa chỉ IP và giải phóng một địa chỉ với bất cứ DHCP client có thể khi nó có thể ghi lên mạng. bởi vì các địa chri IP là động hơn tĩnh, các địa chỉ không còn được trả lại một cách tự động trong sử dụng đối với các vùng cấp phát lại.
- Ưu điểm:
    - Tập trung quản trị thông tin cấu hình IP.
    - Cấu hình động các máy
    - Cấu hình IP cho các máy một cách liền mạch.
    - Sự linh hoạt
    - Khả năng mở rộng.
    - Đơn giản hóa vài trò quản trị của việc cauas hình địa chỉ IP của client.

# 1.3 Cơ chế phân giải bổ địa chỉ của DHCP server
2 chức năng chính của DHCP là cung cấp một cơ chế gán địa chỉ cho các máy host và phương thức mà client có thể yêu cầu một địa chỉ IP và các thông tin cấu hình cho nó từ server. 
DHCP gồm 3 cơ chế phân bổ địa chỉ khác nhau:
- Manual Allocation: Một địa chỉ IP cụ thể được cấp phát trước cho một thiết bị duy nhất bởi người quản trị. DHCP chỉ truyền IP tới các thiết bị đó (hiểu như là server, router, gateway, ... ). Nó cũng thích hợp cho các thiết bị khác mà vì lý do gì phải có một địa chỉ IP cố định ổn định.

- Automatic Allocation: DHCP tự động gán một địa chỉ IP vĩnh viễn với một thiết bị, chọn từ một pool IP có sẵn. Sử dụng trong trường hợp có đủ địa chỉ IP cho mỗi thiết bị có thể kết nối vào mạng, nhưng mà thiết bị không thực sự cần quan tâm đến địa chỉ mà nó sử dụng. Khi một địa chỉ được gán cho một client, thiết bị sẽ tiếp tục sử dụng nó. Automatic Allocation được coi là một trường hợp đặc biệt của Dynamic Allocation – dùng trong trường hợp các giới hạn thời gian sử dụng các địa chỉ IP của một client gần như là “mãi mãi”.

- Dynamic Allocation: DHCP gán một địa chỉ IP từ một pool các địa chỉ trong một khoảng thời gian hạn chế được lựa chọn bởi server, hoặc cho đến khi client nói với DHCP server là nó không cần địa chỉ này nữa.
    - Server sẽ quyết định số lượng thừi gian mà hợp đồng cho thuê IP sẽ kéo dài. Khi hết thời gian, client hoặc phải xin phép tiếp tục sử dụng các địa chỉ (đổi mới thuê) hoặc phải có được một cấu hình mới.
    - Phương pháp này cung cấp nhiều lợi ích như:
        - mỗi client có thể được tự động gán IP khi nó cần
        - tất cả các IP được quản lý bởi DHCP server
        - Tái sử dụng và chia sẻ địa chỉ IP
        - hỗ trợ các thiết bị di động và di chuyển giữa các mạng.
        - Tránh các vấn đề xung đột
# 1.4 Vòng đời và thời gian "thuê" địa chỉ IP của client

Khi một client được thiết lập để sử dụng DHCP, nó sẽ không bao giờ có quyền hạn sở hữu IP đó lâu dài. Mỗi lần có quyền hạn sử dụng, nó phải thỏa thuận liên kết với một DHCP server để bắt đầu hoặc xác nhận thuê một IP. Nó cũng phải thực hiện các hoạt động khác theo thời gian để quản lý việc thuê địa chỉ này và có thể chấm dứt nó.

Vòng đời thuê IP của DHCP gồm các bước sau:

- Allocation: Một client bắt đầu khi chưa từng thuê IP và do đó chưa có địa chỉ được cấp từ DHCP server. Nó yêu cầu thuê thông qua một quá trình phân bổ Allocation.

- Reallocation: Nếu client đã có sẵn địa chỉ IP lần thuê hiện tại, và sau đó khi nó khởi động lại sau khi tắt, nó sẽ liên lạc với DHCP server để xác nhận việc thuê và dùng lại các thông số vận hành. Điều này được gọi là Reallocation, nó tương tự như Allocation nhưng ngắn hơn.

- Normal Operation: Khi một hợp đồng cho thuê đang hoạt động, client được gán vào một địa chỉ mà DHCP server cấp phát, cho thuê.

- Renewal: Sau một phần thời gian nhất định của thời gian cho thuê, client sẽ cố gắng liên lạc với máy chủ cho thuê ban đầu, gia hạn thêm hợp đồng để nó có thể tiếp tục sử dụng IP đó sau khi thời gian cho thuê kết thúc (thường sau nửa thời gian được phép sử dụng IP, client sẽ liên lạc với DHCP server để gia hạn thêm hợp đồng)

- Rebind: Nếu việc renewal không thành (giả sử máy server bị tắt), sau đó client sẽ cố gắng kết nối lại với bất kì máy chủ DHCP nào đang hoạt động, cố gắng mở rộng thời gian cho thuê hiện tại.

- Release: client có thể quyết định ở bất kì thời điểm nào đó nó không còn muốn sử dụng địa chỉ IP được cấp từ DHCP nữa, và có thể chấm dứt hợp đồng cho thuê, giải phóng địa chỉ IP.

# 1.5 Các loại bản tin DHCP
- DHCP DISCOVER: Ban đầu, một máy tính DHCP Client muốn gia nhập mạng, nó yêu cầu thông tin địa chỉ IP từ DHCP Server bằng cách gửi broadcast một gói DHCP Discover. Địa chỉ IP nguồn trong gói là 0.0.0.0 bởi vì client chưa có địa chỉ IP.

- DHCP OFFER: Mỗi DHCP server nhận được gói DHCP Discover từ client đáp ứng với gói DHCP Offer chứa địa chỉ IP cho thuê và thông tin định cấu hình TCP/IP bổ sung(thêm vào), chẳng hạn như subnet mask và gateway mặc định. Nhiều hơn một DHCP server có thể đáp ứng với gói DHCP Offer. Client sẽ chấp nhận gói DHCP Offer đầu tiên nó nhận được.

- DHCP REQUEST: Khi DHCP client nhận được một gói DHCP Offer, nó đáp ứng lại bằng việc broadcast gói DHCP Request mà chứa yêu cầu địa chỉ IP mà server cung cấp trong bản tin offer - thể hiện sự chấp nhận của địa chỉ IP được yêu cầu từ một server xác định.

- DHCP ACK: DHCP server được chọn lựa chấp nhận DHCP Request từ Client cho địa chỉ IP bởi việc gửi một gói DHCP Acknowledge (ACK). Tại thời điểm này, Server cũng định hướng bất cứ các tham số định cấu hình tuỳ chọn. Sự chấp nhận trên của DHCP Acknowledge, Client có thể tham gia trên mạng TCP/IP và hoàn thành hệ thống khởi động. (Bản tin này gần như giống nội dung bản tin OFFER)

- DHCP NAK: Nếu địa chỉ IP không thể được sữ dụng bởi client bởi vì nó không còn giá trị nữa hoặc được sử dụng hiện tại bởi một máy tính khác, DHCP Server đáp ứng với gói DHCP Nak, và Client phải bắt đầu tiến trình thuê bao lại. Bất cứ khi nào DHCP Server nhận được yêu cầu từ một địa chỉ IP mà không có giá trị theo các Scope mà nó được định cấu hình với, nó gửi thông điệp DHCP Nak đối với Client.

- DHCP DECLINE: Khi client nhận được thông tin cấu hình từ DHCP server, nhưng có thể xảy ra vấn đề là IP mà DHCP server cấp đã bị sử dụng bởi một thiết bị khác thì nó gửi gói DHCP Decline đến các Server và Client phải bắt đầu tiến trình thuê bao lại từ đầu.

- DHCP RELEASE: Một DHCP Client khi không còn nhu cầu sử dụng IP hiện tại nữa nó sẽ gửi một gói DHCP Release đến server quản lý để giải phóng địa chỉ IP và xoá bất cứ hợp đồng thuê bao nào đang tồn tại.

- DHCP INFORM: Các thiết bị không sử dụng DHCP để lấy địa chỉ IP vẫn có thể sử dụng khả năng cấu hình khác của nó. Một client có thể gửi một bản tin DHCP INFORM để yêu cầu bất kì máy chủ có sẵn nào gửi cho nó các thông số để mạng hoạt động. DHCP server đáp ứng với các thông số yêu cầu – được điền trong phần tùy chọn của DHCP trong bản tin DHCP ACK.
# 1.6 Các tiến trình hoạt động của DHCP

3 tiến trình của DHCP là: Lease Allocation Process (Quá trình cấp phát địa chỉ IP), Lease Reallocation Process (Quá trình xin cấp phát lại IP đã xác định trước) và quá trình Renew and Rebind (Quá trình gia hạn thêm thời gian được phép sử dụng IP)

## Quá trình cấp phát địa chỉ IP
Quá trình xử lý quan trọng nhất trong DHCP là quá trình Lease Allocation, được sử dụng bởi client để yêu cầu một hợp đồng thuê IP. Client gửi broadcast một request tới DHCP server. Mỗi DHCP server sẵn sàng cung cấp cho client một hợp đồng thuê và gửi lại cho nó một bản tin Offer. Client chọn bản hợp đồng mà nó nhận được và gửi lại tới tất cả các server về sự lựa chọn của nó. Server được chọn sẽ gửi lại cho client thông tin và hợp đồng thuê. Các bước được thực hiện như sau:
![alt text](<../images/DHCP 2.png>)
Bước 1: Client tạo bản tin DHCPDISCOVER

Ban đầu, Client chưa có địa chỉ IP và nó có thể biết hoặc không biết vị trí của DHCP server trong mạng. Để tìm DHCP server, nó tạo bản tin DHCP DISCOVER, bao gồm các thông tin như sau:

- Điền địa chỉ MAC vào trường CHAddr để xác nhận nó.

- Sinh ra một số định danh transaction ngẫu nhiên và điền vào trường XID.

- Client có thể yêu cầu một địa chỉ IP xác định sử dụng trường tùy chọn Request IP Address trong phần DHCP option.

Bước 2: Client gửi bản tin DHCP DISCOVER

Client gửi broadcast bản tin DHCP DISCOVER trên mạng nội bộ. (Broadcast lớp 2 và lớp 3)

Bước 3: Server nhận và xử lý bản tin DHCP DISCOVER

Mỗi DHCP server trên mạng LAN nhận được bản tin DHCP DISCOVER của client và kiểm tra nó. Server tìm kiếm phần địa chỉ MAC của client trong database và chọn cho nó một IP phù hợp đồng thời các thông số liên quan. Nếu client yêu cầu một IP xác định thì server sẽ xử lý yêu cầu nó. Server có thể quyết định việc nó dùng địa chỉ IP chỉ định kia là hợp lệ hay không để gửi reply về.

Bước 4: Server tạo bản tin DHCP OFFER

Mỗi server được chọn trả lời lại cho client tạo bản tin DHCP OFFER bao gồm các thông tin sau:

- Địa chỉ IP cấp phát cho client trong trường YIAddr. Nếu trước đó, client đã "thuê" một địa chỉ IP và thời hạn dùng của nó vẫn còn thì sẽ sử dụng địa chỉ cũ đó cho client. Nếu không thì nó sẽ chọn một IP có sẵn bất kì cho client.

- Thời hạn được sử dụng IP.

- Các thông số cấu hình khác mà client yêu cầu.

- Định danh của DHCP server trong phần tùy chọn DHCP Server Identifier option.

- Cùng số XID được sử dụng trong bản tin DHCP DISCOVER.

Bước 5: Server dò tìm xem địa chỉ IP mà cấp phát cho client đã được một thiết bị nào khác sử dụng hay chưa.

Trước khi gửi bản tin DHCP OFFER cho client, server nên kiểm tra lại xem địa chỉ IP cấp cho client đã được sử dụng hay chưa bằng cách gửi bản tin ICMP.

- Nếu IP đó đã được sử dụng thì nó sẽ chọn lại địa chỉ IP khác cho client.

- Nếu IP chưa được sử dụng, server sẽ cấp phát IP cho client.

Bước 6: Các Server gửi bản tin DHCPOFFER

Mỗi server gửi bản tin DHCP OFFER của nó. Chúng có thể được gửi unicast hoặc broadcast tùy thuộc vào client (Nếu client cho phép nhận bản tin unicast khi chưa được cấu hình IP thì nó sẽ set bit B trong bản tin DHCP DISCOVER là 0, còn nếu không thì nó sẽ set bit B là 1 để biểu thị nhận bản tin broadcast)

Bước 7: Client nhận và xử lý bản tin DHCPOFFER

Client nhận bản tin DHCP OFFER và nó sẽ chọn lựa server nào mà nó nhận được bản tin DHCP OFFER đầu tiên. Nếu không nhận được bản tin DHCP OFFER nào sau một thời gian, client sẽ tạo lại bản tin DHCP DISCOVER và gửi lại từ đầu.

Bước 8: Client tạo bản tin DHCP REQUEST

Client tạo bản tin DHCP REQUEST cho server mà nó chọn nhận bản tin OFFER. Bản tin này sẽ gồm 2 mục đích chính là nói với server mà cho phép cấp phát IP cho nó là nó đồng ý dùng IP đó trong trường hợp IP đó vẫn còn dành cho nó và cũng thông báo với các DHCP server còn lại là bản tin OFFER của chúng không được nhận.

Trong bản tin này bao gồm các thông tin:

- Định danh của server được chọn trong phần SEerver Identifier option.

- Địa chỉ IP mà DHCP server cho phép client trong bản tin DHCP OFFER, client để vào phần Request IP Address DHCP option.

- Và một số thông tin cấu hình mà nó muốn trong phần Parameter Request List option.

Bước 9: Client gửi bản tin DHCP REQUEST

Client gửi broadcast bản tin DHCP REQUEST. Sau đó chờ reply từ server.

Bước 10: Các server nhận và xử lý bản tin DHCP REQUEST

Mỗi server nhận được bản tin REQUEST của client. Các server không được chọn sẽ bỏ qua bản tin này.

Bước 11: Server gửi bản tin DHCPACK hoặc DHCPNAK.

Server được chọn sẽ kiểm tra xem địa chỉ IP nó OFFER cho còn sử dụng được hay không. Nếu không còn, nó sẽ gửi lại DHCPNAK (negative acknowledgment). Thông thường, server sẽ vẫn dành địa chỉ IP đó cho client, server sẽ gửi lại bản tin DHCPACK để xác nhận và cấp các thông số mà client yêu cầu.

Bước 12: Client nhận bản tin DHCPACK hoặc DHCPACK

Client sẽ nhận lại bản tin DHCPACK hoặc DHCPNAK từ server.

- Nếu là DHCPNAK, client sẽ bắt đầu gửi lại DISCOVER từ bước 1.

- Nếu là DHCPACK, client đọc địa chỉ IP trong trường YIAddr, ghi lại các thông số khác trong phần DHCP option.

- Nếu không nhận được bản tin nào, client sẽ gửi lại DHCP REQUEST một hoặc vài lần nữa. Sau một khoảng thời gian vẫn không nhận được gì, nó sẽ bắt đầu lại từ Bước 1.

Bước 13: Client kiểm tra xem IP được sử dụng hay chưa.

Client sẽ kiểm tra lần cuối trước khi xác định chắc chắn IP chưa được thiết bị khác sử dụng trước khi sử dụng nó. Bước này sẽ được thực hiện bởi giao thức ARP trên mạng LAN.

- Nếu có bất kì thiết bị nào phản hồi lại ARP, client sẽ gửi bản tin DHCP DECLINE lại server để thông báo với server rằng IP đó đã được máy khác sử dụng. Và client trở lại Bước 1.

- Nếu không có phản hồi, client sẽ sử dụng IP. Kết thúc quá trình Lease Allocation.

## Quá trình xin cấp phát lại địa chỉ IP

Nếu client khởi động lại và nó đã có sẵn một hợp đồng thuê, nó không cần phải thực hiện lại quá trình full lease allocation, thay vào đó, nó có thể sử dụng quá trình ngắn hơn là Reallocation. Client broadcast một request để tìm server hiện tại đang quản lý thông tin về hợp đồng mà nó đang thuê. Server đó gửi lại để xác nhận xem hợp đồng của client còn hiệu lực hay không.
![alt text](<../images/DHCP 3.png>)
## Quá trình Renew và Rebind
Do thời hạn của mỗi client khi thuê IP thường đều là có hạn (trừ trường hợp Automatication Allocation) nên cần có quá trình gia hạn (renewal) lại với DHCP server quả lý và nếu quá trình renewal không thành công thì sẽ rebind lại (gửi request) tới bất kì DHCP server khác đang hoạt động để gia hạn hợp đồng.
![alt text](<../images/DHCP 4.png>)