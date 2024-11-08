# 1. Infrastructure as Code (IaC)
- Cơ sở hạ tầng dưới dạng mã (IaC) là khả năng cung cấp và hỗ trợ cơ sở hạ tầng máy tính bằng cách sử dụng mã thay vì dùng các quy trình và cài đặt thủ công. Với IaC, các tệp cấu hình được tạo có chứa thông số kỹ thuật cơ sở hạ tầng của bạn, giúp chỉnh sửa và phân phối cấu hình dễ dàng hơn. 
- Bất kỳ môi trường ứng dụng nào cũng yêu cầu nhiều thành phần cơ sở hạ tầng như hệ điều hành, kết nối cơ sở dữ liệu và bộ lưu trữ. Các nhà phát triển phải thường xuyên thiết lập, cập nhật và bảo trì cơ sở hạ tầng để phát triển, thử nghiệm và triển khai ứng dụng. Quản lý cơ sở hạ tầng thủ công tốn nhiều thời gian và dễ xảy ra lỗi - đặc biệt khi bạn quản lý ứng dụng trên quy mô lớn. Cơ sở hạ tầng dưới dạng mã cho phép bạn xác định trạng thái mong muốn của cơ sở hạ tầng mà không cần bao gồm tất cả các bước để đạt được trạng thái đó. Nó tự động hóa việc quản lý cơ sở hạ tầng để các nhà phát triển có thể tập trung vào việc xây dựng và cải thiện ứng dụng thay vì quản lý môi trường. Các tổ chức sử dụng IaC để kiểm soát chi phí, giảm thiểu rủi ro và thay đổi nhanh chóng khi cần thiết.
- Có 2 cách để tiếp cận IaC: khai báo (declarative) hoặc mệnh lệnh (imperative):
  - Declarative: xác định trạng thái mong muốn của hệ thống, bao gồm những tài nguyên bạn cần và bất kỳ thuộc tính nào mà chúng nên có, đồng thời công cụ IaC sẽ định cấu hình nó cho bạn. Cách tiếp cận khai báo cũng giữ một danh sách trạng thái hiện tại của các đối tượng hệ thống của bạn, điều này làm cho việc gỡ bỏ cơ sở hạ tầng trở nên đơn giản hơn để quản lý.
  -Imperative: bắt buộc xác định các lệnh cụ thể cần thiết để đạt được cấu hình mong muốn và sau đó các lệnh đó cần được thực thi theo đúng thứ tự. Nhiều công cụ IaC sử dụng cách tiếp cận khai báo và sẽ tự động cung cấp cơ sở hạ tầng mong muốn. Nếu bạn thực hiện các thay đổi đối với trạng thái mong muốn, công cụ IaC khai báo sẽ áp dụng những thay đổi đó cho bạn. Một công cụ bắt buộc sẽ yêu cầu bạn tìm ra cách áp dụng những thay đổi đó.
- Lợi ích khi sử dụng IaC:
  - Dễ dàng sao chép một môi trường.
  - Tăng tốc độ.
  - Open source và miễn phí.
  - Giảm lỗi cấu hình.
  - Dễ dàng xây dựng và phân nhánh trên các môi trường. Tăng tính nhất quán cho cơ sở hạ tầng.
- Các nhóm DevOps sử dụng cơ sở hạ tầng dưới dạng mã cho nhiều mục đích:
  - Thiết lập nhanh chóng các môi trường hoàn chỉnh, từ phát triển đến production.
  - Giúp đảm bảo cấu hình có thể tái tạo nhất quán giữa các môi trường.
  - Tích hợp liền mạch với các nhà cung cấp đám mây, tăng hoặc giảm quy mô tài nguyên cơ sở hạ tầng một cách hiệu quả dựa trên nhu cầu.
  - IaC cung cấp một ngôn ngữ chung cho cả hai nhà phát triển và vận hành. Các thay đổi có thể được xem xét một cách minh bạch, điều này thúc đẩy sự cộng tác tốt hơn trong môi trường DevOps.
