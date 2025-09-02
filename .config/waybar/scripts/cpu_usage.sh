#!/bin/bash
# Получаем загрузку CPU в процентах
read cpu user nice system idle iowait irq softirq steal guest guest_nice < /proc/stat
prev_idle=$idle
prev_total=$((user + nice + system + idle + iowait + irq + softirq + steal))

sleep 0.5

read cpu user nice system idle iowait irq softirq steal guest guest_nice < /proc/stat
idle=$idle
total=$((user + nice + system + idle + iowait + irq + softirq + steal))

diff_idle=$((idle - prev_idle))
diff_total=$((total - prev_total))
diff_usage=$(( (1000 * (diff_total - diff_idle) / diff_total + 5) / 10 ))

echo "{\"text\": \"󰡚 CPU: $diff_usage%\"}"

