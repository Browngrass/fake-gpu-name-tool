# <div align="center">🛠️ Fake GPU Name Tool | Công cụ thay đổi tên GPU 🛠️ 

<p align="center">
  <a href="#-english">🇺🇸 English</a> • 
  <a href="#-tiếng-việt">🇻🇳 Tiếng Việt</a>
</p>

---

## 🇺🇸 English

### 📜 Introduction
A lightweight toolkit written in `Batch Script` designed to simplify the process of changing the display name (Friendly Name) of your Graphics Processing Unit (GPU) directly within the Windows system.
This tool is purely for entertainment purposes to modify the display name; it does not affect any system functionalities or cause conflicts with other applications.

### 📖 User Guide
1. Download the script duo `gpu_name_EN.bat` and `reset_gpu_name_EN.bat` from the `GPU Name Changer` folder or navigate to `RELEASES` to get the files.
```text
📂 fake-gpu-name-tool
├── 📂 GPU Name Changer
│   ├── 📄 gpu_name_EN.bat        # Main script to change the GPU name (English)
│   └── 📄 reset_gpu_name_EN.bat  # Script to restore the default name (English)
│   ├── 📄 gpu_name_VI.bat        # Main script to change the GPU name (Vietnamese)
│   └── 📄 reset_gpu_name_VI.bat  # Script to restore the default name (Vietnamese)
├── 📄 LICENSE
└── 📄 README.md 
```
2. Run `gpu_name_EN.bat` with Administrator privileges.
3. Select option `[1]` to view instructions on how to get the GPU's **Hardware ID**.
4. Select option `[2]`, paste the Hardware ID, and enter the new spoofed GPU name you desire.
5. If you want to revert to the default name, simply run `reset_gpu_name_EN.bat` and re-enter the Hardware ID.

### 🎯 Features
- Colorful and intuitive CLI interface that is easy to use.
- The modified name is permanently saved to the system and will not be lost after restarting your computer.
- `gpu_name_EN.bat`: Changes the GPU display name to any name you want.
- `reset_gpu_name_EN.bat`: Removes the spoofed name and restores the original manufacturer GPU name.

> [!IMPORTANT]
> **⚠️WHY DOES THIS TOOL REQUIRE ADMINISTRATOR PRIVILEGES?⚠️** 
>
> Windows manages hardware display information inside a secure partition of the Registry called the system path `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum`. 
> 
> According to Microsoft's security mechanisms, a standard user account (User) has absolutely **no permission to edit** this partition to prevent system disruption. Therefore, the script must be run with the highest **Administrator** privileges to add, modify, or delete the display name (`FriendlyName`) value of the GPU. 

> [!WARNING]  
> If you enter the wrong character but the system still displays "Success", it might be because other drivers have been renamed to that specific name. In this case, simply run the `reset_gpu_name_EN` file and input that name.

<h1 style="text-align: center; width: 100%; display: block;">📊 Before and After Spoofing Comparison</h1>
<table border="0" width="100%">
<tr>

---

<!-- LEFT COLUMN -->
<td width="50%" align="center" valign="top">
<h3>🖥️ Original GPU Name</h3>
<img width="408" height="340" alt="image" src="https://github.com/user-attachments/assets/10da425d-6096-4bdb-8450-e9700e96d93f" width="100%" alt="Original GPU">
<p><i>Windows Default.</i></p>
</td>

<!-- RIGHT COLUMN -->
<td width="50%" align="center" valign="top">
<h3>🔥 Spoofed GPU Name</h3>
<img width="402" height="337" alt="image" src="https://github.com/user-attachments/assets/a04d1c64-1b9a-4121-b51d-6f08e9dfe238" width="100%" alt="Spoofed GPU">
<p><i>After Modification.</i></p>
</td>

</tr>
</table>

> **Note:** This tool only changes the surface display string (`FriendlyName`) within the system. It does not alter actual performance and cannot bypass deep inspection software like GPU-Z.


---

## 🇻🇳 Tiếng Việt

### 📜 Giới Thiệu
Một bộ công cụ nhỏ bằng `Batch Script` nhằm đơn giản hóa quá trình thay đổi tên hiển thị (Friendly Name) của Card đồ họa (GPU) trực tiếp trong hệ thống Windows.
Tool này chỉ sửa đổi tên và mang tính giải trí là chính và không hề gây ảnh hưởng bất kì chức năng hay xung đột với với tất cả app khác.

