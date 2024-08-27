# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone https://github.com/r0ddty/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone -b another-main https://github.com/r0ddty/kernel_xiaomi_fog kernel/xiaomi/fog

# Clone LOS hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# MIUI Camera
git clone -b leica-5.0 https://gitlab.com/r0ddty/vendor_xiaomi_miuicamera_fog vendor/xiaomi/miuicamera

# OTA
rm -rf packages/apps/Updater
git clone https://github.com/r0ddty/android_packages_apps_Updater_fog_unoff packages/apps/updater

rm -rf vendor/RisingOTA
git clone https://github.com/r0ddty/android_vendor_RisingOTA_fog_unoff vendor/RisingOTA

# Kernel fixups
rm kernel/xiaomi/fog/Android.bp
rm kernel/xiaomi/fog/techpack/audio/Android.bp
