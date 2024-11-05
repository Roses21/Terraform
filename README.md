# 1. Infrastructure as Code (IaC)
- Cơ sở hạ tầng dưới dạng mã (IaC) là khả năng cung cấp và hỗ trợ cơ sở hạ tầng máy tính bằng cách sử dụng mã thay vì dùng các quy trình và cài đặt thủ công. Với IaC, các tệp cấu hình được tạo có chứa thông số kỹ thuật cơ sở hạ tầng của bạn, giúp chỉnh sửa và phân phối cấu hình dễ dàng hơn. 
- Bất kỳ môi trường ứng dụng nào cũng yêu cầu nhiều thành phần cơ sở hạ tầng như hệ điều hành, kết nối cơ sở dữ liệu và bộ lưu trữ. Các nhà phát triển phải thường xuyên thiết lập, cập nhật và bảo trì cơ sở hạ tầng để phát triển, thử nghiệm và triển khai ứng dụng. Quản lý cơ sở hạ tầng thủ công tốn nhiều thời gian và dễ xảy ra lỗi - đặc biệt khi bạn quản lý ứng dụng trên quy mô lớn. Cơ sở hạ tầng dưới dạng mã cho phép bạn xác định trạng thái mong muốn của cơ sở hạ tầng mà không cần bao gồm tất cả các bước để đạt được trạng thái đó. Nó tự động hóa việc quản lý cơ sở hạ tầng để các nhà phát triển có thể tập trung vào việc xây dựng và cải thiện ứng dụng thay vì quản lý môi trường. Các tổ chức sử dụng IaC để kiểm soát chi phí, giảm thiểu rủi ro và thay đổi nhanh chóng khi cần thiết.
- Có 2 cách để tiếp cận IaC: khai báo (declarative) hoặc mệnh lệnh (imperative):
  - Declarative: xác định trạng thái mong muốn của hệ thống, bao gồm những tài nguyên bạn cần và bất kỳ thuộc tính nào mà chúng nên có, đồng thời công cụ IaC sẽ định cấu hình nó cho bạn. Cách tiếp cận khai báo cũng giữ một danh sách trạng thái hiện tại của các đối tượng hệ thống của bạn, điều này làm cho việc gỡ bỏ cơ sở hạ tầng trở nên đơn giản hơn để quản lý.
  -Imperative: bắt buộc xác định các lệnh cụ thể cần thiết để đạt được cấu hình mong muốn và sau đó các lệnh đó cần được thực thi theo đúng thứ tự. Nhiều công cụ IaC sử dụng cách tiếp cận khai báo và sẽ tự động cung cấp cơ sở hạ tầng mong muốn. Nếu bạn thực hiện các thay đổi đối với trạng thái mong muốn, công cụ IaC khai báo sẽ áp dụng những thay đổi đó cho bạn. Một công cụ bắt buộc sẽ yêu cầu bạn tìm ra cách áp dụng những thay đổi đó.
- Lợi ích khi sử dụng IaC:
  - Dễ dàng sao chép một môi trường.
  - Tăng tốc độ.
  - Giảm chi phí.
  - Giảm lỗi cấu hình.
  - Dễ dàng xây dựng và phân nhánh trên các môi trường. Tăng tính nhất quán cho cơ sở hạ tầng.
- Các nhóm DevOps sử dụng cơ sở hạ tầng dưới dạng mã cho nhiều mục đích:
  - Thiết lập nhanh chóng các môi trường hoàn chỉnh, từ phát triển đến production.
  - Giúp đảm bảo cấu hình có thể tái tạo nhất quán giữa các môi trường.
  - Tích hợp liền mạch với các nhà cung cấp đám mây, tăng hoặc giảm quy mô tài nguyên cơ sở hạ tầng một cách hiệu quả dựa trên nhu cầu.
  - IaC cung cấp một ngôn ngữ chung cho cả hai nhà phát triển và vận hành. Các thay đổi có thể được xem xét một cách minh bạch, điều này thúc đẩy sự cộng tác tốt hơn trong môi trường DevOps.
# 2. Terraform
