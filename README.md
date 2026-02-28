# Arch-Config — Cấu hình cá nhân và script cài đặt

Repository này chứa các cấu hình (dotfiles) và script hỗ trợ cài đặt nhanh cho môi trường Arch Linux / Hyprland.

Nội dung chính:
- `config/`: cấu hình cho Hyprland, Waybar, Kitty, Rofi, Neovim, v.v.
- `fonts/`: font và giấy phép liên quan.
- `install/`: các script cài đặt tự động (liệt kê bên dưới).

Script cài đặt có sẵn (thư mục `install/`):
- `install_bamboo.sh` — cài đặt cấu hình Bamboo (nếu có liên quan)
- `install_hyprland.sh` — cài đặt cấu hình Hyprland
- `install_kde_lite.sh` — cài đặt cấu hình KDE lite
- `install_packages.sh` — cài đặt gói hệ thống chung
- `install_yay.sh` — cài đặt `yay` (AUR helper)
- `install_zram.sh` — cấu hình zram
- `install_zsh.sh` — cài đặt và cấu hình `zsh`

Lưu ý trước khi chạy
- Các script trong `install/` có thể thay đổi hệ thống (cài gói, thay đổi cấu hình). Hãy đọc nội dung từng script trước khi chạy.
- Chạy script với quyền phù hợp (một số script có thể yêu cầu `sudo`).

Ví dụ — chạy một script cài đặt
Mở terminal ở thư mục gốc của repository rồi chạy:

```bash
chmod +x install/*.sh
./install/install_packages.sh
```

Hoặc để cài Hyprland và các gói liên quan:

```bash
./install/install_hyprland.sh
```

Tùy biến
- Bạn có thể chỉnh sửa các file cấu hình trong `config/` trước khi copy chúng vào `~/.config`.
- Không copy nguyên xi nếu bạn muốn giữ cấu hình hiện có — hãy sao lưu trước.

An toàn & sao lưu
- Luôn sao lưu các file cấu hình hiện có trước khi ghi đè. Ví dụ:

```bash
mkdir -p ~/dotfiles-backup
cp -r ~/.config/hypr ~/dotfiles-backup/ || true
```

Muốn tôi làm gì tiếp theo?
- Chạy một trong các script cài đặt (tôi sẽ chạy sau khi bạn xác nhận và cho biết script nào).
- Hoặc tự động cài toàn bộ theo thứ tự (tôi sẽ hiển thị danh sách hành động và yêu cầu xác nhận trước khi thực thi).

---
Created on 2026-02-28
