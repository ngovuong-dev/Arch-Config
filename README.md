# <p align="center">🏔️ Arch-Config: The Ultimate Hyprland Experience</p>

<p align="center">
  <i align="center">Một bộ Dotfiles tinh tế, hiệu năng cao và hiện đại dành cho hệ sinh thái Arch Linux.</i>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/OS-Arch_Linux-blue?style=for-the-badge&logo=arch-linux&logoColor=white" />
  <img src="https://img.shields.io/badge/WM-Hyprland-33ccff?style=for-the-badge&logo=hyprland&logoColor=white" />
  <img src="https://img.shields.io/badge/Shell-Zsh-orange?style=for-the-badge&logo=zsh&logoColor=white" />
</p>

---

## 📸 Giao diện người dùng (Gallery)
<p align="center">
  <img src="preview/preview_01.png" alt="Desktop Preview" width="90%" style="border-radius: 10px; border: 1px solid #33ccff;">
</p>

---

## 🏗️ Kiến trúc hệ thống (Core Stack)
Sự kết hợp hoàn hảo giữa tính ổn định của **GNOME Services** và sự mượt mà của **Wayland Compositor**.

* **Compositor:** `Hyprland` (Dynamic Tiling WM với hiệu ứng mượt mà)
* **Status Bar:** `Waybar` (Cấu hình tối giản, trực quan)
* **Shell:** `Zsh` + `Oh-My-Zsh` + `Powerlevel10k`
* **Terminal:** `Kitty` (Tăng tốc xử lý bằng GPU)
* **App Launcher:** `Rofi-Wayland`
* **Notification:** `SwayNC` (Trung tâm thông báo hiện đại)
* **Security:** `Polkit-GNOME` (Trình xác thực quyền root)
* **Input:** `Fcitx5-Bamboo` (Bộ gõ Tiếng Việt tiêu chuẩn)

---

## 📂 Cấu trúc Repository
```text
.
├── config/              # Các file cấu hình ứng dụng (.config)
│   ├── hypr/            # Hyprland rules, binds & monitors
│   ├── waybar/          # Giao diện thanh trạng thái
│   ├── kitty/           # Cấu hình Terminal
│   └── rofi/            # Giao diện menu ứng dụng
├── install/             # Các scripts cài đặt tự động theo module
├── fonts/               # Phông chữ hệ thống & Icon fonts
└── README.md            # Tài liệu hướng dẫn này
```
## 🚀 Quy trình cài đặt (Installation)
``` bash
git clone https://github.com/ngovuong-dev/Arch-Config.git
cd Arch-Config
chmod +x install/*.sh
```

## ⌨️ Phím tắt mặc định (Keybindings)

Hệ thống phím tắt được thiết kế tối ưu cho workflow năng suất cao.

### 🚀 Thao tác ứng dụng & Hệ thống
| Phím tắt | Hành động |
| :--- | :--- |
| <kbd>󰞷 SUPER</kbd> + <kbd>Return</kbd> | Mở Terminal (**Kitty**) |
| <kbd>󰉋 SUPER</kbd> + <kbd>E</kbd> | Quản lý file (**Nautilus**) |
| <kbd>󰍉 SUPER</kbd> + <kbd>A</kbd> | Menu ứng dụng (**Rofi**) |
| <kbd>󰓇 SUPER</kbd> + <kbd>F</kbd> | Chạy app bằng card **NVIDIA** (Prime) |
| <kbd>󰈹 ALT</kbd> + <kbd>Tab</kbd> | Chuyển đổi cửa sổ (**Rofi Window**) |
| <kbd>󰅖 SUPER</kbd> + <kbd>Q</kbd> / <kbd>F4</kbd> | Đóng cửa sổ đang chọn |
| <kbd>󰊓 F11</kbd> | Toàn màn hình (**Fullscreen**) |
| <kbd>󰅏 SUPER</kbd> + <kbd>V</kbd> | Quản lý Clipboard (Lịch sử copy) |
| <kbd>󰂚 SUPER</kbd> + <kbd>N</kbd> | Trung tâm thông báo (**SwayNC**) |

### 🖼️ Quản lý cửa sổ & Workspace
| Phím tắt | Hành động |
| :--- | :--- |
| <kbd>󰏫 SUPER</kbd> + <kbd>W</kbd> | Bật/Tắt cửa sổ nổi (**Floating**) |
| <kbd>󰒲 SUPER</kbd> + <kbd>S</kbd> | Ẩn nhanh vào ngăn kéo (**Minimize**) |
| <kbd>󰇄 SUPER</kbd> + <kbd>`</kbd> | Mở ngăn kéo bí mật (**Special Workspace**) |
| <kbd>󰂫 SUPER</kbd> + <kbd>O</kbd> | Đổi hướng chia cửa sổ (**Togglesplit**) |
| <kbd>󰡨 SUPER</kbd> + <kbd>Tab</kbd> | Quay lại Workspace vừa dùng |
| <kbd>󰎧 SUPER</kbd> + <kbd>1-0</kbd> | Chuyển nhanh giữa các Workspace |
| <kbd>󰚀 SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>1-0</kbd> | Di chuyển cửa sổ tới Workspace chỉ định |
| <kbd>󰚀 SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>↓</kbd> | Tìm Workspace trống đầu tiên |

### 📸 Chụp màn hình & Media
| Phím tắt | Hành động |
| :--- | :--- |
| <kbd>󰄀 SHIFT</kbd> + <kbd>ALT</kbd> + <kbd>S</kbd> | Chụp ảnh vùng màn hình |
| <kbd>󰄀 SHIFT</kbd> + <kbd>Print</kbd> | Chụp ảnh cửa sổ |
| <kbd>󰄀 SUPER</kbd> + <kbd>Print</kbd> | Chụp toàn bộ màn hình |
| <kbd>󰃠 SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> | Cấu hình màn hình (Display Settings) |

### 🔒 Bảo mật & Nguồn
| Phím tắt | Hành động |
| :--- | :--- |
| <kbd>󰸉 S+C+A</kbd> + <kbd>Ins</kbd> | Chọn hình nền ngẫu nhiên |
| <kbd>󰌾 S+C+A</kbd> + <kbd>L</kbd> | Khóa màn hình (**Hyprlock**) |
| <kbd>󰐥 S+C+A</kbd> + <kbd>Del</kbd> | Thoát Hyprland (Logout) |
| <kbd>󰐥 S+C+A</kbd> + <kbd>Pause</kbd> | Menu Nguồn (**Power Menu**) |

> **Ghi chú:** `S+C+A` là tổ hợp <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>ALT</kbd>.
---

## 🌡️ Lưu ý cho Laptop (Performance & Thermal)
```bash
# Để tối ưu nhiệt độ và pin
powerprofilesctl set power-saver

# Để đạt hiệu năng tối đa
powerprofilesctl set performance
```

Ngày cập nhật: 09/03/2026

================================================
  _   ____  ______  _  _______  _  ___________ 
 | | / / / / / __ \/ |/ / ___/ / |/ / ___/ __ \
 | |/ / /_/ / /_/ /    / (_ / /    / (_ / /_/ /
 |___/\____/\____/_/|_/\___/ /_/|_/\___/\____/ 
================================================