### 📖 Hướng dẫn sử dụng
1. Tải bộ đôi script `gpu_name_VI.bat` và `reset_gpu_name_VI.bat` trong thư mục `GPU Name Changer` hoặc vô `RELEASES` để lấy file về máy.
```text
📂 fake-gpu-name-tool
├── 📂 GPU Name Changer
│   ├── 📄 gpu_name_EN.bat        # Script chính để thay đổi tên GPU (Tiếng Anh)
│   └── 📄 reset_gpu_name_EN.bat  # Script khôi phục tên mặc định (Tiếng Anh)
│   ├── 📄 gpu_name_VI.bat        # Script chính để thay đổi tên GPU (Tiếng Việt)
│   └── 📄 reset_gpu_name_VI.bat  # Script khôi phục tên mặc định (Tiếng Việt)
├── 📄 LICENSE
└── 📄 README.md 
```
2. Chạy `gpu_name_VI.bat` với quyền Admin.
3. Chọn mục `[1]` để xem hướng dẫn lấy **Hardware ID** của GPU.
4. Chọn mục `[2]`, dán Hardware ID vào và nhập tên GPU mới mà bạn muốn fake.
5. Nếu muốn quay về tên mặc định, chỉ cần chạy `reset_gpu_name_VI.bat` và nhập lại Hardware ID.

### 🎯 Tính năng
- Giao diện CLI có màu sắc trực quan, dễ sử dụng.
- Tên sau khi đổi sẽ được lưu cứng vào hệ thống, không bị mất đi khi bạn khởi động lại máy tính.
- `gpu_name_VI.bat`: Thay đổi tên hiển thị của GPU thành bất kỳ tên nào bạn muốn.
- `reset_gpu_name_VI.bat`: Xóa bỏ tên fake, khôi phục lại tên gốc của GPU từ nhà sản xuất.

> [!IMPORTANT]
> **⚠️TẠI SAO TOOL YÊU CẦU QUYỀN ADMINISTRATOR?⚠️** 
>
> Windows quản lý thông tin phần cứng hiển thị bên trong một phân vùng bảo mật của Registry gọi là đường dẫn hệ thống `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum`. 
> 
> Theo cơ chế bảo mật của Microsoft, một tài khoản người dùng bình thường (User) hoàn toàn **không có quyền chỉnh sửa** phân vùng này để tránh làm xáo trộn hệ thống. Do đó, script bắt buộc phải chạy với quyền **Administrator** cao nhất thì mới có thể thêm/sửa hoặc xóa giá trị tên hiển thị (`FriendlyName`) của GPU. 

> [!WARNING]  
> Nếu bạn nhập sai kí tự mà hệ thống báo "thành công" thì có thể là tên các driver khác đã bị thay đổi thành tên đó. Lúc này bạn chỉ cần chạy file `reset_gpu_name_VI` xong nhập tên đó vô là được.

---

<h1 style="text-align: center; width: 100%; display: block;">📊 So sánh hiển thị Trước và Sau khi fake</h1>
<table border="0" width="100%">
<tr>

<!-- CỘT BÊN TRÁI -->
<td width="50%" align="center" valign="top">
<h3>🖥️ Tên ban đầu của GPU</h3>
<img width="408" height="340" alt="image" src="https://github.com/user-attachments/assets/10da425d-6096-4bdb-8450-e9700e96d93f" width="100%" alt="Fake GPU">
<p><i>TRƯỚC</i></p>
</td>
 
<!-- CỘT BÊN PHẢI -->
<td width="50%" align="center" valign="top">
<h3>🔥 Tên sau khi fake</h3>
<img width="402" height="337" alt="image" src="https://github.com/user-attachments/assets/e6720a8e-c741-435b-95ac-a5c75e6d3f76" width="100%" alt="Reset GPU">
<p><i>SAU</i></p>
</td>

</tr>
</table>

> **Lưu ý:** Công cụ này chỉ thay đổi chuỗi hiển thị bề nổi (`FriendlyName`) trong hệ thống, không làm thay đổi hiệu năng thực tế và không qua mắt được các phần mềm check sâu như GPU-Z.

<div align="center">

![Windows](https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows)
![Language](https://img.shields.io/badge/Language-Batch%20Script-4EAA25?style=for-the-badge&logo=gnubash)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
