# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone https://github.com/r0ddty/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone -b lindroid https://github.com/r0ddty/kernel_xiaomi_fog kernel/xiaomi/fog

# Clone LOS hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# MIUI Camera
git clone -b leica-5.0 https://gitlab.com/r0ddty/vendor_xiaomi_miuicamera_fog vendor/xiaomi/miuicamera

# OTA
rm -rf packages/apps/Updater
git clone https://github.com/r0ddty/android_packages_apps_Updater_fog_unoff packages/apps/Updater -b fourteen-l

rm -rf vendor/risingOTA
git clone https://github.com/r0ddty/android_vendor_RisingOTA_fog_unoff vendor/risingOTA

# Lindroid
git clone https://github.com/Linux-on-droid/vendor_lindroid vendor/lindroid
git clone https://github.com/Linux-on-droid/libhybris external/libhybris
git clone https://github.com/Linux-on-droid/external_lxc external/lxc

# Lindroid patch
cd frameworks/native
git fetch https://gerrit.libremobileos.com/LMODroid/platform_frameworks_native refs/changes/36/12936/1 && git cherry-pick FETCH_HEAD
cd ../..

# Kernel fixups
rm kernel/xiaomi/fog/Android.bp
rm kernel/xiaomi/fog/techpack/audio/Android.bp
