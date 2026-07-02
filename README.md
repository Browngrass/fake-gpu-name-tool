## Giới Thiệu
Một bộ công cụ nhỏ bằng ``Batch Script`` nhằm đơn giản hóa quá trình thay đổi tên hiển thị (Friendly Name) của Card đồ họa (GPU) trực tiếp trong hệ thống Windows.
Tool này chỉ sửa đổi tên và mang tính giải trí là chính và không hề gây ảnh hưởng bất kì chức năng hay xung đột với với tất cả app khác.

## 📖 Hướng dẫn sử dụng

<details>
<summary>📂 <b>Bấm vào đây để xem các file trong thư mục "GPU Name Changer"</b></summary>
<br>

* 📄 `gpu_name.bat` - File chạy đổi tên.
* 📄 `reset_gpu_name.bat` - File khôi phục.
* 📝 `note.txt` - File ghi chú cấu hình.

</details>


```text
📂 fake-gpu-name-tool
├── 📂 GPU Name Changer
│   ├── 📄 gpu_name.bat        # Script chính để thay đổi tên GPU
│   └── 📄 reset_gpu_name.bat  # Script khôi phục tên mặc định
├── 📄 LICENSE                 # Bản quyền mã nguồn (MIT)
└── 📄 README.md               # Hướng dẫn sử dụng dự án
```

1. Tải bộ đôi script về máy.
2. Chạy `gpu_name.bat` với quyền Admin.
3. Chọn mục `[1]` để xem hướng dẫn lấy **Hardware ID** của GPU.
4. Chọn mục `[2]`, dán Hardware ID vào và nhập tên GPU mới mà bạn muốn fake.
5. Nếu muốn quay về tên mặc định, chỉ cần chạy `reset_gpu_name.bat` và nhập lại Hardware ID.

## 🚀 Tính năng
- Giao diện CLI có màu sắc trực quan, dễ sử dụng.
- Tên sau khi đổi sẽ được lưu cứng vào hệ thống, không bị mất đi khi bạn khởi động lại máy tính (Reboot).
- `gpu_name.bat`: Thay đổi tên hiển thị của GPU thành bất kỳ tên nào bạn muốn.
- `reset_gpu_name.bat`: Xóa bỏ tên fake, khôi phục lại tên gốc của GPU từ nhà sản xuất.

> [!IMPORTANT]
>  **⚠️TẠI SAO TOOL YÊU CẦU QUYỀN ADMINISTRATOR?⚠️** 
>
> Windows quản lý thông tin phần cứng hiển thị bên trong một phân vùng bảo mật của Registry gọi là đường dẫn hệ thống `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum`. 
> 
> Theo cơ chế bảo mật của Microsoft, một tài khoản người dùng bình thường (User) hoàn toàn **không có quyền chỉnh sửa** phân vùng này để tránh làm xáo trộn hệ thống. Do đó, script bắt buộc phải chạy với quyền **Administrator** cao nhất thì mới có thể thêm/sửa hoặc xóa giá trị tên hiển thị (`FriendlyName`) của GPU. 


<div align="center">
<h1 style="text-align: center; width: 100%; display: block;">📊 So sánh hiển thị Trước và Sau khi Fake</h1>
<table border="0" width="100%">
<tr>

<!-- CỘT BÊN TRÁI -->
<td width="50%" align="center" valign="top">
<h3>🖥️ Tên ban đầu của GPU</h3>
<img src="https://github.com/user-attachments/assets/e5a963dd-6080-41ac-b439-40d333731f14" width="100%" alt="Fake GPU">
<p><i>Mặc định của Windows</i></p>
</td>

<!-- CỘT BÊN PHẢI -->
<td width="50%" align="center" valign="top">
<h3>🔥 Tên sau khi fake</h3>
<img width="742" height="669" alt="image" src="https://github.com/user-attachments/assets/12d98f0c-8d58-4fd9-ad95-9b039dc619e3" width="100%" alt="Reset GPU">
<p><i> Đã fake thành NVIDIA GeForce RTX 6090.</i></p>
</td>

</tr>
</table>

> [!NOTE]
> **Lưu ý:** Công cụ này chỉ thay đổi chuỗi hiển thị bề nổi (`FriendlyName`) trong hệ thống, không làm thay đổi hiệu năng thực tế và không qua mắt được các phần mềm check sâu như GPU-Z.

![Windows](https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows)
![Language](https://img.shields.io/badge/Language-Batch%20Script**-4EAA25?style=for-the-badge&logo=gnubash)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
