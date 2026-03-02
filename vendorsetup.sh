# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

git clone -b awewa https://github.com/r0ddty/vendor_xiaomi_fog vendor/xiaomi/fog --depth 1

git clone -b andromeda https://github.com/r0ddty/device_xiaomi_fog-kernel device/xiaomi/fog-kernel --depth 1

git clone -b thenewest https://github.com/r0ddty/kernel_xiaomi_sm6225 kernel/xiaomi/fog --depth 1

git clone -b sixteen https://github.com/PixelOS-AOSP/hardware_xiaomi hardware/xiaomi --depth 1

git clone -b lineage-23.2 https://github.com/LineageOS/android_device_lineage_sepolicy device/lineage/sepolicy --depth 1

git clone -b main https://github.com/r0ddty/vendor_xiaomi_miuicamera vendor/xiaomi/miuicamera --depth 1

source ../rbe_d/setup.sh
