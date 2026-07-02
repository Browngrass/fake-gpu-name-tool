Một bộ công cụ nhỏ bằng Batch Script giúp thay đổi tên hiển thị (Friendly Name) của GPU trong Windows (Device Manager, Task Manager) và khôi phục lại mặc định một cách nhanh chóng.

## 🚀 Tính năng
- **gpu_name.bat**: Thay đổi tên hiển thị của GPU thành bất kỳ tên nào bạn muốn.
- **reset_gpu_name.bat**: Xóa bỏ tên fake, khôi phục lại tên gốc của GPU từ nhà sản xuất.
- Tự động yêu cầu quyền Administrator (UAC).
- Giao diện CLI có màu sắc trực quan, dễ sử dụng.

## 📖 Hướng dẫn sử dụng
1. Tải bộ đôi script về máy.
2. Chạy `gpu.bat` với quyền Admin.
3. Chọn mục `[1]` để xem hướng dẫn lấy **Hardware ID** của GPU.
4. Chọn mục `[2]`, dán Hardware ID vào và nhập tên GPU mới mà bạn muốn fake.
5. Nếu muốn quay về tên cũ, chỉ cần chạy `reset_gpu.bat` và nhập lại Hardware ID.

> **Lưu ý:** Công cụ này chỉ thay đổi chuỗi hiển thị bề nổi (`FriendlyName`) trong hệ thống, không làm thay đổi hiệu năng thực tế và không qua mắt được các phần mềm check sâu như GPU-Z. Có thể bị reset nếu update Windows.

![Windows](https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows)
![Language](https://img.shields.io/badge/Language-Batch%20Script**-4EAA25?style=for-the-badge&logo=gnubash)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
