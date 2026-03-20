
echo "===== TEMPERATURE ====="
vcgencmd measure_temp

echo -e "\n===== VOLTAGE ====="
vcgencmd measure_volts

echo -e "\n===== CLOCK SPEEDS ====="
vcgencmd measure_clock arm
vcgencmd measure_clock core
vcgencmd measure_clock h264
vcgencmd measure_clock isp
vcgencmd measure_clock v3d

echo -e "\n===== MEMORY SPLIT ====="
vcgencmd get_mem arm
vcgencmd get_mem gpu

echo -e "\n===== THROTTLING STATUS ====="
vcgencmd get_throttled

echo -e "\n===== CPU GOVERNOR ====="
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

echo -e "\n===== CPU MIN/MAX FREQ ====="
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
