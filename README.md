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
  https://developer.hashicorp.com/terraform/language/syntax/configuration  
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
- Mở terminal của Vscode, chạy lệnh ```aws configure``` để cấu hình và nhập các thông tin cần thiết (gồm Access Key ID và Secret Access Key).

### Bước 2: Tạo file cấu hình 
*Nên cài extension Terraform để giao diện dễ nhìn và tự động gợi ý về syntax HCL.*

- Tạo file mới đặt tên là *create_instance.tf* có nội dung như sau:
  
 ![{2AD2210F-0FCF-4089-8430-3C1A4E6A85FB}](https://github.com/user-attachments/assets/36b26cfc-85d1-4e3e-81a7-a345789aafd4)

### Bước 3: 
- Chạy lệnh: ```terraform init``` - lệnh sẽ kiểm tra nhà cung cấp (là AWS) và cài đặt các plugin cần thiết cho AWS trong thư mục làm việc hiện tại.

  ![{188F4EA6-42B7-496A-A9C1-DDA53CB14DCB}](https://github.com/user-attachments/assets/f7a66baa-99b3-4b7f-a88b-7f87c12a8662)

- Sau khi chạy xong, sẽ tạo tự động:

  ![{8CEC8BC6-2CB7-40A6-8039-B66B17875AAD}](https://github.com/user-attachments/assets/0d6d6880-dde1-4cc1-8f36-fc788990fc94)

- Chạy lệnh: ```terraform validate``` để kiểm tra syntax của file.
  
  ![{FCA21D13-1B9C-40A4-922B-7BEB13E1CAE1}](https://github.com/user-attachments/assets/1ba99125-01ea-40d1-b373-15f1b49ddc39)

- Chạy lệnh: ```terraform plan``` - hiển thị một bảng mô tả về việc script sẽ làm những gì.

  ![{3200CEDB-1411-445F-9D35-99CA9E3C2A4B}](https://github.com/user-attachments/assets/3607bb2a-ff3b-4a6c-8d3d-4126374be5d8)

- Chạy lệnh: ```terraform apply```
  
  ![{42E3ECD0-80A4-4F0E-A58A-7F50C01BFA84}](https://github.com/user-attachments/assets/943847a7-36aa-4788-a66f-c93c92018562)

### Bước 4: Kiểm tra 
Kết quả là đã tạo thành công một EC2 instance có tên *terraform_instance_demo*.

![{9CB106F1-8872-4C3D-BD8B-726E3B7C982C}](https://github.com/user-attachments/assets/9bbed810-d608-4c1d-91e2-99c71313d2a7)

### Bước 5: Dọn dẹp tài nguyên
Để xóa những tài nguyên được tạo từ file config, sử dụng lệnh ```terraform destroy```.

![{45A3B0DA-2057-413E-A8B9-E3A517C92E3A}](https://github.com/user-attachments/assets/4e535aa7-37e4-4acd-8161-10736fa8b304)

![{3A820CC7-5721-43FB-B552-F3C1A8A828C5}](https://github.com/user-attachments/assets/be5287a1-0283-42ce-b5b5-047896274ef6)

# 4. Terraform với GitHub Actions
## 4.1. GitHub Actions
Là một công cụ CI/CD hiện đại được tích hợp vào GitHub, cho phép bạn tự động hóa toàn bộ quy trình phát triển phần mềm từ xây dựng, kiểm thử, đến triển khai.
  
  ![{11AEE770-43FD-47D1-8671-3E4663F3A4D6}](https://github.com/user-attachments/assets/7009462d-cf93-44e0-95fa-e980f2bc8b06)
 
## 4.2. Thực hiện
- Prerequisites:
  - 1 tài khoản GitHub
  - 1 tài khoản [HCP Terraform](https://app.terraform.io/session)
  - 1 tài khoản AWS đã được cấp các quyền cần thiết.
- Các bước cơ bản bao gồm: 
  - Lưu trữ mã Terraform trên GitHub.
  - Sau đó, định cấu hình quy trình làm việc GitHub Actions chuyên dụng dựa trên nhu cầu của tổ chức để xử lý các thay đổi về cơ sở hạ tầng bằng cách cập nhật tệp cấu hình Terraform.

### Bước 1: Set up HCP Terraform
- Tạo workspace có tên *learn-terraform-github-actions*.
- Thêm biến:

  ![{A8605133-1743-4795-84E1-05A3D592F055}](https://github.com/user-attachments/assets/7760a745-84f2-4788-86cc-5aeeca43eb39)

- Tạo 1 API token: tại trang https://app.terraform.io/app/settings/tokens?utm_source=learn
  
### Bước 2: Tạo GitHub repository
- Tạo repo có tên *Terraform*.
- Tạo secret để lưu giá trị access key đã tạo cho IAM user:
  *Repository → Settings → Secrets and variables → Actions → New repository secret* → Nhập lần lượt tên và giá trị của Access Key.

- Clone repository to local machine: để thuận tiện cho quá trình troubleshoot.

### Bước 3: Tạo các file cần thiết
- Tạo các file với cấu hình EC2 instance mong muốn (xem nội dung chi tiết của các file .tf tại repo này). 

- Sau khi tạo xong file .yaml sẽ tự động thực hiện các quy trình như sau (nếu có lỗi ở bước nào sẽ dừng lại và thông báo lỗi cụ thể):

  ![{5B38BEF3-3197-4BCF-AE14-33C23F4A7BBC}](https://github.com/user-attachments/assets/094787e3-cc1f-4357-90a2-ff53faaa97e6)

### Bước 4: 
Nếu GitHub báo lỗi về cấu hình, bạn có thể tìm xem file .tf nào đang bị lỗi bằng lệnh ```terraform fmt``` (lưu ý chọn đúng thư mục chứa file.)

Nếu tìm được lỗi, sẽ báo tên file chứa lỗi và sau đó tự động fix lỗi.

![{CD5BE8DE-CD8F-4F73-9EA6-7EE1B098AA1B}](https://github.com/user-attachments/assets/ab9cd0aa-b8e9-4913-bc1f-5a3803d53d2c)

### Bước 5: Kiểm tra kết quả
- Nếu thành công sẽ xuất hiện biểu tượng này tại repo của GitHub:

![{87C03AA6-1271-4080-BEE0-10ADF9A9AE16}](https://github.com/user-attachments/assets/805b0980-d7fc-427c-940c-bc313f35adde)

- Kiểm tra trên AWS:

![{899AD3B7-F1EE-4829-8CFD-0C601119319C}](https://github.com/user-attachments/assets/44ae403c-0661-4532-b018-f9ff17e57278)

- Khi tôi xóa instance, GitHub Actions sẽ tiếp tục kiểm tra và tạo lại instance mới, tức là luôn đảm bảo tồn tại ít nhất 1 instance trên môi trường AWS. Khi bạn thay đổi bất kỳ phần nào trong repo này (kể cả file .md, không phải file .tf) thì GitHub Actions cũng sẽ thực hiện lại toàn bộ quy trình và tạo ra 1 instance mới:

![{B32B438A-3017-4376-867F-DF301A6424A3}](https://github.com/user-attachments/assets/845c5472-fc91-4045-8aed-52996dc0d03b)

![{CB35FC03-FD5D-47D3-9B83-09FFF61D5683}](https://github.com/user-attachments/assets/6626359e-3f07-4e70-a722-374c5f5fb5e6)


### Bước 6: Dọn dẹp tài nguyên
- Vô hiệu hóa GitHub Actions cho toàn bộ repo: *Settings -> Actions -> Actions permissions -> Disable Actions*
- Xóa EC2 instance trên AWS.
- Xóa IAM user đã tạo để thực hiện bài lab này.
  
# Tài liệu tham khảo
- https://k21academy.com/terraform-iac/terraform-beginners-guide/
- https://spacelift.io/blog/terraform-tutorial 
- https://medium.com/@fawazcp/create-ec2-instance-using-terraform-71776acf16e3
