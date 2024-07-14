# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone https://github.com/r0ddty/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone -b main https://github.com/r0ddty/kernel_xiaomi_fog kernel/xiaomi/fog

# Clone LOS hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# MIUI Camera
git clone -b main https://github.com/r0ddty/vendor_xiaomi_miuicamera vendor/xiaomi/miuicamera

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..
