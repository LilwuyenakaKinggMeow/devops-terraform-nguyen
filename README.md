\# DevOps - Terraform



\## 1. Giới thiệu



Bài thực hành Terraform triển khai môi trường web server local bằng Docker.



Mục tiêu:



\* Làm quen với Infrastructure as Code (IaC).

\* Sử dụng Terraform Provider.

\* Khai báo Variables và Outputs.

\* Tạo Docker Network.

\* Triển khai 2 web server.

\* Mapping HTTP và SSH ports.



\## 2. Công nghệ



\* Terraform

\* Docker

\* Terraform Docker Provider

\* Ubuntu 24.04

\* Windows PowerShell



\## 3. Cấu trúc project



```text

terraform-web/

├── .gitignore

├── .terraform.lock.hcl

├── main.tf

├── variables.tf

├── outputs.tf

├── terraform.tfvars

└── README.md

```



\## 4. Infrastructure



Terraform triển khai:



\* Web Server 01: `web01`

\* Web Server 02: `web02`

\* Docker Network: `devops-network`



Port mapping:



| Server | HTTP |  SSH |

| ------ | ---: | ---: |

| web01  | 8081 | 2221 |

| web02  | 8082 | 2222 |



Website:



```text

http://localhost:8081

http://localhost:8082

```



\## 5. Terraform Variables



Các biến được khai báo trong `variables.tf`:



\* Server name

\* CPU

\* RAM

\* Disk

\* SSH key

\* Region

\* HTTP ports



Giá trị được cấu hình trong:



```text

terraform.tfvars

```



\## 6. Terraform Commands



Khởi tạo Terraform:



```bash

terraform init

```



Kiểm tra cấu hình:



```bash

terraform validate

```



Xem kế hoạch:



```bash

terraform plan

```



Triển khai:



```bash

terraform apply

```



Xem output:



```bash

terraform output

```



Xóa infrastructure:



```bash

terraform destroy

```



\## 7. Kết quả



Terraform đã triển khai thành công hai web server `web01` và `web02` trên Docker network `devops-network`.



Terraform outputs:



```text

region = "local"

web01\_name = "web01"

web01\_url = "http://localhost:8081"

web02\_name = "web02"

web02\_url = "http://localhost:8082"

```



\## 8. Lưu ý



Project sử dụng Docker container để mô phỏng infrastructure local cho mục đích thực hành DevOps. Đây không phải cloud VM thực tế.



