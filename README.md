# 🏔️ Arch-Config: The Ultimate Hyprland Experience
> Một bộ Dotfiles tinh tế, tối ưu và hiện đại dành cho người dùng Arch Linux.

[![OS](https://img.shields.io/badge/OS-Arch_Linux-blue?logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![WM](https://img.shields.io/badge/WM-Hyprland-33ccff?logo=hyprland&logoColor=white)](https://hyprland.org/)
[![Shell](https://img.shields.io/badge/Shell-Zsh-orange?logo=zsh&logoColor=white)](https://www.zsh.org/)
[![Status](https://img.shields.io/badge/Status-Active-green)](#)

---

## 📸 Tổng quan giao diện (Screenshots)
*(Chèn ảnh màn hình của bạn vào đây để repo trông bắt mắt hơn)*
![Desktop Preview](https://via.placeholder.com/800x450?text=preview/preview_01.png)

---

## 🛠️ Thành phần hệ thống (Tech Stack)
Cấu hình này được tối ưu hóa cho sự kết hợp giữa **GNOME Services** và **Hyprland WM**:

- **Window Manager:** [Hyprland](https://hyprland.org/) (Wayland)
- **Status Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Terminal:** [Kitty](https://sw.kovidgoyal.net/kitty/)
- **Application Launcher:** [Rofi-Wayland](https://github.com/lbonn/rofi-wayland)
- **Notification:** [SwayNC](https://github.com/ErikReider/SwayNotificationCenter)
- **Authentication:** `polkit-gnome` (Tận dụng từ GNOME sẵn có)

---

## 🚀 Script cài đặt nhanh (`install/`)

Hệ thống được chia nhỏ thành các Module để bạn dễ dàng quản lý:

| Script | Mô tả nhiệm vụ |
| :--- | :--- |
| `install_packages.sh` | Cài đặt các Dependencies và gói hệ thống cốt lõi. |
| `install_yay.sh` | Thiết lập `yay` để truy cập kho ứng dụng AUR. |
| `install_hyprland.sh` | Copy cấu hình và thiết lập môi trường Wayland. |
| `install_zsh.sh` | Cài đặt Zsh, Oh-My-Zsh và các plugin (syntax highlighting, autosuggestions). |
| `install_bamboo.sh` | Cấu hình bộ gõ Tiếng Việt (Fcitx5-Bamboo). |
| `install_zram.sh` | Tối ưu nén RAM, cực tốt cho máy laptop gaming. |

---

## 💻 Hướng dẫn cài đặt

### 1. Chuẩn bị
Mở terminal tại thư mục gốc của repository:
```bash
chmod +x install/*.sh

# Bước 1: Cài gói hệ thống và Yay
./install/install_packages.sh
./install/install_yay.sh

# Bước 2: Cài đặt cấu hình môi trường
./install/install_hyprland.sh
./install/install_zsh.sh
```

