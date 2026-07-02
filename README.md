# 🛠️ Fake GPU Name Tool

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
1. Download the script duo `gpu_name.bat` and `reset_gpu_name.bat` from the `GPU Name Changer` folder or navigate to `RELEASES` to get the files.
```text
📂 fake-gpu-name-tool
├── 📂 GPU Name Changer
│   ├── 📄 gpu_name.bat        # Main script to change the GPU name
│   └── 📄 reset_gpu_name.bat  # Script to restore the default name
├── 📄 LICENSE
└── 📄 README.md 
```
2. Run `gpu_name.bat` with Administrator privileges.
3. Select option `[1]` to view instructions on how to get the GPU's **Hardware ID**.
4. Select option `[2]`, paste the Hardware ID, and enter the new spoofed GPU name you desire.
5. If you want to revert to the default name, simply run `reset_gpu_name.bat` and re-enter the Hardware ID.

### 🎯 Features
- Colorful and intuitive CLI interface that is easy to use.
- The modified name is permanently saved to the system and will not be lost after restarting your computer (Reboot).
- `gpu_name.bat`: Changes the GPU display name to any name you want.
- `reset_gpu_name.bat`: Removes the spoofed name and restores the original manufacturer GPU name.

> [!IMPORTANT]
> **⚠️WHY DOES THIS TOOL REQUIRE ADMINISTRATOR PRIVILEGES?⚠️** 
>
> Windows manages hardware display information inside a secure partition of the Registry called the system path `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum`. 
> 
> According to Microsoft's security mechanisms, a standard user account (User) has absolutely **no permission to edit** this partition to prevent system disruption. Therefore, the script must be run with the highest **Administrator** privileges to add, modify, or delete the display name (`FriendlyName`) value of the GPU. 

---

## 🇻🇳 Tiếng Việt

### 📜 Giới Thiệu
Một bộ công cụ nhỏ bằng `Batch Script` nhằm đơn giản hóa quá trình thay đổi tên hiển thị (Friendly Name) của Card đồ họa (GPU) trực tiếp trong hệ thống Windows.
Tool này chỉ sửa đổi tên và mang tính giải trí là chính và không hề gây ảnh hưởng bất kì chức năng hay xung đột với với tất cả app khác.

### 📖 Hướng dẫn sử dụng
1. Tải bộ đôi script `gpu_name.bat` và `reset_gpu_name.bat` trong thư mục `GPU Name Changer` hoặc vô `RELEASES` để lấy file về máy.
```text
📂 fake-gpu-name-tool
├── 📂 GPU Name Changer
│   ├── 📄 gpu_name.bat        # Script chính để thay đổi tên GPU
│   └── 📄 reset_gpu_name.bat  # Script khôi phục tên mặc định
├── 📄 LICENSE
└── 📄 README.md 
```
2. Chạy `gpu_name.bat` với quyền Admin.
3. Chọn mục `[1]` để xem hướng dẫn lấy **Hardware ID** của GPU.
4. Chọn mục `[2]`, dán Hardware ID vào và nhập tên GPU mới mà bạn muốn fake.
5. Nếu muốn quay về tên mặc định, chỉ cần chạy `reset_gpu_name.bat` và nhập lại Hardware ID.

### 🎯 Tính năng
- Giao diện CLI có màu sắc trực quan, dễ sử dụng.
- Tên sau khi đổi sẽ được lưu cứng vào hệ thống, không bị mất đi khi bạn khởi động lại máy tính (Reboot).
- `gpu_name.bat`: Thay đổi tên hiển thị của GPU thành bất kỳ tên nào bạn muốn.
- `reset_gpu_name.bat`: Xóa bỏ tên fake, khôi phục lại tên gốc của GPU từ nhà sản xuất.

> [!IMPORTANT]
> **⚠️TẠI SAO TOOL YÊU CẦU QUYỀN ADMINISTRATOR?⚠️** 
>
> Windows quản lý thông tin phần cứng hiển thị bên trong một phân vùng bảo mật của Registry gọi là đường dẫn hệ thống `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum`. 
> 
> Theo cơ chế bảo mật của Microsoft, một tài khoản người dùng bình thường (User) hoàn toàn **không có quyền chỉnh sửa** phân vùng này để tránh làm xáo trộn hệ thống. Do đó, script bắt buộc phải chạy với quyền **Administrator** cao nhất thì mới có thể thêm/sửa hoặc xóa giá trị tên hiển thị (`FriendlyName`) của GPU. 

---

<div align="center">
<h1 style="text-align: center; width: 100%; display: block;">📊 Before and After Spoofing Comparison</h1>
<table border="0" width="100%">
<tr>

<!-- LEFT COLUMN -->
<td width="50%" align="center" valign="top">
<h3>🖥️ Original GPU Name</h3>
<img src="https://github.com/user-attachments/assets/e5a963dd-6080-41ac-b439-40d333731f14"  width="100%" alt="Original GPU">
<p><i>Windows Default.</i></p>
</td>

<!-- RIGHT COLUMN -->
<td width="50%" align="center" valign="top">
<h3>🔥 Spoofed GPU Name</h3>
<img width="742" height="669" alt="image" src="https://github.com/user-attachments/assets/12d98f0c-8d58-4fd9-ad95-9b039dc619e3" alt="Spoofed GPU">
<p><i>After Modification.</i></p>
</td>

</tr>
</table>

> **Note:** This tool only changes the surface display string (`FriendlyName`) within the system. It does not alter actual performance and cannot bypass deep inspection software like GPU-Z.

![Windows](https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows)
![Language](https://img.shields.io/badge/Language-Batch%20Script-4EAA25?style=for-the-badge&logo=gnubash)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
