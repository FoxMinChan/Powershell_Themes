# *_Powershell Theme_*
 Theme được điều chỉnh lại bởi *Nhân Nguyễn*. Theme được điều chỉnh cảm hứng từ các bộ theme trên [oh-my-zsh shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) và bộ theme của [Dracular Offical](https://draculatheme.com/). Bộ theme điều chỉnh trực tiếp cho Powershell không cần phải thông qua ứng dụng thứ 3 như [Windows Terminal](https://github.com/microsoft/terminal). 

*Dưới đây là 1 vài hình ảnh của Powershell sau khi được điều chỉnh:*

![image](https://user-images.githubusercontent.com/56079798/123784263-72d9c080-d901-11eb-813b-3631a5baa1cf.png)

### _Chuẩn bị_

###### 1. PSReadLine phiên bản 2.0 trở lên. Module này được Windows cài sẵn nhưng bạn nên [cập nhật](https://github.com/PowerShell/PSReadLine#user-content-upgrading) lên phiên bản mới nhất để tương thích và tránh bị lỗi trong quá trình cài đặt theme.

##### _Lệnh kiểm tra phiên bản PSReadLine_
```cmdlet
(Get-Module PSReadLine).Version.Major
```
###### 2. Cài đặt Git [tại đây](https://git-scm.com/)
###### 3. Cài đặt trình tích hợp Git. Cụ thể ở đây là posh-git

##### _Lệnh cài đặt posh-git_
```cmdlet
Install-Module -Name posh-git -AllowPrerelease -Force
```
***Lưu ý:***
Trường hợp không có `-AllowPrerelease` hãy cập nhật module **PowershellGet**

##### _Lệnh cập nhật PowershellGet_
```cmdlet
Install-Module -Name PowerShellGet -Force
```
##### _Trường hợp không sửa được lỗi thì bạn đang gặp vấn đề như sau:_

Trên Powershell của bạn đang xung đột 2 phiên bản khác nhau, Powershell không biết cái nào để thực thi cả. Vì vậy bạn nên xoá Module cũ đi, cách gỡ Module cũ các bạn tham khảo [tại dây](https://www.locktar.nl/programming/powershell/upgrading-powershellget-to-the-latest-version/)

###### 4. Cài đặt phông chữ hỗ trợ theme

Hiện nay có rất nhiều phông chữ hỗ trợ theme trên nên chọn font Powerline [tại đây](https://github.com/powerline/fonts)

###### 5. Cài đặt Chocolatey
***Bước 1:*** Gõ lệnh như sau và sẽ trả về kết quả là `Restricted`
```cmdlet
Get-ExecutionPolicy
```
***Bước 2:*** Gõ lệnh một trong hai lệnh dưới đây:
```cmdlet
Set-ExecutionPolicy AllSigned
```
```cmdlet
Set-ExecutionPolicy Bypass -Scope Process
```
***Bước 3:*** Tiến hành cài đặt Chocolatey theo lệnh bên dưới:
```cmdlet
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
***Bước 4:*** Sau khi cài đặt xong ta tiến hành kiểm tra bằng cách gõ một trong hai câu lệnh sau: `choco` hoặc `choco -?`

Sau khi xong bước chuẩn bị xong chúng ta tiến hành cài đặt theme như sau:
### _Cài đặt_
1. Download toàn bộ source về [tại đây](https://github.com/FoxMinChan/Powershell_Themes.git)
2. Giải nén (nếu có)
3. Chạy file **install.cmd** dưới quyền administator
4. Trên Powershell gỡ lệnh như sau:
>Nếu bạn dùng Visual Studio Code
```cmdlet
code $Profile
```
>Nếu bạn dùng Notepad:
```cmdlet
notepad $profile
```
5. Copy toàn bộ nội dung của file [Microsoft.PowerShell_profile.ps1](https://github.com/FoxMinChan/Powershell_Themes/blob/main/Microsoft.PowerShell_profile.ps1) vào. Sau đó save nó lại
6. Reset Powershell, sau đó điều chỉnh phông chữ dã chuẩn bị cho phù hợp, tránh bị lỗi phông

### _Credit_

***Color code by [Dracular Offical](https://draculatheme.com/)***

***Profile code by [Nhân Nguyễn](https://www.facebook.com/FoxMinChan/)***