# 2. Terraform
## 2.1. Tổng quan về Terraform
- Terraform là tool IaC của HashiCorp.
- Workflow: chúng ta viết code => gõ câu lệnh CLI và đợi cung cấp infrastructure => sau khi nó tạo xong thì nó sẽ tạo ra một file state để lưu lại kiến trúc hạ tầng hiện tại.

  ![{71A828C9-1C4C-474C-B1B1-55B3DB62621C}](https://github.com/user-attachments/assets/963ab7f6-512f-4fcd-840d-57e115d6ebfa)

- Terraform sử dụng ngôn ngữ HCL (HashiCorp Configuration Language) để định nghĩa cấu trúc hạ tầng của bạn và có thể được sử dụng để quản lý hạ tầng trên nhiều nhà cung cấp đám mây khác nhau.
- Terraform sử dụng các file cấu hình để quản lý các tài nguyên cloud. Các file cấu hình này được viết bằng ngôn ngữ HashiCorp Configuration Language (HCL) hoặc JSON. Các file cấu hình này được chia thành các module, mỗi module đại diện cho một tài nguyên cloud cụ thể.
- Trường hợp sử dụng Terraform:
  - Cung cấp nhiều đám mây: Triển khai các chức năng phi máy chủ với AWS Lambda, quản lý tài nguyên Microsoft Azure Active Directory, cung cấp bộ cân bằng tải trong Google Cloud,...
  - Quản lý Kubernetes: cung cấp và quản lý các clusters Kubernetes trên AWS, Microsoft Azure hoặc Google Cloud, đồng thời tương tác với clusters của bạn bằng cách sử dụng nhà cung cấp Kubernetes Terraform.
  - Quản lý cơ sở hạ tầng mạng: Tự động hóa các tác vụ mạng quan trọng như cập nhật nhóm mục tiêu cân bằng tải hoặc áp dụng chính sách tường lửa.
  - Kết hợp với Packer - Unique tool that generates VM images (not running VMs) based on steps you provide, để quản lý virtual images.
  - Tích hợp với quy trình công việc hiện có: Tự động triển khai cơ sở hạ tầng thông qua quy trình làm việc CI/CD hiện có.
  - Thực thi policies dưới dạng mã.
  - Đưa secrets vào Terraform: Sử dụng HashiCorp Vault để tự động hóa việc sử dụng các secrets và thông tin xác thực được tạo động trong cấu hình Terraform.
- Lý do dùng Terraform mà không dùng CLI và API:
  - Nếu bạn vô tình chạy lệnh nhiều lần, có khả năng cao là tài nguyên của bạn sẽ được tạo đi tạo lại.
  - Trong khi đó, nếu bạn đang sử dụng Terraform, nếu bạn chạy mã của mình một lần và nếu bạn vô tình chạy đi chạy lại, nó sẽ không tạo ra bất kỳ kết quả nào mà chỉ giữ nguyên kết quả đó.
    
## 2.2. Terraform Core Concepts
- Variables: là một *key-value*. Các biến đầu vào (input) được sử dụng làm tham số cho các giá trị đầu vào trong thời gian chạy để tùy chỉnh hoạt động triển khai. Các biến đầu ra (output) là giá trị trả về của mô-đun Terraform có thể được sử dụng bởi các cấu hình khác.
- Provider: ví dụ như AWS, GCP, Azure,...
- Module: is any **set of Terraform configuration files in a folder**. *root module* là module bắt buộc phải có.
- State: Terraform ghi lại thông tin về cơ sở hạ tầng được tạo trong tệp trạng thái Terraform => Terraform có thể tìm được tài nguyên mà nó đã tạo trước đó.
- Resources: mỗi tài nguyên có các thuộc tính riêng để xác định tài nguyên đó.
- Plan: là một trong những giai đoạn trong vòng đời của Terraform, nơi nó xác định những gì cần được tạo, cập nhật hoặc hủy để chuyển từ trạng thái thực/hiện tại của cơ sở hạ tầng sang trạng thái mong muốn.
- Thông thường sẽ có 3 Terraform files chính nằm ở root project:
  - *main.tf*: file là file tập trung các config Terraform chính, bao gồm provider và các resources cần cấu hình.
  - *variables.tf*: là file chứa thông tin về các biến.
  - *outputs.tf*: dùng để export value sau khi terraform apply đã thực thi hoàn tất.
## 2.3 HCL syntax

# 3. Terraform với AWS
Demo cơ bản: tạo EC2 instance với Terraform.

![{03B23BE1-7F3E-46DD-97A7-D1B935FED34D}](https://github.com/user-attachments/assets/1b8e8e9d-b6e2-40ad-a67f-87cb99246a21)

## 3.1. Cài đặt Terraform
  - Với Windows, chạy lệnh: ```choco install terraform```
    
    ![{8D13E9C7-2950-4D4B-9E59-8470D6AF3402}](https://github.com/user-attachments/assets/4aee6861-5b4b-4468-8659-01346f4773b7)

  - Các hệ điều hành khác, chi tiết xem tại https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
## 3.2. Cài đặt AWS CLI
- Downloads: https://aws.amazon.com/cli/
- Cần cài đặt AWS CLI trên máy của mình để tương tác với các tài nguyên AWS bằng dòng lệnh.
## 3.3. Terraform connect with AWS
### Bước 1: Access tài khoản AWS IAM sử dụng access key và secret key.
- Tạo IAM user trên AWS, cấp quyền AdministratorAccess. Sau đó tạo access key cho use case *CLI*, cần lưu lại thông tin *Access key* và *Secret access key*.
- Mở terminal của Vscode, chạy lệnh sau để cấu hình:
  
  ![{216BE6D5-D4A7-467D-9255-182C0720D39C}](https://github.com/user-attachments/assets/dcf8bd40-b3bc-4040-b861-bcb44194459b)

### Bước 2: 
*Nên cài extension Terraform để giao diện dễ nhìn và được hỗ trợ tự động về syntax HCL.*

- Tạo file mới đặt tên là *create_instance.tf*
# 4. Terraform với GitHub Actions

# Tài liệu tham khảo
- https://k21academy.com/terraform-iac/terraform-beginners-guide/
- https://spacelift.io/blog/terraform-tutorial 
- https://spacelift.io/blog/github-actions-terraform
- https://spacelift.io/blog/terraform-ec2-instance
