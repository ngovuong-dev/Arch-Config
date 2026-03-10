#!/bin/bash

# Màu sắc cho trực quan
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

clear
echo -e "${BLUE}==================================================${NC}"
echo -e "${YELLOW}   DASHBOARD KIỂM TRA HỆ THỐNG - ACER NITRO 5    ${NC}"
echo -e "${BLUE}==================================================${NC}"

# 1. Kiểm tra PIN
echo -e "\n${GREEN}[1. SỨC KHỎE PIN]${NC}"
BAT_PATH=$(upower -e | grep battery)
if [ -n "$BAT_PATH" ]; then
    ENERGY_FULL=$(upower -i $BAT_PATH | grep "energy-full:" | awk '{print $2}')
    ENERGY_DESIGN=$(upower -i $BAT_PATH | grep "energy-full-design:" | awk '{print $2}')
    CAPACITY=$(echo "scale=2; ($ENERGY_FULL/$ENERGY_DESIGN)*100" | bc)
    STATE=$(upower -i $BAT_PATH | grep "state" | awk '{print $2}')
    echo -e "Trạng thái: $STATE"
    echo -e "Độ chai pin: ${YELLOW}$((100 - ${CAPACITY%.*}))%${NC} (Sức khỏe còn: ${GREEN}${CAPACITY}%${NC})"
else
    echo -e "Không tìm thấy pin."
fi

# 2. Kiểm tra NHIỆT ĐỘ
echo -e "\n${GREEN}[2. NHIỆT ĐỘ & XUNG NHỊP]${NC}"
CPU_TEMP=$(sensors | grep "Package id 0" | awk '{print $4}')
GPU_TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits 2>/dev/null || echo "N/A")
echo -e "CPU Temperature: ${RED}${CPU_TEMP}${NC}"
echo -e "GPU Temperature: ${RED}${GPU_TEMP}°C${NC} (GTX 1650)"

# 3. Kiểm tra RAM
echo -e "\n${GREEN}[3. TÌNH TRẠNG RAM]${NC}"
free -h | awk 'NR==1{print "          Total        Used        Free"} NR==2{print "RAM:    " $2 "      " $3 "      " $4}'

# 4. Kiểm tra Ổ CỨNG (SSD NVMe)
echo -e "\n${GREEN}[4. TUỔI THỌ Ổ CỨNG]${NC}"
SSD_HEALTH=$(sudo smartctl -A /dev/nvme0n1 | grep "Percentage Used" | awk '{print $3}')
DATA_READ=$(sudo smartctl -A /dev/nvme0n1 | grep "Data Units Read" | awk '{print $4,$5}')
if [ -n "$SSD_HEALTH" ]; then
    echo -e "Đã sử dụng: ${RED}${SSD_HEALTH}${NC} (Càng thấp càng tốt)"
    echo -e "Tổng dữ liệu đã đọc: $DATA_READ"
else
    echo -e "Không quét được ổ NVMe, hãy kiểm tra lại tên ổ bằng lsblk."
fi

echo -e "\n${BLUE}==================================================${NC}"
